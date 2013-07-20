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

$current_version = $oldversion;
$db =& $this->GetDb();
$taboptarray = array( 'mysql' => 'TYPE=MyISAM' );
$dict = NewDataDictionary( $db );

switch($current_version)
{
  // we are now 1.0 and want to upgrade to latest
 case "1.0":
	$current_version = "1.0.1";
 case "1.0.1":
 	// Create Event Handle
	$this->CreateEvent( 'OnShowtimePreferenceChange' );	
	$this->AddEventHandler('Core', 'ContentPostRender', false);
	$current_version = "1.0.2";
 case "1.0.2":
	$current_version = "1.0.3";
 case "1.0.3":
 		$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", "st_wmode C(20)");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET st_wmode='window'";
		$db->Execute($query);
		$current_version = "1.0.5";
 case "1.0.5":
	//$this->SetPreference("animationtype", 'swfobject');
	$this->SetPreference("uploadmethode", 'swf');

	//add TinyMCE_mapi_pref_module_plugins
	$this->checkTinyMCE_mapi_pref();
	$this->checktoolbar();

	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", 
			"st_showcontrolssub I,
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
			st_animationtype C(15)
			");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET 
			st_showcontrolssub='1004',
			st_commentpos='top',
			st_navbut='1',
			st_nav_bordercolor='#CCCCCC',
			st_nav_bordersize='1',
			st_nav_radius='0',
			st_nav_bgcolor='#EEEEEE',
			st_nav_bgactivecolor='#FFFFFF',
			st_nav_textcolor='#333333',
			st_nav_showtext='1',
			st_nav_size='20',
			st_nav_pos='bottom_right',
			st_nav_padding='5',
			st_animationtype='swfobject'
			";
		$db->Execute($query);

 	$current_version = "2.0.0";
	
 case "2.0.0":
	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", "st_target C(15), st_link C(20)");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET st_target='_self' st_link='internal page'";
		$db->Execute($query);

 	$current_version = "2.0.1";

 case "2.0.1":
	$this->SetPreference("watermark_file", 'watermark.png');
	$this->SetPreference("watermark_pos", 'bottom_right');
	$this->SetPreference("watermark_onoff", '0');
	$this->SetPreference("watermark_transparant", '70');
	$this->SetPreference("watermark_padding_x", '10');
	$this->SetPreference("watermark_padding_y", '10');

 	$current_version = "2.0.2";

case "2.0.2":
	$this->SetPreference("load_jQuery_scripts",'1');
	$current_version = "2.0.3";
case "2.0.3":
	$this->SetPreference("load_TinyMCE_plugin",'0');
	$current_version = "2.0.4";
case "2.0.4":
case "2.0.5":
	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", 
			"st_theme c(10),
			st_slices I,
			st_box_x I,
			st_box_y I,
			st_thumb_nav I1,
			st_start_slide I,
			st_pauseonhover I1,
			st_controlshide I1,
			st_captionopacity C(5)
			");
		$dict->ExecuteSQLArray($sqlarray);

	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime", 
			"picture_url_target c(10),
 			picture_url_nature C(20)
			");
		$dict->ExecuteSQLArray($sqlarray);

		//remove watermark_onoff
		$this->RemovePreference('watermark_onoff');
		
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
	//update the url settings
	$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime_name';
	$dbresult = $db->Execute($query);
	while( $dbresult && ($row = $dbresult->FetchRow()) ){
		//now cheque every link in each show.
		$query = "UPDATE " . cms_db_prefix() . "module_showtime 
					SET picture_url_nature='".$row['st_link']."', picture_url_target='".$row['st_target']."'  
					WHERE show_id=".$row['show_id']." AND NOT ISNULL(picture_url)";
		$db->Execute($query);
	}//while
	


	$current_version = "3.0";
}

// put mention into the admin log
$this->Audit( 0, 
	      $this->Lang('friendlyname'), 
	      $this->Lang('upgraded', $this->GetVersion()));

//note: module api handles sending generic event of module upgraded here
?>