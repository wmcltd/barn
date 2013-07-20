<?php

class showtime_data{
  protected function __construct() {} 

  public static function _updateshow($properties, $show_id){
        $db = cmsms()->GetDb();
        $query = 'UPDATE '.cms_db_prefix().'module_showtime_name SET ';
        foreach ($properties as $key => $value){
                        $query .= $key."=?, ";
        }
        $query= trim($query, ', ');
        $query .= ' WHERE show_id = '.$show_id;

        $result =$db->Execute($query, $properties);
        if ( !$result )	{
                echo 'Error _updateshow: ' . mysql_error();
                exit();
        }	
        return TRUE;	
    }

	
    public static function _inputshow($properties, $show_id){
        $db = cmsms()->GetDb();
        $query = "INSERT INTO " . cms_db_prefix() . "module_showtime_name (show_id) VALUES (".$show_id.")";
        $result = $db->Execute($query);
        if ( !$result ){
                echo 'ERROR _inputshow: ' . mysql_error();
                exit();
        }
        showtime_data::_updateshow($properties,$show_id);
        return TRUE;
    }
    
    public static function _Getshowinfo($show_id){
        $db = cmsms()->GetDb();
        $query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ".$show_id;
        $result = $db->Execute($query);
        if( $result && $result->RecordCount() > 0 ){
                $output = $result->FetchRow();
        }
        if ( !$result ){

                echo 'ERROR: ' . mysql_error();
                exit();
        }
        return isset($output) ? $output : FALSE;
    }    

    
    public static function _Getpictureinfo($picture_id){
        $db = cmsms()->GetDb();
        $query = "SELECT * FROM ".cms_db_prefix()."module_showtime WHERE picture_id = ".$picture_id;
        $result = $db->Execute($query);
        if( $result && $result->RecordCount() > 0 ){
                $output = $result->FetchRow();
        }
        if ( !$result ){
                echo 'ERROR: ' . mysql_error();
                exit();
        }
        return isset($output) ? $output : FALSE;
    }
    

    public static function _Updatepicture($properties, $picture_id, $whereclause =''){
        $db = cmsms()->GetDb();
        $query = 'UPDATE '.cms_db_prefix().'module_showtime SET ';
        foreach ($properties as $key => $value){
                        $query .= $key."=?, ";
        }
        $query= trim($query, ', ');
        if (empty($whereclause)){
                $query .= ' WHERE picture_id = '.$picture_id;
        }else{
                $query .= ' WHERE '.$whereclause;
        }

        $result =$db->Execute($query, $properties);
        if ( !$result )	{
                echo 'Error _updateshow: ' . mysql_error();
                exit();
        }	
        return TRUE;	
    }
    
    public static function _Deletepicture($picture_id, $whereclause =''){
        $db = cmsms()->GetDb();
        $query = 'DELETE FROM '.cms_db_prefix().'module_showtime ';

        if (empty($whereclause)){
                $query .= ' WHERE picture_id = '.$picture_id;
        }else{
                $query .= ' WHERE '.$whereclause;
        }

        $result =$db->Execute($query);
        if ( !$result )	{
                echo 'Error _updateshow: ' . mysql_error();
                exit();
        }	
        return TRUE;	
    }
    

    public static function _getdefaultvalues($animationtype = "swfobject"){
        switch ($animationtype){
            case 'swfobject':
                    $properties = array(
                            'st_animationtype '=>$animationtype,
                            'st_showcontrols' => 1,
                            'st_showcontrolssub' => 1004,
                            'st_wmode' => 'window',
                            'st_scale' => 'exactfit',
                            'st_autoplay' => 1,
                            'st_transition' => 'KenBurns',
                            'st_easeFunc' => 'Linear',
                            'st_ease' => 'EaseNone',
                            'st_rotatetime' => 5,
                            'st_transitiontime' => 1,
                            'st_bgcolor' => '#000000',
                            'st_showtext'=> 0,
                            'st_showcomment' => 1,
                            'st_showalt' => 1,
                            'st_textbgcolor' => '#000000',
                            'st_textcolor' => '#eeeeee',
                            'st_fonttype' => 'sans',
                            'st_titlesize' => 16,
                            'st_textsize' => 10
                            );
                    break;
            case 'jQuery':
                    $properties = array(
                            'st_animationtype '=>$animationtype,
                            'st_navbut'=>1,
                            'st_nav_bordercolor' => '#444040',
                            'st_nav_bordersize' => 2,
                            'st_nav_radius' => 8,
                            'st_nav_bgcolor' => '#ededed',
                            'st_nav_bgactivecolor' => '#61d3ff',
                            'st_nav_textcolor' => '#333333',
                            'st_nav_size' => 10,
                            'st_nav_pos' => 'bottom_right',
                            'st_nav_padding' => 5,
                            'st_nav_showtext' => 0,
                            'st_scale' => 'exactfit',
                            'st_shuffle' => 0,
                            'st_autoplay' => 1,
                            'st_showcontrols' => 1,
                            'st_transition' => 'toss',
                            'st_rotatetime' => 5,
                            'st_transitiontime' => 1,
                            'st_bgcolor' => '#000000',
                            'st_showtext' => 1,
                            'st_showcomment' => 1,
                            'st_showalt' => 1,
                            'st_textbgcolor' => '#000000',
                            'st_textcolor' => '#eeeeee',
                            'st_captionopacity' => '0.8',
                            'st_fonttype' => 'sans',
                            'st_titlesize' => 16,
                            'st_textsize' => 12,
                            'st_pauseonhover' => 1,
                            'st_commentpos' => 'top');
                    break;
            case 'nivoslider':
                    $properties = array(
                            'st_animationtype '=>$animationtype,
                            'st_theme' => 'default',
                            'st_animationtype' => 'nivoslider',
                            'st_autoplay' => 1,
                            'st_showcontrols' => 1,
                            'st_controlshide' => 1,
                            'st_transition' => 'random',
                            'st_slices' => 15,
                            'st_box_x' => 8,
                            'st_box_y' => 4,
                            'st_rotatetime' => 3,
                            'st_transitiontime' => 1,
                            'st_navbut' => 1,
                            'st_start_slide' => 0,
                            'st_pauseonhover' => 1,
                            'st_showtext' => 1,
                            'st_showcomment' => 1,
                            'st_captionopacity' => 0.8
                            );
                    break;
        }
    return $properties;
    }

    
    
}
?>
