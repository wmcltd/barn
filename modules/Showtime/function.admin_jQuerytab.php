<?php

/* --------------------------------------------------------------------------------------------------------
	Build example in Admin panel
-----------------------------------------------------------------------------------------------------------*/
	//recalculate nav textsize and button size from (st_nav_size) and (st_nav_showtext)
	//textsize is always 50% from nav_size
	if ($showinfo['st_nav_showtext']=='true'){
		$stt_nav_textsize = ceil($showinfo['st_nav_size'] / 2);
		$stt_nav_vmargin_text= ceil(($showinfo['st_nav_size'] - $stt_nav_textsize)/2);
		$stt_nav_hmargin_text= ceil(($showinfo['st_nav_size'] - ceil($stt_nav_textsize / 2))/2);
	}else{
		$stt_nav_textsize = 0;
		$stt_nav_vmargin_text= ceil($showinfo['st_nav_size']/2);
		$stt_nav_hmargin_text= $stt_nav_vmargin_text;
	}

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
	$this->smarty->assign('stt_showcontrolssub',$showinfo['st_showcontrolssub']);
	$this->smarty->assign('stt_textbgcolor',($showinfo['st_showalt']=='false')?'':$showinfo['st_textbgcolor']);
	$this->smarty->assign('stt_showtext', $showinfo['st_showtext']);
	$this->smarty->assign('stt_showcomment',$showinfo['st_showcomment']);
	$this->smarty->assign('stt_showalt',$showinfo['st_showcomment']);
	$this->smarty->assign('stt_textcolor',$showinfo['st_textcolor']);
	$this->smarty->assign('stt_textsize',$showinfo['st_textsize']);
	$this->smarty->assign('stt_titlesize',$showinfo['st_titlesize']);
	$this->smarty->assign('stt_shuffle',$showinfo['st_shuffle']);
	$this->smarty->assign('stt_navbut',$showinfo['st_navbut']);
	$this->smarty->assign('stt_nav_bordercolor',$showinfo['st_nav_bordercolor']);
	$this->smarty->assign('stt_nav_bordersize',$showinfo['st_nav_bordersize']);
	$this->smarty->assign('stt_nav_radius',$showinfo['st_nav_radius']);
	$this->smarty->assign('stt_nav_bgcolor',$showinfo['st_nav_bgcolor']);
	$this->smarty->assign('stt_nav_bgactivecolor',$showinfo['st_nav_bgactivecolor']);
	$this->smarty->assign('stt_nav_textcolor',$showinfo['st_nav_textcolor']);
	$this->smarty->assign('stt_nav_showtext',$showinfo['st_nav_showtext']);
	$this->smarty->assign('stt_nav_textsize',$stt_nav_textsize);
	$this->smarty->assign('stt_nav_vmargin_text',$stt_nav_vmargin_text);
	$this->smarty->assign('stt_nav_hmargin_text',$stt_nav_hmargin_text);
	$this->smarty->assign('stt_nav_size',$showinfo['st_nav_size']);
	$this->smarty->assign('stt_nav_pos',$showinfo['st_nav_pos']);
	$this->smarty->assign('stt_nav_padding',$showinfo['st_nav_padding']);
	$this->smarty->assign('stt_pauseonhover',$showinfo['st_pauseonhover']);
        
	$cssstring = showtime_CSS_jQuery::_Create($showid,true);
	$this->smarty->assign('stt_cssstring',$cssstring);



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

	//image scaling
	$smarty->assign('st_scale', 
	$this->CreateInputRadioGroup($id,"st_scale",
	array('<img src="../modules/Showtime/images/sc_noscale.png" /> '.$this->Lang('editshow_noscale')=>"noscale",
		  '<img src="../modules/Showtime/images/sc_showall.png" /> '.$this->Lang('editshow_showall')=>"showall",
		  '<img src="../modules/Showtime/images/sc_exactfit.png" /> '.$this->Lang('editshow_exact')=>"exactfit",
		  '<img src="../modules/Showtime/images/sc_noborder.png" /> '.$this->Lang('editshow_fit')=>"noborder"),
	$showinfo['st_scale'],'','<br />'));
	$this->smarty->assign('label_scaling',$this->Lang('editshow_scaling'));

	//animatie type
	$smarty->assign('edit_animationtype', 
		$this->CreateInputRadioGroup($id,"st_animationtype",
		array('<img src="../modules/Showtime/images/swfobject_icon.jpg" />'=>"swfobject",
			  '<img src="../modules/Showtime/images/jQuery_icon.jpg" />'=>"jQuery",
			  '<img src="../modules/Showtime/images/nivoslider_icon.jpg" />'=>"nivoslider"),
		'jQuery','','<br /><br /><br />'));
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

	// Transition type
	$keyvalues=array('none'=>'none','blindX'=>'blindX','blindY'=>'blindY','blindZ'=>'blindZ','cover'=>'cover','curtainX'=>'curtainX',
		'curtainY'=>'curtainY','fade'=>'fade','fadeZoom'=>'fadeZoom','growX'=>'growX','growY'=>'growY','scrollUp'=>'scrollUp',
		'scrollDown'=>'scrollDown','scrollLeft'=>'scrollLeft','scrollRight'=>'scrollRight','scrollHorz'=>'scrollHorz',
		'scrollVert'=>'scrollVert','slideX'=>'slideX','slideY'=>'slideY','toss'=>'toss','turnUp'=>'turnUp','turnDown'=>'turnDown',
		'turnLeft'=>'turnLeft','turnRight'=>'turnRight','uncover'=>'uncover','wipe'=>'wipe','zoom'=>'zoom');
	//see if Value is acceptable
	if (in_array($showinfo['st_transition'],$keyvalues)){
		$this->smarty->assign('st_transition',
		$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,$showinfo['st_transition'], $addttext=''));
	}else{
		$this->smarty->assign('st_transition',
		$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,'none', $addttext=''));
		$showinfo['st_transition']='none';
	}
	$this->smarty->assign('label_transition',$this->Lang('editshow_transition'));

	// Transition and rotation timers
	$this->smarty->assign('st_rotatetime',$this->CreateInputText($id,'st_rotatetime',$showinfo['st_rotatetime'],5,5));
	$this->smarty->assign('st_transitiontime',$this->CreateInputText($id,'st_transitiontime',$showinfo['st_transitiontime'],5,5));
	$this->smarty->assign('label_rotation',$this->Lang('editshow_rotation'));
	$this->smarty->assign('label_transitiontime',$this->Lang('editshow_transitiontime'));

	// Slide Background color
	$this->smarty->assign('st_bgcolor',$this->CreateInputText($id,'st_bgcolor',$showinfo['st_bgcolor'],7,7,'class="hello"'));
	$this->smarty->assign('label_slide_bg',$this->Lang('editshow_slide_bg'));
	$this->smarty->assign('slide_bg_info',$this->Lang('editshow_slide_bg_info'));

	// Pause on hover setting
	$this->smarty->assign('st_pauseonhover',$this->CreateInputCheckbox($id,'st_pauseonhover','true',$showinfo['st_pauseonhover']));
	$this->smarty->assign('label_pauseonhover',$this->Lang('editshow_pauseonhover'));

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

	//show background tekst
	$this->smarty->assign('st_showalt',$this->CreateInputCheckbox($id,'st_showalt','true',$showinfo['st_showalt']));
	$this->smarty->assign('label_bg_text',$this->Lang('editshow_bg_text'));

	//tekst bachground color
	$this->smarty->assign('st_textbgcolor',$this->CreateInputText($id,'st_textbgcolor',$showinfo['st_textbgcolor'],7,7));
	$this->smarty->assign('label_text_bgcolor',$this->Lang('editshow_text_bgcolor'));

	//tekst color
	$this->smarty->assign('st_textcolor',$this->CreateInputText($id,'st_textcolor',$showinfo['st_textcolor'],7,7));
	$this->smarty->assign('label_text_color',$this->Lang('editshow_text_color'));

	// Caption opacity
	$this->smarty->assign('st_captionopacity',$this->CreateInputText($id,'st_captionopacity',$showinfo['st_captionopacity'],5,5));
	$this->smarty->assign('label_captionopacity',$this->Lang('editshow_captionopacity'));


	//fonttype
	$keyvalues=array();
	$keyvalues['Verdana, Geneva, sans-serif']='verdana';
	$keyvalues['"Courier New", Courier, monospace']='courier';
	$keyvalues['Arial, Helvetica, sans-serif']='arial';
	$keyvalues['Tahoma, Geneva, sans-serif']='tahoma';
	$keyvalues['_sans, Helvetica, Arial']='sans';
	$keyvalues['"Times New Roman", Times, serif']='times ';
	$keyvalues['"MS Serif", "New York", serif']='serif';  
	$this->smarty->assign('st_fonttype',
		$this->CreateInputDropdown($id, 'st_fonttype',$keyvalues,-1,$showinfo['st_fonttype'], $addttext=''));
	$this->smarty->assign('label_font_type',$this->Lang('editshow_font_type'));

	//title and comment size
	$keyvalues=array('8'=>'8','9'=>'9','10'=>'10','12'=>'12','14'=>'14','16'=>'16','18'=>'18','20'=>'20','22'=>'22','24'=>'24','26'=>'26','28'=>'28','30'=>'30','32'=>'32','34'=>'34','36'=>'36','38'=>'38','40'=>'40','42'=>'42','44'=>'44','46'=>'46','48'=>'48','50'=>'50','52'=>'52','54'=>'54','56'=>'56','58'=>'58','60'=>'60','65'=>'65','70'=>'70','75'=>'75','80'=>'80');
	$this->smarty->assign('st_titlesize',
		$this->CreateInputDropdown($id, 'st_titlesize',$keyvalues,-1,$showinfo['st_titlesize'], $addttext=''));
	$this->smarty->assign('st_textsize',
		$this->CreateInputDropdown($id, 'st_textsize',$keyvalues,-1,$showinfo['st_textsize'], $addttext=''));
	$this->smarty->assign('label_title_size',$this->Lang('editshow_title_size'));
	$this->smarty->assign('label_comment_size',$this->Lang('editshow_comment_size'));

	//comment postion
	$smarty->assign('st_commentpos', 
		$this->CreateInputRadioGroup($id,"st_commentpos",
		array('<img src="../modules/Showtime/images/comments_top.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top",
			  '<img src="../modules/Showtime/images/comments_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"right",
			  '<img src="../modules/Showtime/images/comments_bottom.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom",
			  '<img src="../modules/Showtime/images/comments_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"left"),
		$showinfo['st_commentpos'],'','&nbsp;'));
	$this->smarty->assign('label_comment_pos',$this->Lang('editshow_comment_pos'));

	
	/* --------------------------------------------------------------------------------------------------------
	Navigation options
	-----------------------------------------------------------------------------------------------------------*/	
	$this->smarty->assign('st_navbut',$this->CreateInputCheckbox($id,'st_navbut','true',$showinfo['st_navbut']));
	// navigation buttons configuration (mostly CSS settings)
	$this->smarty->assign('settings_nav',$this->Lang('editshow_settings_nav'));
	$this->smarty->assign('choose_presets',$this->Lang('editshow_choose_presets'));
	$this->smarty->assign('bar_onoff',$this->Lang('editshow_bar_onoff'));
	$this->smarty->assign('border_color',$this->Lang('editshow_border_color'));
	$this->smarty->assign('border_size',$this->Lang('editshow_border_size'));
	$this->smarty->assign('border_rad',$this->Lang('editshow_border_rad'));
	$this->smarty->assign('bg_color',$this->Lang('editshow_bg_color'));
	$this->smarty->assign('bg_acolor',$this->Lang('editshow_bg_acolor'));
	$this->smarty->assign('text_onoff',$this->Lang('editshow_text_onoff'));
	$this->smarty->assign('text_color',$this->Lang('editshow_text_color'));
	$this->smarty->assign('button_size',$this->Lang('editshow_button_size'));
	$this->smarty->assign('position',$this->Lang('editshow_position'));
	$this->smarty->assign('margin',$this->Lang('editshow_margin'));
	
	$this->smarty->assign('st_navbut',$this->CreateInputCheckbox($id,'st_navbut','true',$showinfo['st_navbut']));
	$this->smarty->assign('st_nav_bordercolor',$this->CreateInputText($id,'st_nav_bordercolor',$showinfo['st_nav_bordercolor'],7,7));
	$this->smarty->assign('st_nav_bordersize',$this->CreateInputText($id,'st_nav_bordersize',$showinfo['st_nav_bordersize'],5,5));
	$this->smarty->assign('st_nav_radius',$this->CreateInputText($id,'st_nav_radius',$showinfo['st_nav_radius'],5,5));
	$this->smarty->assign('st_nav_bgcolor',$this->CreateInputText($id,'st_nav_bgcolor',$showinfo['st_nav_bgcolor'],7,7));
	$this->smarty->assign('st_nav_bgactivecolor',$this->CreateInputText($id,'st_nav_bgactivecolor',$showinfo['st_nav_bgactivecolor'],7,7));
	$this->smarty->assign('st_nav_textcolor',$this->CreateInputText($id,'st_nav_textcolor',$showinfo['st_nav_textcolor'],7,7));
	$this->smarty->assign('st_nav_showtext',$this->CreateInputCheckbox($id,'st_nav_showtext','true',$showinfo['st_nav_showtext']));
	$this->smarty->assign('st_nav_size',$this->CreateInputText($id,'st_nav_size',$showinfo['st_nav_size'],5,5));
	$smarty->assign('st_nav_pos', 
		$this->CreateInputRadioGroup($id,"st_nav_pos",
		array('<img src="../modules/Showtime/images/nav_bottom_right.png" />'=>"bottom_right",
			  '<img src="../modules/Showtime/images/nav_bottom_left.png" />'=>"bottom_left",
			  '<img src="../modules/Showtime/images/nav_top_right.png" />'=>"top_right",
			  '<img src="../modules/Showtime/images/nav_top_left.png" />'=>"top_left"),
		$showinfo['st_nav_pos'],'',''));
	$this->smarty->assign('st_nav_padding',$this->CreateInputText($id,'st_nav_padding',$showinfo['st_nav_padding'],5,5));
	$smarty->assign('st_nav_presets', 
		$this->CreateInputRadioGroup($id,"st_nav_presets",
		array('<img src="../modules/Showtime/images/nav_presets_01.png" />'=>"1",
			  '<img src="../modules/Showtime/images/nav_presets_02.png" />'=>"2",
			  '<img src="../modules/Showtime/images/nav_presets_03.png" />'=>"3",
			  '<img src="../modules/Showtime/images/nav_presets_04.png" />'=>"4",
			  '<img src="../modules/Showtime/images/nav_presets_05.png" />'=>"5",
			  '<img src="../modules/Showtime/images/nav_presets_06.png" />'=>"6"),
		$showinfo['st_nav_pos'],'','<br />'));
					
?>