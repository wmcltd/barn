<?php
/* --------------------------------------------------------------------------------------------------------
	Build example in Admin panel
-----------------------------------------------------------------------------------------------------------*/

	//set textoptions
	switch (trim($showinfo['st_fonttype'])){
		case 'verdana':
			$stt_fonttype='Verdana, Geneva, sans-serif' ;break;
		case 'courier':
			$stt_fonttype='"Courier New", Courier, monospace' ;break;
		case 'arial':
			$stt_fonttype='Arial, Helvetica, sans-serif' ;break;
		case 'tahoma':
			$stt_fonttype='Tahoma, Geneva, sans-serif' ;break;
		case 'sans':
			$stt_fonttype='_sans, Helvetica, Arial' ;break;
		case 'times':
			$stt_fonttype='"Times New Roman", Times, serif' ;break;
		case 'serif':
			$stt_fonttype='"MS Serif", "New York", serif' ;break;
	}
	$this->smarty->assign('stt_fonttype',$stt_fonttype);
	$this->smarty->assign('stt_rotatetime',$showinfo['st_rotatetime'] * 1000);
	$this->smarty->assign('stt_transitiontime',$showinfo['st_transitiontime'] * 1000);
	$this->smarty->assign('stt_transition',$showinfo['st_transition']);
	$this->smarty->assign('stt_scale',$showinfo['st_scale']);
	$this->smarty->assign('stt_wmode',$showinfo['st_wmode']);
	$this->smarty->assign('stt_commentpos',$showinfo['st_commentpos']);
	$this->smarty->assign('stt_bgcolor',$showinfo['st_bgcolor']);
	$this->smarty->assign('showidvalue',$showid);		
	$this->smarty->assign('stt_easeFunc',$showinfo['st_easeFunc'].$showinfo['st_ease']);
	$this->smarty->assign('stt_autoplay',$showinfo['st_autoplay']);
	$this->smarty->assign('stt_showcontrols',$showinfo['st_showcontrols']);
	$this->smarty->assign('stt_controlshide',$showinfo['st_controlshide']);
	$this->smarty->assign('stt_captionopacity',$showinfo['st_captionopacity']);
	$this->smarty->assign('stt_showcontrolssub',$showinfo['st_showcontrolssub']);
	$this->smarty->assign('stt_textbgcolor',($showinfo['st_showalt']=='true')?$showinfo['st_textbgcolor']:'none');
	$this->smarty->assign('stt_showtext', $showinfo['st_showtext']);
	$this->smarty->assign('stt_showcomment',$showinfo['st_showcomment']);
	$this->smarty->assign('stt_textcolor',$showinfo['st_textcolor']);
	$this->smarty->assign('stt_textsize',$showinfo['st_textsize']);
	$this->smarty->assign('stt_titlesize',$showinfo['st_titlesize']);
	$this->smarty->assign('stt_showalt',$showinfo['st_showcomment']);
	$this->smarty->assign('stt_shuffle',$showinfo['st_shuffle']);
	$this->smarty->assign('stt_navbut',$showinfo['st_navbut']);
	
	$this->smarty->assign('stt_theme',$showinfo['st_theme']);
	$this->smarty->assign('stt_slices',$showinfo['st_slices']);
	$this->smarty->assign('stt_box_x',$showinfo['st_box_x']);
	$this->smarty->assign('stt_box_y',$showinfo['st_box_y']);
	$this->smarty->assign('stt_thumb_nav',($showinfo['st_thumb_nav'])?'true':'false');
	$this->smarty->assign('stt_start_slide',$showinfo['st_start_slide']);
	$this->smarty->assign('stt_pauseonhover',$showinfo['st_pauseonhover']);

	//$this->smarty->assign('st_com_opacity',$showinfo['st_com_opacity']);



/* --------------------------------------------------------------------------------------------------------
	Build preferences in Admin panel
-----------------------------------------------------------------------------------------------------------*/


	/* --------------------------------------------------------------------------------------------------------
	BASIC SETTINGS
	-----------------------------------------------------------------------------------------------------------*/	
	$this->smarty->assign('basic',$this->Lang('editshow_basic'));

	// width and height settings	
	$this->smarty->assign('st_width',$this->CreateInputText($id,'st_width',$showinfo['st_width'],5,5));
	$this->smarty->assign('label_width',$this->Lang('editshow_width'));
	$this->smarty->assign('st_height',$this->CreateInputText($id,'st_height',$showinfo['st_height'],5,5));
	$this->smarty->assign('label_height',$this->Lang('editshow_height'));

	// Nivoslider theme settings
	$smarty->assign('st_theme', 
		$this->CreateInputRadioGroup($id,"st_theme",
		array('<img src="../modules/Showtime/templates/nivoslider/theme_default.jpg" /> '=>"default",
			  '<img src="../modules/Showtime/templates/nivoslider/theme_orman.jpg" /> '=>"orman",
			  '<img src="../modules/Showtime/templates/nivoslider/theme_nivo.jpg" /> '=>"nivo",
			  '<img src="../modules/Showtime/templates/nivoslider/theme_pascal.jpg" /> '=>"pascal"),
		$showinfo['st_theme'],'','<br /><br />'));
	$this->smarty->assign('label_theme',$this->Lang('editshow_theme'));

	$smarty->assign('edit_animationtype', 
		$this->CreateInputRadioGroup($id,"st_animationtype",
		array('<img src="../modules/Showtime/images/swfobject_icon.jpg" />'=>"swfobject",
			  '<img src="../modules/Showtime/images/jQuery_icon.jpg" />'=>"jQuery",
			  '<img src="../modules/Showtime/images/nivoslider_icon.jpg" />'=>"nivoslider"),
		'nivoslider','','<br /><br /><br />'));
	$this->smarty->assign('label_animationtype',$this->Lang('animationtype'));
	$this->smarty->assign('animation_info',$this->Lang('animation_info'));


	/* --------------------------------------------------------------------------------------------------------
	SLIDESHOW SETTINGS
	-----------------------------------------------------------------------------------------------------------*/	
	$this->smarty->assign('label_slide_options',$this->Lang('editshow_slide_options'));
	// random setting
	$this->smarty->assign('st_shuffle',$this->CreateInputCheckbox($id,'st_shuffle','true',$showinfo['st_shuffle']));
	$this->smarty->assign('shuffle_onoff',$this->Lang('editshow_shuffle_onoff'));
	
	// Autoplay setting
	$this->smarty->assign('st_autoplay',$this->CreateInputCheckbox($id,'st_autoplay','true',$showinfo['st_autoplay']));
	$this->smarty->assign('auto_onoff',$this->Lang('editshow_auto_onoff'));

	// Show navigation controls
	$this->smarty->assign('st_showcontrols',$this->CreateInputCheckbox($id,'st_showcontrols','true',$showinfo['st_showcontrols']));
	$this->smarty->assign('showcontrols_images', '<img src="../modules/Showtime/templates/jquery/images/prev_20.png" />
		<img src="../modules/Showtime/templates/jquery/images/next_20.png" />');
	$this->smarty->assign('controls_onoff',$this->Lang('editshow_controls_onoff'));

	// Show controls on hover
	$this->smarty->assign('st_controlshide',$this->CreateInputCheckbox($id,'st_controlshide','true',$showinfo['st_controlshide']));
	$this->smarty->assign('controlshide_onoff',$this->Lang('editshow_controlshide_onoff'));


	// Transition type
	$keyvalues=array('Random'=>'random','Fade'=>'fade','Fold'=>'fold','Slice Down'=>'sliceDown','Slice down (Left)'=>'sliceDownLeft','Slice Up'=>'sliceUp',
		'Slice up (Left)'=>'sliceUpLeft','Slice Up/Down'=>'sliceUpDown','Slice Up/Down (left)'=>'sliceUpDownLeft','Slide in (Right)'=>'slideInRight',
		'Slide in (Left)'=>'slideInLeft','Box Random'=>'boxRandom','Box Rain'=>'boxRain','Box Rain (Reverse)'=>'boxRainReverse','Box Rain Grow'=>'boxRainGrow',
		'Box Rain Grow (Reverse)'=>'boxRainGrowReverse');
	$this->smarty->assign('st_transition',$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,$showinfo['st_transition'], $addttext=''));
	$this->smarty->assign('label_transition',$this->Lang('editshow_transition'));

	// Slices adn box size
	$this->smarty->assign('st_slices',$this->CreateInputText($id,'st_slices',$showinfo['st_slices'],5,5));
	$this->smarty->assign('st_box_x',$this->CreateInputText($id,'st_box_x',$showinfo['st_box_x'],5,5));
	$this->smarty->assign('st_box_y',$this->CreateInputText($id,'st_box_y',$showinfo['st_box_y'],5,5));
	$this->smarty->assign('label_nr_slices',$this->Lang('editshow_nr_slices'));
	$this->smarty->assign('label_box_cols',$this->Lang('editshow_box_cols'));

	// Transition and rotation timers
	$this->smarty->assign('st_rotatetime',$this->CreateInputText($id,'st_rotatetime',$showinfo['st_rotatetime'],5,5));
	$this->smarty->assign('st_transitiontime',$this->CreateInputText($id,'st_transitiontime',$showinfo['st_transitiontime'],5,5));
	$this->smarty->assign('label_rotation',$this->Lang('editshow_rotation'));
	$this->smarty->assign('label_transitiontime',$this->Lang('editshow_transitiontime'));

	// Turn navigation on off
	$this->smarty->assign('st_navbut',$this->CreateInputCheckbox($id,'st_navbut','true',$showinfo['st_navbut']));
	$this->smarty->assign('bar_onoff',$this->Lang('editshow_bar_onoff'));


	// Start position Slideshow
	$this->smarty->assign('st_start_slide',$this->CreateInputText($id,'st_start_slide',$showinfo['st_start_slide'],5,5));
	$this->smarty->assign('label_start_slide',$this->Lang('editshow_start_slide'));

	// Pause on hover setting
	$this->smarty->assign('st_pauseonhover',$this->CreateInputCheckbox($id,'st_pauseonhover','true',$showinfo['st_pauseonhover']));
	$this->smarty->assign('label_pauseonhover',$this->Lang('editshow_pauseonhover'));

	// Show thumbnail navigation
	$this->smarty->assign('st_thumb_nav',$this->CreateInputCheckbox($id,'st_thumb_nav','true',$showinfo['st_thumb_nav']));
	$this->smarty->assign('label_thumb_nav',$this->Lang('editshow_thumb_nav'));



	/* --------------------------------------------------------------------------------------------------------
	Caption options
	-----------------------------------------------------------------------------------------------------------*/	
	$this->smarty->assign('text_options',$this->Lang('editshow_text_options'));
	
	//show title
	$this->smarty->assign('st_showtext',$this->CreateInputCheckbox($id,'st_showtext','true',$showinfo['st_showtext']));
	$this->smarty->assign('label_show_title',$this->Lang('editshow_show_title'));

	//show comment
	$this->smarty->assign('st_showcomment',$this->CreateInputCheckbox($id,'st_showcomment','true',$showinfo['st_showcomment']));
	$this->smarty->assign('label_show_comment',$this->Lang('editshow_show_comment'));

	// Caption opacity
	$this->smarty->assign('st_captionopacity',$this->CreateInputText($id,'st_captionopacity',$showinfo['st_captionopacity'],5,5));
	$this->smarty->assign('label_captionopacity',$this->Lang('editshow_captionopacity'));
	
	// Some caption presets buttons
	//	function CreateInputSubmit($id, $name, $value='', $addttext='', $image='', $confirmtext='')
	$this->smarty->assign('nivo_css_preset_01',$this->CreateInputSubmit($id, 'preset_01', '','','modules/Showtime/images/presets_for_nivoslider00.png' ));
	$this->smarty->assign('nivo_css_preset_02',$this->CreateInputSubmit($id, 'preset_02', '','','modules/Showtime/images/presets_for_nivoslider01.png' ));
	$this->smarty->assign('nivo_css_preset_03',$this->CreateInputSubmit($id, 'preset_03', '','','modules/Showtime/images/presets_for_nivoslider02.png' ));
	$this->smarty->assign('nivo_css_preset_04',$this->CreateInputSubmit($id, 'preset_04', '','','modules/Showtime/images/presets_for_nivoslider04.png' ));


	//edit captoin css
	//check if have alredy CSS template for this show
	$caption_css = $this->GetTemplate("CaptionCSS_Schow_".$showid);
	if (!$caption_css){ //get default
		$caption_css =  $this->GetTemplate('nivoslider_default_caption_css');
	}	
	$this->smarty->assign('label_caption_css',$this->Lang('editshow_caption_css'));
	$this->smarty->assign('template_input',	$this->CreateTextArea(false,$id,$caption_css,'caption_css','','caption_css','','','20','','','','style="width:400px;"'));
	//pass this for example
	$cssstring = showtime_CSS_NIVO::_Create($this,$showid,true);
	$this->smarty->assign('stt_cssstring',$cssstring);
?>