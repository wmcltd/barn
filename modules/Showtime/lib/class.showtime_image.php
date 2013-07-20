<?php

class showtime_image{
  protected function __construct() {} 

  public static function watermark_image($source_image, $dest_image){
        $gCms = cmsms();
        $config = $gCms->GetConfig();
        $mod = cms_utils::get_module('Showtime');
        $watermark_file = $mod->GetPreference('watermark_file');
        if ($watermark_file=='watermark.png'){
                $watermark_file = $config['root_path'].'/modules/Showtime/images/watermark.png';
        }else{
                $watermark_file = $config['image_uploads_path'].'/'.$watermark_file;
        }
        if (!file_exists($watermark_file)) return false;


        $watermark_pos = $mod->GetPreference('watermark_pos');
        $watermark_transparant = $mod->GetPreference('watermark_transparant');
        $watermark_padding_x = $mod->GetPreference('watermark_padding_x');
        $watermark_padding_y = $mod ->GetPreference('watermark_padding_y');

        $watermark = showtime_image::imagecreatefromfile($watermark_file);
        $watermark_width = imagesx($watermark);
        $watermark_height = imagesy($watermark);
        imagecreatetruecolor($watermark_width, $watermark_height);

        //--- orriginele image
        $image = showtime_image::imagecreatefromfile($source_image);
        $size = getimagesize($source_image);

        //--- Calculate position
        $padding_x = $watermark_padding_x;
        $padding_y = $watermark_padding_y;
        switch ($watermark_pos){
                        //bottom_right bottom_left top_right top_left 
                case "bottom_right":
                        $xas = $size[0] - $watermark_width - $padding_x;
                        $yas = $size[1] - $watermark_height - $padding_y;
                        break;
                case "bottom_left":
                        $xas = $padding_x;
                        $yas = $size[1] - $watermark_height - $padding_y;
                        break;
                case "top_right":
                        $xas = $size[0] - $watermark_width - $padding_x;
                        $yas = $padding_y;
                        break;
                case "top_left":
                        $xas = $padding_x;
                        $yas = $padding_y;
                        break;
        }

        //--- depending on image sourse... set transparent option
        //--- then overwrite the uploaded file
        list($width, $height, $image_type) = getimagesize($watermark_file);
        switch ($image_type){
                case IMAGETYPE_GIF:
                        imagecopymerge($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height,$watermark_transparant);
                        break;
                case IMAGETYPE_JPEG:
                        imagecopymerge($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height,$watermark_transparant);
                        break;
                case IMAGETYPE_PNG:
                        imagecopy($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height);
                        break;
                default: return ''; break;
        }

        $return = showtime_image::saveImage($image, $dest_image);

        imagedestroy($image);
        imagedestroy($watermark);

        return $return;
    }


    public static function html2rgb($color){
        if ($color[0] == '#')
                $color = substr($color, 1);

        if (strlen($color) == 6)
                list($r, $g, $b) = array($color[0].$color[1],
                                                                    $color[2].$color[3],
                                                                    $color[4].$color[5]);
        elseif (strlen($color) == 3)
                list($r, $g, $b) = array($color[0].$color[0], $color[1].$color[1], $color[2].$color[2]);
        else
                return false;

        $r = hexdec($r); $g = hexdec($g); $b = hexdec($b);

        return array($r, $g, $b);
    }

    /**
    *  loads a png, jpeg or gif image from the given file name for Watermark
    */
    public static function imagecreatefromfile($image_path) {
        list($width, $height, $image_type) = getimagesize($image_path);
        switch ($image_type){
                case IMAGETYPE_GIF: return imagecreatefromgif($image_path); break;
                case IMAGETYPE_JPEG: return imagecreatefromjpeg($image_path); break;
                case IMAGETYPE_PNG: return imagecreatefrompng($image_path); break;
                default: return ''; break;
        }
    }



    public static function _createnewimage($destination='' , $img, $new_x=0, $new_y=0, $src_x = 0, $src_y = 0, $new_w, $new_h,  $src_w,  $src_h){

        $imgdata = @getimagesize($img);
        $jpeg_quality = 90;
        $destination = ($destination == '')? $img : $destination; 
        $newimage = imagecreatetruecolor($new_w, $new_h );
        switch($imgdata[2]) {
                case IMAGETYPE_GIF:
                        $source = imagecreatefromgif($img);
                        $trnprt_indx = imagecolortransparent($source);
                        if ($trnprt_indx >= 0)
                        {
                        @$trnprt_color = imagecolorsforindex($source, $trnprt_indx);
                        $trnprt_indx = imagecolorallocate($newimage, $trnprt_color['red'], $trnprt_color['green'], $trnprt_color['blue']);
                        imagefill($newimage, 0, 0, $trnprt_indx);
                        imagecolortransparent($newimage, $trnprt_indx);
                        @imagetruecolortopalette($newimage, true, imagecolorstotal($img));
                        }
                        break;
                case IMAGETYPE_JPEG:
                        $source = imagecreatefromjpeg($img);
                        break;
                case IMAGETYPE_PNG:
                        $source = imagecreatefrompng($img);
                        imagealphablending($newimage, false);
                        $trnprt_color = imagecolorallocatealpha($newimage, 0, 0, 0, 127);
                        imagefill($newimage, 0, 0, $trnprt_color);
                        imagesavealpha($newimage, true);
                        break;
                default:
                        return FALSE;
        }
        imagecopyresampled($newimage,$source,0,0,$src_x,$src_y, $new_w,$new_h,$src_w,$src_h);
        $return = showtime_image::saveImage($newimage, $destination);
        imagedestroy($newimage);
        return $return;
    }


    public static function _rotateimage($img, $degreeOfRotation){

        $jpeg_quality = 90;

        $imgdata = @getimagesize($img);
        switch($imgdata[2]) {
                case IMAGETYPE_GIF:
                        $source = imagecreatefromgif($img);
                        break;
                case IMAGETYPE_JPEG:
                        $source = imagecreatefromjpeg($img);
                        break;
                case IMAGETYPE_PNG:
                        $source = imagecreatefrompng($img);
                        break;
                default:
                        return FALSE;
        }

        $source = imagerotate($source, $degreeOfRotation, 0);
        $return = showtime_image::saveImage($source, $img);
        return $return;

    }

    public static function saveImage($imgobj, $path, $jpegcomp=80){
        // saves image object to $path
        $ext = strtolower(substr(strrchr($path, "."), 1));
        if($ext=="jpeg" || $ext=="jpg"){
                $jpegcomp = (int) $jpegcomp;
                if(!imagejpeg($imgobj, $path, $jpegcomp))	return false;
        }elseif($ext=="png"){
                if(!imagepng($imgobj, $path))	return false;
        }elseif($ext=="gif"){
                if(!imagegif($imgobj, $path))	return false;
        }else{
                return false;
        }
        chmod($path, 0777);
        return $path;
    }

}   
?>
