<?php

class showtime_CSS_jQuery{
  protected function __construct() {} 

    function _Create($show_id,$example=false){
        $gCms = cmsms();
        $config = $gCms->GetConfig();
        $rooturl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']=='on')?$config['ssl_url']:$config['root_url'];
        $row = showtime_data::_Getshowinfo($show_id);

        //set default value h x w if example
        $row['st_width']= ($example)?300:$row['st_width'];
        $row['st_height']=($example)?225:$row['st_height'];

        $row['st_rotatetime'] = $row['st_rotatetime'] * 1000;
        $row['st_transitiontime'] = $row['st_transitiontime'] * 1000;
        //calculate position top_prevnextnav
        $row['top_prevnextnav'] = ceil($row['st_height']/2)-5;	

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

        //calculate position for Navbuttons
        $margin = 5; //procent
        $button_width= 20;
        if ($row['st_width'] > 400 && $row['st_width'] < 600){
                $button_width= 30;
        }elseif($row['st_width'] >= 600){
                $button_width= 40;
        }
        $row['button_width'] = $button_width;
        $row['leftbutton_pos'] = ceil($row['st_width']* $margin /100);
        $row['rightbutton_pos'] = ceil($row['st_width']* (100-$margin) /100)- $button_width;

        //recalculate nav textsize and button size from (st_nav_size) and (st_nav_showtext)
        //textsize is always 50% from nav_size
        if ($row['st_nav_showtext']){
                $row['st_nav_textsize'] = ceil($row['st_nav_size'] / 2);
                $row['st_nav_vmargin_text']= ceil(($row['st_nav_size'] - $row['st_nav_textsize'])/2);
                $row['st_nav_hmargin_text']= ceil(($row['st_nav_size'] - ceil($row['st_nav_textsize'] / 2))/2);
        }else{
                $row['st_nav_textsize'] = 0;
                $row['st_nav_vmargin_text']= ceil($row['st_nav_size']/2);
                $row['st_nav_hmargin_text']= $row['st_nav_vmargin_text'];
        }

        //write css string		
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
                            $cssstring .="
                        padding:".$row['st_nav_padding']."px;
                }
                .slide_nav_".$row['show_id']." {
                        clear:both;
                        margin:5px 0;
                }
                .slide_nav_".$row['show_id']." a {";

                if ($row['st_nav_radius'] > 0){
                            $cssstring .="
                            -webkit-border-radius: ".$row['st_nav_radius']."px;
                            -moz-border-radius: ".$row['st_nav_radius']."px; 
                            border-radius: ".$row['st_nav_radius']."px;";

                }
                    //correction for chrome
                //font-size can not be 0px set to 1px instead
                if ($row['st_nav_textsize'] < 1){
                    $row['st_nav_textsize']=1;
                    //set color to bg color so the dot 'll not show
                    $row['st_nav_textcolor'] = $row['st_nav_bgcolor'];
                    $activecolor = $row['st_nav_bgactivecolor'];
                }else{
                    $activecolor = $row['st_nav_textcolor'];
                }

                            $cssstring .="
                        background:none repeat scroll 0 0 ".$row['st_nav_bgcolor'].";
                        border:".$row['st_nav_bordersize']."px solid ".$row['st_nav_bordercolor'].";
                        color:".$row['st_nav_textcolor']."!important;
                        font-size:".$row['st_nav_textsize']."px;
                        font-weight:bold;
                        margin:2px;
                        padding:".$row['st_nav_vmargin_text']."px ".$row['st_nav_hmargin_text']."px;
                        line-height:".$row['st_nav_size']."px;
                        text-decoration:none;
                }
                .slide_nav_".$row['show_id']." a.activeSlide {
                        background:none repeat scroll 0 0 ".$row['st_nav_bgactivecolor'].";
                        color:".$activecolor." !important;
                }
                .slide_nav_".$row['show_id']." a:focus {
                        outline:medium none;
                }

                div#slideshow_".$row['show_id']." {
                        width:".$row['st_width']."px; height: ".$row['st_height']."px; /*padding: 15px 0 0 12px;*/
                        position: relative; z-index: 5;
                        overflow: hidden;
                        margin: 0 auto;
                        background:".$row['st_bgcolor'].";
                }
                        div#slideshow_".$row['show_id']." img{
                                border:none!important;
                                padding:0;
                                margin:0;
                        }
                        div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." {
                                padding: 0;
                                display: none;
                                list-style: none;
                                position: relative; top: ".$row['top_prevnextnav']."px; z-index: 15;
                                outline:medium none;
                                margin:0;
                        }
                                div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#prev_".$row['show_id']." {
                                        position:absolute; left:".$row['leftbutton_pos']."px; margin: 0;padding: 0;
                                }
                                div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#next_".$row['show_id']." {
                                        position:absolute; left:".$row['rightbutton_pos']."px; margin: 0 20px 0 0;padding: 0;
                                }
                                div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li a {
                                        display: block; width: ".$row['button_width']."px; height: ".$row['button_width']."px; text-indent: -9999px;
                                }
                                        div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#prev_".$row['show_id']." a {

                                                background: url(".$rooturl."/modules/Showtime/templates/jquery/images/prev_".$row['button_width'].".png);

                                        }
                                        div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#next_".$row['show_id']." a {

                                                background: url(".$rooturl."/modules/Showtime/templates/jquery/images/next_".$row['button_width'].".png);

                                        }

                        div#slideshow_".$row['show_id']." ul#slides_".$row['show_id']."{
                                list-style: none;padding: 0; margin:0; z-index:5;
                                width:".$row['st_width']."px; height: ".$row['st_height']."px;
                        }
                                div#slideshow_".$row['show_id']." ul#slides_".$row['show_id']." li {
                                        width:".$row['st_width']."px; height: ".$row['st_height']."px;
                                        margin: 0 0 20px 0;
                                }

                a {outline: none; }";

        if ($row['st_showtext'] || $row['st_showcomment']){
                            $cssstring .="
                div#comments_st_".$row['show_id']."{
                        position:absolute;
                        font-size:".$row['st_textsize']."px;
                        z-index: 10;
                        color:".$row['st_textcolor'].";
                        font-family:".$row['st_fonttype'].";";

                if ($row['st_commentpos']=='bottom'){
                            $cssstring .="				
                        bottom:0;";
                }
                if ($row['st_commentpos']=='right'){
                            $cssstring .="
                        right:0;";
                }
                if ($row['st_commentpos']=='left' || $row['st_commentpos']=='right'){
                            $cssstring .="
                                /*width:-moz-min-content;*/
                                max-width: 20%;";
                }else{
                            $cssstring .="	
                                width:100%";
                }
                            $cssstring .="			
                }
                div#comments_st_".$row['show_id']." h2{
                        font-size:".$row['st_titlesize']."px !important;
                        color:".$row['st_textcolor']. " !important;
                        margin:0;
                        padding:0;
                }

                .commentsparts_st_".$row['show_id']."{
                        display:none;";

                if ($row['st_showalt']){
                            $cssstring .="
                        background-color:".$row['st_textbgcolor'].";";
                }
                if ($row['st_commentpos']=='left' || $row['st_commentpos']=='right'){
                            $cssstring .="
                        height:".($row['st_height']-20)."px;";
                }elseif ($row['st_commentpos']=='bottom'){
                            $cssstring .="
                            bottom:0px;";
                }elseif ($row['st_commentpos']=='top'){
                            $cssstring .="
                            top:0px;";
                }
                //transform html color to RGB color
                $color = showtime_image::html2rgb($row['st_textbgcolor']);
                            $cssstring .="
                            /*opacity: 0.65;*/
                            background-color: rgba(".$color[0].", ".$color[1].", ".$color[2].", ".$row['st_captionopacity'].");
                            filter: alpha(opacity=65);

                        padding:10px;
                        position:relative;
                }";
        }
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
