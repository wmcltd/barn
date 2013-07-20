<?php


class showtime_utils{
  protected function __construct() {} 

    public static function ClearPath($path){
        $patharray = explode('/', $path);
        $newpatharray = array();
        foreach ($patharray as $dir){
                switch ($dir){
                        case '' : break;
                        case '..':
                                array_pop($newpatharray);
                                break;
                        default :
                                $newpatharray[] = $dir;
                }
        }
        return (substr($path,0,1)=='/' ? '/' : '').implode('/', $newpatharray);
    }

    public static function CreatePictureLink($picture_url){
        $gCms = cmsms();
        $config = $gCms->GetConfig();
        $rooturl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']=='on')?$config['ssl_url']:$config['root_url'];

        //link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
        if (FALSE == empty($picture_url)){
                $manager =& $gCms->GetHierarchyManager();
                $node    = $manager->sureGetNodeById($picture_url);
                if(isset($node) && is_object($node)){
                        $content =& $node->GetContent();
                        if(isset($content) && is_object($content) && $content->Type() != 'content2'){
                            $hierarchypath = $content->HierarchyPath();
                            $alias = $content->Alias();
                            if ($config["url_rewriting"] == 'mod_rewrite'){
                                    $link = $rooturl. '/' . $hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
                            }else{
                                    if (isset($_SERVER['PHP_SELF']) && $config['url_rewriting'] == 'internal'){
                                                    $link = $rooturl. '/index.php/' .$hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
                                    }else{
                                            $link = $rooturl. '/index.php?' . $config['query_var'] . '=' . $alias;
                                    }
                            }
                        }else{
                            return '';
                        }
                }else{
                        return '';
                }
        }else{
                return '';
        }					
        return $link;
    }



    public static function format_bytes($size) {
        $units = array(' B', ' KB', ' MB', ' GB', ' TB');
        for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
        return round($size, 2).$units[$i];
    }  
    
  public static function is_valid_filename($name) {
    if( $name == '' ) return FALSE;
    if( strpos($name,'/') !== false ) return FALSE;
    if( strpos($name,'\\') !== false ) return FALSE;
    if( strpos($name,'..') !== false ) return FALSE;
    if( $name[0] == '.' || $name[0] == ' ' ) return FALSE;
    if( preg_match('/[\n\r\t\[\]\&\?\<\>\!\@\#\$\%\*\(\)\{\}\|\"\'\:\;\+]/',$name) ){
	return FALSE;
      }
    return TRUE;
  }

    public static function Slash($str,$str2="",$str3="") {
        if ($str=="") return $str2;
        if ($str2=="") return $str;
        if ($str[strlen($str)-1]!="/") {
                if ($str2[0]!="/") {
            return $str."/".$str2;
                } else { 
                    return $str.$str2;
                }
        } else {
            if ($str2[0]!="/") {
            return $str.$str2;
                } else { 
                    return $str.substr($str2,1); //trim away one of the slashes
                }
        }
        //Three strings not supported yet...
        return "Error in Slash-function. Please report";
    }   

}

?>
