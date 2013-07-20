<?php

class showtime_CSS_NIVO{
  protected function __construct() {} 

  public static function _Create($module,$show_id, $example=false){
    $gCms = cmsms();
    $db = cmsms()->GetDb();
    $config = $gCms->GetConfig();
    $rooturl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']=='on')?$config['ssl_url']:$config['root_url'];
    $row = showtime_data::_Getshowinfo($show_id);
    //set default value h x w if example
    $row['st_width']= ($example)?300:$row['st_width'];
    $row['st_height']=($example)?225:$row['st_height'];

    // get number of slides
    if ($example){
            $nr_slides = 5;
    }else{
            $query = 'SELECT picture_id FROM '.cms_db_prefix().'module_showtime WHERE active AND show_id = ? ORDER BY picture_number';	
            $result=$db->Execute($query,array($show_id));
            $nr_slides= $result->RecordCount();
    }

    $row['st_rotatetime'] = $row['st_rotatetime']  * 1000;
    $row['st_transitiontime'] = $row['st_transitiontime'] * 1000;
    //calculate position top_prevnextnav

    //Read fontype
    switch (trim($row['st_fonttype'])){
            case 'verdana':
                    $row['st_fonttype']='Verdana, Geneva, sans-serif' ;break;
            case 'courier':
                    $row['st_fonttype']='"Courier New", Courier, monospace' ;break;
            case 'arial':
                    $row['st_fonttype']='Arial, Helvetica, sans-serif' ;break;
            case 'tahoma':
                    $row['st_fonttype']='Tahoma, Geneva, sans-serif' ;break;
            case 'sans':
                    $row['st_fonttype']='_sans, Helvetica, Arial' ;break;
            case 'times':
                    $row['st_fonttype']='"Times New Roman", Times, serif' ;break;
            case 'serif':
                    $row['st_fonttype']='"MS Serif", "New York", serif' ;break;
    }


    //calculate ratio from default image properties
    if ($row['st_theme']=='orman'){
            $w_ratio = ($row['st_width']+30)/598;
            $h_ratio = ($row['st_height']+30)/298;
    }
    if ($row['st_theme']=='pascal'){
            $w_ratio = $row['st_width']/662;
            $h_ratio = $row['st_height']/267;
    }
    //check bg color caption
    $row['st_textbgcolor'] =($row['st_showalt'])?$row['st_textbgcolor']:'none';

        $cssstring="
            div#slideshow_nav_".$row['show_id']."{
                    position:absolute;
                    z-index: 10;";
                if ($row['st_nav_pos']=='bottom_right' || $row['st_nav_pos']=='bottom_left'){
                        $cssstring .="
                    bottom:0;";
                }

                if ($row['st_nav_pos']=='top_right' || $row['st_nav_pos']=='bottom_right'){
                        $cssstring .="
                    right:0;";
                }

        $cssstring="
                    .nivoSlider {
                            position:relative;
                            background: url(".$rooturl."/modules/Showtime/templates/nivoslider/loading.gif) no-repeat 50% 50%;
                        width:".$row['st_width']."px;
                        height:".$row['st_height']."px;
                            margin:auto;";
                    if ($row['st_theme']=='orman'){
                            //$margin_left = 77 * $w_ratio;
                            $margin_left = (62* $w_ratio)+14;
                            $cssstring .="
                            margin-left:".$margin_left."px;
                            border: 2px solid #ffffff;";
                    }elseif ($row['st_theme']=='default'){
                            $cssstring .="
                                    margin-bottom:50px;
                                    -webkit-box-shadow: 0px 1px 5px 0px #4a4a4a;
                                    -moz-box-shadow: 0px 1px 5px 0px #4a4a4a;
                                    box-shadow: 0px 1px 5px 0px #4a4a4a;";
                    }elseif ($row['st_theme']=='pascal'){
                            $cssstring .="";
                    }else{
                            $cssstring .="
                                    -webkit-box-shadow: 0px 1px 5px 0px #4a4a4a;
                                    -moz-box-shadow: 0px 1px 5px 0px #4a4a4a;
                                    box-shadow: 0px 1px 5px 0px #4a4a4a;";
                    }
                            $cssstring .="
                    }";			


                    if ($row['st_theme']=='orman'){
                            //make some slide borders
                                $width = $row['st_width'] - 1;
                                $height = $row['st_height'] - 1;
                                $cssstring .="
                    .nivoSlider:before {
                            border: 1px solid #e7e7e7;  
                            content: '';  
                        width:".$row['st_width']."px;
                        height:".$row['st_height']."px;
                            left: -1px; top: -1px;  
                            position: absolute;  
                    }
                    .nivoSlider:after {
                            border: 1px solid #999999;  
                            content: '';  
                        width:".$width."px;
                        height:".$height."px;
                            position: absolute;  
                    }
                    ";				
                            //calculate the height and width
                            //$wrapper_height = $row['st_height'] + (51*$h_ratio);
                            //$padding_top = 18 * $h_ratio;
                            $wrapper_height = $row['st_height'] + ((35* $h_ratio)+17);
                            $padding_top = 16;

                            //$wrapper_width = $row['st_width'] + (154 * $w_ratio);	//calculate the width
                            $wrapper_width = $row['st_width'] + (((62* $w_ratio)+16)*2);	//calculate the width

                            $cssstring .="
                    .slider-wrapper {
                            background-image: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_slider.png);
                            background-repeat: no-repeat;
                            background-size: 100% 100%;
                            height:".$wrapper_height."px;
                            margin:0 auto;
                            padding-top:".$padding_top."px;
                            position:relative;
                            width:".$wrapper_width."px;
                    }";
                    }


                    if ($row['st_theme']=='pascal'){
                            //calculate the height and width
                            $wrapper_height = $row['st_height'] + (31*$h_ratio)+16;
                            $wrapper_width = $row['st_width'] + (3 * $w_ratio)+32;	//calculate the width				 
                            $padding_top = (1 * $h_ratio)+16;
                            $cssstring .="
                    .slider-wrapper {
                            background-image: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_slider.png);
                            background-repeat: no-repeat;
                            background-size: 100% 100%;
                            height:".$wrapper_height."px;
                            margin:0 auto;
                            padding-top:".$padding_top."px;
                            position:relative;
                            width:".$wrapper_width."px;
                    }";
                    }

                            $cssstring .="

                    .nivoSlider img {
                            position:absolute;
                            top:0px;
                            left:0px;
                            display:none;
                        width:".$row['st_width']."px;/* Make sure your images are the same size */
                        height:".$row['st_height']."px;/* Make sure your images are the same size */
                    }

                    .nivoSlider a {
                            border:0;
                            display:block;
                    }

                    /* Direction nav styles (e.g. Next & Prev) */
                    .nivo-controlNav {
                            position:absolute;
                            left:50%;";
                            if ($row['st_theme']=='default'){
                                    //calculate the nav width
                                    $margin_left=($nr_slides * 25)/2;
                                    $cssstring .="
                                    margin-left:-".$margin_left."px; /* Tweak this to center bullets */
                                    bottom:-42px;";
                            }elseif ($row['st_theme']=='orman'){ 
                                    //calculate the nav width
                                    $margin_left=($nr_slides * 17)/2;
                                    $cssstring .="
                                    bottom:-42px;
                                    margin-left:-".$margin_left."px; /* Tweak this to center bullets */";
                            }elseif ($row['st_theme']=='pascal'){
                                    //calculate the nav width
                                    $bottom = 21 + (16 * $h_ratio);
                                    $padding_left =($example)? 65 :24 + ($nr_slides* 4.5);
                                    $padding_right = ($example)? 71 :32 + ($nr_slides* 4.5);                                                
                                    $margin_left= ($example)? 120 : (($nr_slides * 22)/2)+$padding_left;
                                    $cssstring .="
                                    background: url(".$rooturl."/modules/Showtime/templates/nivoslider/pascal_controlnav.png) no-repeat ;
                                    background-size: 100% 100%;
                                    /*width:251px;*/
                                    height:38px;
                                    bottom:-".$bottom."px;
                                    padding: 8px ".$padding_left."px 0 ".$padding_right."px;
                                    margin-left:-".$margin_left."px; /* Tweak this to center bullets */
                                    z-index:20;";
                            }elseif ($row['st_theme']=='nivo'){
                                    //calculate the nav width
                                    $margin_left=(($nr_slides * 14)/2)+24;
                                    $cssstring .="
                                    background: url(".$rooturl."/modules/Showtime/templates/nivoslider/nivo_controlnav.png) no-repeat ;
                                    background-size: 100% 100%;
                                    /*width:72px;*/
                                    height:13px;
                                    bottom:15px;
                                    margin-left:-".$margin_left."px; /* Tweak this to center bullets */
                                    z-index:20;
                                    padding:15px 24px 15px 24px;
                                    opacity:0.5;";
                            }
                            $cssstring .="
                    }

                    .slider-wrapper :hover .nivo-controlNav {";
                    if ($row['st_theme']=='nivo'){
                            $cssstring .="
                            opacity:1.0;";
                    }
                            $cssstring .="
                    }

                    .nivo-controlNav a {
                            display:block;
                            background: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_bullets.png) no-repeat !important;
                            text-indent:-9999px;
                            border:0;
                            float:left;";
                            if ($row['st_theme']=='default'){
                            $cssstring .="
                                    width:22px;
                                    margin-right:3px;
                                    height:22px;
                                    margin-right:3px;";
                            }elseif ($row['st_theme']=='orman'){ 
                            $cssstring .="
                                    width:10px;
                                    margin-right:3px;
                                    height:10px;
                                    margin-right:7px;";
                            }elseif ($row['st_theme']=='pascal'){
                            $cssstring .="
                                    width:22px;
                                    height:22px;";
                            }elseif ($row['st_theme']=='nivo'){
                            $cssstring .="
                                    margin-right:3px;
                                    width:11px;
                                    height:12px;";
                            }
                            $cssstring .="

                            position:relative;
                            z-index:9;
                            cursor:pointer;
                    }

                    /* Control nav styles (e.g. 1,2,3...) */

                    .nivo-controlNav a.active {";
                            if ($row['st_theme']=='default'){
                                    $cssstring .="
                                    background-position:0 -22px !important;";
                            }elseif ($row['st_theme']=='orman'){ 
                                    $cssstring .="
                                    background-position:0 -10px !important;";
                            }elseif ($row['st_theme']=='pascal'){
                                    $cssstring .="
                                    background-position:0 -22px !important;";
                            }elseif ($row['st_theme']=='nivo'){
                                    $cssstring .="
                                    background-position:0 -12px !important;";
                            }
                                    $cssstring .="
                    }

            .nivo-controlNav img {
                            display:inline; /* Unhide the thumbnails */
                            position:relative;
                            margin-right:10px;
                    }

                    .nivo-directionNav a {
                            display:block;";
                            if ($row['st_theme']=='default'){
                            $cssstring .="
                                    width:30px;
                                    height:30px;
                                    background: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_arrows.png) no-repeat !important;
                                    top:50%;";
                            }elseif ($row['st_theme']=='orman'){ 
                            $cssstring .="
                                    width:54px;
                                    height:200px;
                                    background: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_arrows.png) no-repeat 0% 50% !important;
                                    margin-top: -100px;
                                    top:50%;";
                            }elseif ($row['st_theme']=='pascal'){ 
                                    $cssstring .="
                                    top:50%;";
                            }elseif ($row['st_theme']=='nivo'){
                            $cssstring .="
                                    width:43px;
                                    height:43px;
                                    background: url(".$rooturl."/modules/Showtime/templates/nivoslider/".$row['st_theme']."_arrows.png) no-repeat !important;";
                            }
                            $cssstring .="
                            text-indent:-9999px;
                            border:0;
                            position:absolute;
                            z-index:9;
                            cursor:pointer;

                    }



                    a.nivo-nextNav {";
                            if ($row['st_theme']=='default'){
                            $cssstring .="
                                    background-position:-30px 0 !important;
                                    right:15px;";
                            }elseif ($row['st_theme']=='orman'){
                                    //$left = (18 * $w_ratio)+22;
                                    $left = (17)+24;
                                    $cssstring .="
                                    background-position:100% 50%  !important;
                                    right:-".$left."px;
                                    padding-right:20px;";
                            }elseif ($row['st_theme']=='nivo'){
                                    //calculate button pos
                                    $margin_left=(($nr_slides * 14)/2)+60;
                                    $cssstring .="
                                    bottom: 15px;
                                    right: 50%;
                                    margin-right: -".$margin_left."px;
                                    background-position:-43px 0 !important";
                            }
                            $cssstring .="
                    }
                    a.nivo-nextNav:hover {";
                            if ($row['st_theme']=='nivo'){
                            $cssstring .="
                            background-position:-43px -43px !important;";
                            }
                            $cssstring .="
                    }



                    a.nivo-prevNav {";
                            if ($row['st_theme']=='default'){
                            $cssstring .="
                                    left:15px;";
                            }elseif ($row['st_theme']=='orman'){
                                    //$left = (18 * $w_ratio)+22;
                                    $left = (17)+24;
                                    $cssstring .="
                                    left:-".$left."px;
                                    padding-left:20px;";
                            }elseif ($row['st_theme']=='nivo'){
                                    //calculate button pos
                                    $margin_left=(($nr_slides * 14)/2)+60;
                                    $cssstring .="
                                    bottom: 15px;
                                    left: 50%;
                                    margin-left: -".$margin_left."px;";
                            }
                            $cssstring .="
                    }
                    a.nivo-prevNav:hover {";
                            if ($row['st_theme']=='nivo'){
                            $cssstring .="
                            background-position:0 -43px !important;";
                            }
                            $cssstring .="
                    }

                    /* If an image is wrapped in a link */
                    .nivoSlider a.nivo-imageLink {
                            position:absolute;
                            top:0px;
                            left:0px;
                            width:100%;
                            height:100%;
                            border:0;
                            padding:0;
                            margin:0;
                            z-index:6;
                            display:none;
                    }
                    /* The slices and boxes in the Slider */
                    .nivo-slice {
                            display:block;
                            position:absolute;
                            z-index:5;
                            height:100%;
                    }
                    .nivo-box {
                            display:block;
                            position:absolute;
                            z-index:5;
                    }


                    ";

    $cssstring .= $module->GetTemplate("CaptionCSS_Schow_".$show_id);

    //write if not example
    if (!$example){
            $cssfilename = '../modules/Showtime/templates/css/Show_' . $show_id . '.css';
            $handle = fopen($cssfilename,'w');
            fwrite($handle,$cssstring);
            fclose($handle);
            return true;
    }else{
            return $cssstring;
    }
}

}     
     
?>
