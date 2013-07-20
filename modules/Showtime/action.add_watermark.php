<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();

if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}


$showid = (isset($params['showid']) ? $params['showid'] : '');
if ($showid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);


//read values from picture_id;
//active,show_id,picture_name,picture_number,picture_url, thumbnail_path,picture_path,comment
$pictureinfo = showtime_data::_Getpictureinfo($params['pictureid']);

$img= $config['image_uploads_path'] . $pictureinfo['picture_path'];
$thumb = $config['image_uploads_path'] . $pictureinfo['thumbnail_path'];
//=============================================

// lets add watermark

showtime_image::watermark_image($img, $img);

//lets make thumbnail
$imgdata = @getimagesize($img);
$width = $imgdata[0];
$height = $imgdata[1];
$imgratio =  $width / $height;  // width/height
$thumbwidth = get_site_preference('thumbnail_width');
$thumbheight = get_site_preference('thumbnail_height');
$thumbratio = $thumbwidth / $thumbheight;
if( $imgratio > $thumbratio ){
	$newwidth = $thumbwidth;
	$newheight = ceil($thumbwidth / $imgratio);
}else{
	$newheight = $thumbheight;
	$newwidth = ceil($thumbheight * $imgratio);
}
showtime_image::_createnewimage($thumb, $img, 0, 0, 0, 0 , $newwidth , $newheight , $width, $height );


$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

?>