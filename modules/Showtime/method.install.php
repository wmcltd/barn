<?php
#-------------------------------------------------------------------------
# Module: Showtime
# Moduledemo's URI: http://www.web2do.be/cms/showtime
# Description:Display images as animated slideshow. 
# Choose among several smooth transition effects. ShowTime requires Adobe Flash player 10 or higher.
#
# Version: 1.0
# author: Peter Orije
# Author URI: http://www.web2do.be
/*
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*/
# Module based on Wordpress plugin from: Paul Schroeder URI: http://youtag.lu/showtime-wp-plugin/
#-------------------------------------------------------------------------
if (!cmsms()) exit;
$db =& $gCms->GetDb();
$taboptarray = array( 'mysql' => 'TYPE=MyISAM' );

$dict = NewDataDictionary( $db );

// table schema description
$flds = "
	show_id I KEY,
	show_name C(80),
	st_animationtype C(15),
	st_height I,
	st_width I,
	st_rotatetime F,
	st_transitiontime F,
	st_transition C(30),
	st_easeFunc C(30),
	st_ease C(30),
	st_autoplay I1,
	st_showcontrols I1,
	st_showcontrolssub I,
	st_textbgcolor C(10),
	st_showtext I1,
	st_showcomment I1,
	st_showalt I1,
	st_textcolor C(10),
	st_textsize I,
	st_titlesize I,
	st_fonttype C(50),
	st_bgcolor C(10),
	st_scale C(30),
	st_shuffle I1,
	st_wmode C(20),
	st_commentpos C(10),
	st_navbut I1,
	st_nav_bordercolor C(10),
	st_nav_bordersize I,
	st_nav_radius I,
	st_nav_bgcolor C(10),
	st_nav_bgactivecolor C(10),
	st_nav_textcolor C(10),
	st_nav_showtext I1,
	st_nav_size I,
	st_nav_pos C(20),
	st_nav_padding I,
	st_target C(15), 
	st_link C(20),
	st_theme C(10),
	st_slices I,
	st_box_x I,
	st_box_y I,
	st_thumb_nav I1,
	st_start_slide I,
	st_pauseonhover I1,
	st_controlshide I1,
	st_captionopacity C(5)
	";


$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_showtime_name",
		$flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);

// create a sequence
$db->CreateSequence(cms_db_prefix()."module_showtime_name_seq");


// table schema description
   		$flds = "picture_id I KEY,
			active I1 DEFAULT 1,
			show_id I,
			picture_name C(80),
			picture_number I,
			picture_url C(255),
			picture_url_target C(10),
			picture_url_nature C(20),
			thumbnail_path C(255),
			picture_path C(255),
			comment X
			";
		
$sqlarray = $dict->CreateTableSQL( cms_db_prefix()."module_showtime",
				   $flds, 
				   $taboptarray);
$dict->ExecuteSQLArray($sqlarray);

// create a sequence
$db->CreateSequence(cms_db_prefix()."module_showtime_seq");

// create Prefenences
$this->SetPreference("uploadmethode", 'swf');
$this->SetPreference("watermark_file", 'watermark.png');
$this->SetPreference("watermark_pos", 'bottom_right');
$this->SetPreference("watermark_transparant", '70');
$this->SetPreference("watermark_padding_x", '10');
$this->SetPreference("watermark_padding_y", '10');
$this->SetPreference("load_jQuery_scripts",'1');
	
// create a permission
$this->CreatePermission('Use Showtime', 'Use Showtime');
$this->CreatePermission('Use Showtime Prefs','Use Showtime Prefs');

// default template CSS for Nivoslider
$this->SetTemplate('nivoslider_default_caption_css',
'
/* Caption styles */
.nivo-caption {
	position:absolute;
	/*background-color:#000000;*/
	/*use RGBA value if you dont want opacity inheritance*/
 	background-color: rgba(0, 0, 0, 0.60);
	font-family:_sans,Helvetica,Arial;
	font-size:12px;
	color:#eeeeee !important;
	
	/* For caption position bottom*/
	bottom:0;
	
	/* For caption position right side*/
	/*
	right:0;
	*/
	
	/* For left and right caption position*/
	/*	
	width:-moz-min-content;
	height:100%;
	width: 30%;"
	*/
	
	/* for top or bottom caption position */
	width:100%;

	z-index:8;			
}

.nivo-caption a {
	color:#fff;
	border-bottom:1px dotted #fff;
	display:inline !important;
}
.nivo-caption a:hover {
	color:#fff;
}
.nivo-caption p {
	padding:5px ;
	margin:0;
	color:#eeeeee !important;
}
.nivo-caption p h2{
	font-family:_sans,Helvetica,Arial !important !important;
	font-size:16px !important;
	color:#eeeeee !important;
        border: none !important;
}

.nivo-caption p img{
	display:block;
	width:auto;
	height:auto;
	margin: 5px;
	position: relative;
}

.nivo-html-caption {
	display:none;
}
						
');

$this->SetTemplate('nivoslider_preset_caption_css02',
'
/* Caption styles */
.nivo-caption {
	position:absolute;
	/*background-color:#000000;*/
	/*use RGBA value if you dont want opacity inheritance*/
 	background-color: rgba(255, 255, 255, 0.60);
	font-family:_sans,Helvetica,Arial;
	font-size:12px;
	color:#eeeeee !important;
	
	/* For caption position bottom*/
	/*bottom:0;*/

	/* For caption position top*/
	top:50%;
	margin-top:-30px;
	
	/* For caption position right side*/
	/*
	right:0;
	*/

	/* For caption position left side*/
	left:0;
	
	/* For left and right caption position*/
	width:-moz-min-content;
	height:60px;
	width: 190px;
	
	/* for top or bottom caption position */
	/*width:100%;*/

	z-index:8;			
}

.nivo-caption a {
	color:#ee0000;
	border-bottom:1px dotted #fff;
	display:inline !important;
}
.nivo-caption a:hover {
	color:#555;
}
.nivo-caption p {
	padding:5px ;
	margin:0;
	color:#333!important;
}
.nivo-caption p h2{
	font-family:_sans,Helvetica,Arial !important !important;
	font-size:16px !important;
	color:#333!important;
        border: none !important;       
}

.nivo-caption p img{
	display:block;
	width:auto;
	height:auto;
	margin: 5px;
	position: relative;
}

.nivo-html-caption {
	display:none;
}
');

$this->SetTemplate('nivoslider_preset_caption_css03',
'
/* Caption styles */
.nivo-caption {
	position:absolute;
	/*background-color:#000000;*/
	/*use RGBA value if you dont want opacity inheritance*/
 	background-color: rgba(255, 255, 255, 0.60);
	font-family:_sans,Helvetica,Arial;
	font-size:12px;
	color:#eeeeee !important;
	
	/* For caption position bottom*/
	bottom:0;

	/* For caption position top*/
	/*top:50%;
	margin-top:-30px;*/
	
	/* For caption position right side*/
	/*
	right:0;
	*/

	/* For caption position left side*/
	left:50%;
	margin-left:-150px;
	
	/* For left and right caption position*/
	width:-moz-min-content;
	height:60px;

	width: 300px;


	z-index:8;			
}

.nivo-caption a {
	color:#ee0000;
	border-bottom:1px dotted #fff;
	display:inline !important;
}
.nivo-caption a:hover {
	color:#555;
}
.nivo-caption p {
	padding:5px ;
	margin:0;
	color:#333!important;
}
.nivo-caption p h2{
	font-family:_sans,Helvetica,Arial !important !important;
	font-size:16px !important;
	color:#333!important;
        border: none !important;
}

.nivo-caption p img{
	display:block;
	width:auto;
	height:auto;
	margin: 5px;
	position: relative;
}

.nivo-html-caption {
	display:none;
}
');

$this->SetTemplate('nivoslider_preset_caption_css04',
'
/* Caption styles */
.nivo-caption {
	position:absolute;
	/*background-color:#000000;*/
	/*use RGBA value if you dont want opacity inheritance*/
 	background-color: rgba(0, 0, 0, 0.60);
	font-family:_sans,Helvetica,Arial;
	font-size:12px;
	color:#eeeeee !important;
	
	/* For caption position bottom*/
	bottom:0;
	
	/* For caption position right side*/
	left:100%;
	
	
	/* For left and right caption position*/
	width:-moz-min-content;
	height:100%;
	width: 200px;"
	
	/* for top or bottom caption position */
	width:100%;

	z-index:8;			
}

.nivo-caption a {
	color:#fff;
	border-bottom:1px dotted #fff;
	display:inline !important;
}
.nivo-caption a:hover {
	color:#fff;
}
.nivo-caption p {
	padding:5px ;
	margin:0;
	color:#eeeeee !important;
}
.nivo-caption p h2{
	font-family:_sans,Helvetica,Arial !important !important;
	font-size:16px !important;
	color:#eeeeee !important;
        border: none !important;
}

.nivo-caption p img{
	display:block;
	width:auto;
	height:auto;
	margin: 5px;
	position: relative;
}

.nivo-html-caption {
	display:none;
}
						

');



// register an event
$this->CreateEvent( 'OnShowtimePreferenceChange' );

$this->AddEventHandler('Core', 'ContentPostRender', false);

// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('installed', $this->GetVersion()) );
		        
?>