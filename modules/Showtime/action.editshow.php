<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$rooturl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']=='on')?$config['ssl_url']:$config['root_url'];
$showid = (isset($params['showid']) ? $params['showid'] : '');
$showname = (isset($params['showname']) ? $params['showname'] : '');
$shownumber = (isset($params['shownumber']) ? $params['shownumber'] : '');

if (isset($params['cancel']))
	$this->Redirect($id, 'defaultadmin', $returnid,array('showid'=>$showid));

$tab='prefs';
$hiddenfield='';
$errorfound =false;


//set all params to default
if (isset($params['default'])){
	if ($showid!='' && $showname!=''){	
		$properties = showtime_data::_getdefaultvalues($params['st_animationtype']);
		showtime_data::_updateshow($properties, $showid);
		//load default caption_css for showid
		$caption_css =  $this->GetTemplate('nivoslider_default_caption_css');
		$this->SetTemplate("CaptionCSS_Schow_".$showid,$caption_css);

		//write CSS file
		switch($params['st_animationtype']){
			case "swfobject":
				showtime_CSS_SWF::_Create($showid);
				break;
			case "nivoslider":
				showtime_CSS_NIVO::_Create($this,$showid);
				break;
			default:
				showtime_CSS_jQuery::_Create($showid);
		}	
		$tab="prefs";
	}
}


//submit or apply button pressed
if (isset($params['submit']) || isset($params['apply']) || isset($params['preset_01_x']) || isset($params['preset_02_x']) || isset($params['preset_03_x']) || isset($params['preset_04_x']) ){
	if ($showid!='' && $showname!=''){
		//see if we need to change Shownumber
		//check if we have a diferent number
            
		if ($showid  != $shownumber){
			//see if we have a valid number maybe number is already in us by other show's
			if ( showtime_data::_Getshowinfo($shownumber)){
				//error this number is already in use!
				echo $this->ShowErrors($this->Lang('editshow_error_showid'));
				$errorfound = true;
				
			}else{  //change the number	
                                showtime_data::_Updatepicture(array('show_id'=>$shownumber), '', 'show_id='.$showid);
			}
		}
                showtime_data::_updateshow(array('show_name'=>$showname,'show_id'=>$shownumber), $showid);
                
		
		//save caption_css template
		if ($params['st_animationtype'] == 'nivoslider'){

			//save csspresets		
			if (isset($params['preset_01_x'])){
					$params['caption_css'] = $this->GetTemplate('nivoslider_default_caption_css');
			}
			if (isset($params['preset_02_x'])){
					$params['caption_css'] = $this->GetTemplate('nivoslider_preset_caption_css02');
			}
			if (isset($params['preset_03_x'])){
					$params['caption_css'] = $this->GetTemplate('nivoslider_preset_caption_css03');
			}
			if (isset($params['preset_04_x'])){
					$params['caption_css'] = $this->GetTemplate('nivoslider_preset_caption_css04');
			}

			/*
			if (!isset($params['caption_css'])){
				$params['caption_css'] = $this->GetTemplate('nivoslider_default_caption_css');
			}
			*/
			//see if we switched animationtype
			if ($params['oldanimationtype']<>$params['st_animationtype']){
				$caption_css =  $this->GetTemplate('nivoslider_default_caption_css');
				$this->SetTemplate("CaptionCSS_Schow_".$showid,$caption_css);
			}else{		
				$this->SetTemplate("CaptionCSS_Schow_".$showid,$params['caption_css']);
			}
		}
		
		
		
		
		// nav_presets
		if (isset($params['st_nav_presets'])){
			switch ($params['st_nav_presets']){
				case '1':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=2;
					$params['st_nav_radius']=0;
					$params['st_nav_bgcolor']='#6b6b6b';
					$params['st_nav_bgactivecolor']='#F79838';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=12;
					break;
				case '2':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=8;
					$params['st_nav_bgcolor']='#6b6b6b';
					$params['st_nav_bgactivecolor']='#BEABF7';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=16;
					break;
				case '3':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=1;
					$params['st_nav_radius']=3;
					$params['st_nav_bgcolor']='#CD2323';
					$params['st_nav_bgactivecolor']='#FD4B2B';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#FDFADE';
					$params['st_nav_size']=20;
					break;
				case '4':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#CCCCCC';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=10;
					$params['st_nav_bgcolor']='#EEEEEE';
					$params['st_nav_bgactivecolor']='#34D3F9';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=20;
					break;
				case '5':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#7D7D7D';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=12;
					$params['st_nav_bgcolor']='#FFFFFF';
					$params['st_nav_bgactivecolor']='#F79838';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#000000';
					$params['st_nav_size']=24;
					break;
				case '6':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#CCCCCC';
					$params['st_nav_bordersize']=2;
					$params['st_nav_radius']=5;
					$params['st_nav_bgcolor']='#CCCCCC';
					$params['st_nav_bgactivecolor']='#FFFFFF';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=18;
					break;
			}
		}

		//save showsettings
		$showprop = array();
		$showprop['st_animationtype']=isset($params['st_animationtype'])?$params['st_animationtype']:'swfobject';
		$showprop['st_height']=isset($params['st_height'])?$params['st_height']:320;
		$showprop['st_width']=isset($params['st_width'])?$params['st_width']:640;
		$showprop['st_rotatetime']=isset($params['st_rotatetime'])?$params['st_rotatetime']:5;
		$showprop['st_transitiontime']=isset($params['st_transitiontime'])?$params['st_transitiontime']:1;
		$showprop['st_transition']=$params['st_transition'];
		$showprop['st_easeFunc']=isset($params['st_easeFunc'])?$params['st_easeFunc']:'Linear';
		$showprop['st_ease']=isset($params['st_ease'])?$params['st_ease']:'easeOut';	
		$showprop['st_autoplay']=isset($params['st_autoplay'])?1:0;
		$showprop['st_showcontrols']=isset($params['st_showcontrols'])?1:0;
		$showprop['st_controlshide']=isset($params['st_controlshide'])?1:0;
		$showprop['st_captionopacity']=isset($params['st_captionopacity'])?$params['st_captionopacity']:'0.8';
		

		//read control settings
		if (isset($params['st_showcontrolssub'])){
			$showprop['st_showcontrolssub'] = $params['st_showcontrolssub'];
		}else{
			$showprop['st_showcontrolssub'] = isset($params['st_control_left'])?'1':'0';
			$showprop['st_showcontrolssub'] .= isset($params['st_control_fullscreen'])?'2':'0';
			$showprop['st_showcontrolssub'] .= isset($params['st_control_pause'])?'3':'0';
			$showprop['st_showcontrolssub'] .= isset($params['st_control_right'])?'4':'0';
		}

		$showprop['st_textbgcolor']=isset($params['st_textbgcolor'])?$params['st_textbgcolor']:'#000000';
		$showprop['st_showtext']=isset($params['st_showtext'])?1:0;
		$showprop['st_showcomment']=isset($params['st_showcomment'])?1:0;
		$showprop['st_showalt']=isset($params['st_showalt'])?1:0;
		$showprop['st_textcolor']=isset($params['st_textcolor'])?$params['st_textcolor']:'#eeeeee';
		$showprop['st_textsize']=isset($params['st_textsize'])?$params['st_textsize']:12;
		$showprop['st_titlesize']=isset($params['st_titlesize'])?$params['st_titlesize']:16;
		$showprop['st_fonttype']=isset($params['st_fonttype'])?$params['st_fonttype']:'sans';	
		$showprop['st_bgcolor']=isset($params['st_bgcolor'])?$params['st_bgcolor']:'#000000';
		$showprop['st_scale']=isset($params['st_scale'])?$params['st_scale']:'exactfit';
		$showprop['st_wmode']=isset($params['st_wmode'])?$params['st_wmode']:'window';
		$showprop['st_commentpos']=isset($params['st_commentpos'])?$params['st_commentpos']:'top';
		$showprop['st_shuffle']=isset($params['st_shuffle'])?1:0;		
		$showprop['st_navbut']=isset($params['st_navbut'])?1:0;		
		$showprop['st_nav_bordercolor']=isset($params['st_nav_bordercolor'])?$params['st_nav_bordercolor']:'#CCCCCC';
		$showprop['st_nav_bordersize']=isset($params['st_nav_bordersize'])?$params['st_nav_bordersize']:1;
		$showprop['st_nav_radius']=isset($params['st_nav_radius'])?$params['st_nav_radius']:0;
		$showprop['st_nav_bgcolor']=isset($params['st_nav_bgcolor'])?$params['st_nav_bgcolor']:'#EEEEEE';
		$showprop['st_nav_bgactivecolor']=isset($params['st_nav_bgactivecolor'])?$params['st_nav_bgactivecolor']:'#FFFFFF';
		$showprop['st_nav_textcolor']=isset($params['st_nav_textcolor'])?$params['st_nav_textcolor']:'#333333';
		$showprop['st_nav_showtext']=isset($params['st_nav_showtext'])?1:0;
		$showprop['st_nav_size']=isset($params['st_nav_size'])?$params['st_nav_size']:20;
		$showprop['st_nav_pos']=isset($params['st_nav_pos'])?$params['st_nav_pos']:'bottom_right';
		$showprop['st_nav_padding']=isset($params['st_nav_padding'])?$params['st_nav_padding']:5;
		$showprop['st_target']=isset($params['st_target'])?$params['st_target']:'_self';
		$showprop['st_link']=isset($params['st_link'])?$params['st_link']:'internal page';
		
		$showprop['st_theme']=isset($params['st_theme'])?$params['st_theme']:'default';
		$showprop['st_slices']=isset($params['st_slices'])?$params['st_slices']:15;
		$showprop['st_box_x']=isset($params['st_box_x'])?$params['st_box_x']:8;
		$showprop['st_box_y']=isset($params['st_box_y'])?$params['st_box_y']:4;
		$showprop['st_thumb_nav']=isset($params['st_thumb_nav'])?1:0;
		$showprop['st_start_slide']=isset($params['st_start_slide'])?$params['st_start_slide']:0;
		$showprop['st_pauseonhover']=isset($params['st_pauseonhover'])?1:0;

		//see if we switched animationtype
		if ($params['oldanimationtype']<>$params['st_animationtype']){
			$showprop = showtime_data::_getdefaultvalues($params['st_animationtype']);
                        $showprop['st_height']=isset($params['st_height'])?$params['st_height']:320;
                        $showprop['st_width']=isset($params['st_width'])?$params['st_width']:640;
                        $showprop['st_animationtype']=isset($params['st_animationtype'])?$params['st_animationtype']:'swfobject';
		}		
		showtime_data::_updateshow($showprop, $showid);

		//write CSS file
		switch($showprop['st_animationtype']){
			case "swfobject":
				showtime_CSS_SWF::_Create($showid);
				break;
			case "nivoslider":
				showtime_CSS_NIVO::_Create($this,$showid);
				break;
			default:
				showtime_CSS_jQuery::_Create($showid);
		}	

		
		if (isset($params['submit']) && (!$errorfound)){
			$params = array('module_message' => $this->Lang('editshow_options_updated'));
			$this->Redirect($id, 'defaultadmin', $returnid, $params);
		}
		if (isset($params['apply'])){
			$tab="prefs";
		}
	}else{
		echo $this->ShowErrors($this->Lang('error_nonamegiven'));	
	}

}






// show Form if we have showid
//===============================================================================================>START FORM
if ($showid != ''){
	
	$showinfo =  showtime_data::_Getshowinfo($showid);

	$showinfo['st_autoplay']=($showinfo['st_autoplay'])?'true':'false';	
	$showinfo['st_showcontrols'] = ($showinfo['st_showcontrols'])?'true':'false'; 	
	$showinfo['st_controlshide'] = ($showinfo['st_controlshide'])?'true':'false'; 	
	$showinfo['st_showtext'] = ($showinfo['st_showtext'])?'true':'false'; 
	$showinfo['st_showcomment'] = ($showinfo['st_showcomment'])?'true':'false'; 
	$showinfo['st_showalt'] = ($showinfo['st_showalt'])?'true':'false'; 
	$showinfo['st_shuffle'] = ($showinfo['st_shuffle'])?'true':'false'; 
	$showinfo['st_navbut'] = ($showinfo['st_navbut'])?'true':'false'; 		
	$showinfo['st_nav_showtext'] = ($showinfo['st_nav_showtext'])?'true':'false'; 
	
	$showinfo['st_theme'] = ($showinfo['st_theme'])? $showinfo['st_theme']:'default';
	$showinfo['st_thumb_nav']= ($showinfo['st_thumb_nav'])?'true':'false'; 
	$showinfo['st_pauseonhover']= ($showinfo['st_pauseonhover'])?'true':'false'; 


				
	/* --------------------------------------------------------------------------------------------------------
		Tabheaders
	-----------------------------------------------------------------------------------------------------------*/				
	$this->smarty->assign('StartTabH',  $this->StartTabHeaders());
	$this->smarty->assign('EndTabH',  $this->EndTabHeaders());
	$this->smarty->assign('StartTabC',  $this->StartTabContent());

	$this->smarty->assign('StartTab_gen',  $this->StartTab('general', $params));
	$this->smarty->assign('Tabh_01', $this->SetTabHeader('general',$this->Lang('editshow_tabname'),('general' == $tab)));
	$this->smarty->assign('EndTab', $this->EndTab());
	$this->smarty->assign('EndTabC', $this->EndTabContent());
	if ($this->CheckPermission('Use Showtime Prefs')){
		$this->smarty->assign('permission', 1);	
		$this->smarty->assign('Tabh_02', $this->SetTabHeader('prefs',$this->Lang('editshow_tabprefs'),('prefs' == $tab)));
		$this->smarty->assign('StartTab_pref', $this->StartTab('prefs', $params));
		$this->smarty->assign('Tabh_03', $this->SetTabHeader('link',$this->Lang('editshow_taburl'),('link' == $tab)));
		$this->smarty->assign('StartTab_link',  $this->StartTab('link', $params));	

	}else{
		$this->smarty->assign('permission', 0);		
		$this->smarty->assign('Tabh_02', "");
	}

	/* --------------------------------------------------------------------------------------------------------
		Form
	-----------------------------------------------------------------------------------------------------------*/				
	$this->smarty->assign('FormStart',  $this->CreateFormStart($id, 'editshow', $returnid));
	$this->smarty->assign('FormEnd',$this->CreateFormEnd());	

	// Form Buttons
	$this->smarty->assign('submit',$this->CreateInputSubmit($id, 'submit', $this->lang('submit')));
	$this->smarty->assign('default',$this->CreateInputSubmit($id, 'default', $this->Lang('default')));
	$this->smarty->assign('cancel',$this->CreateInputSubmit($id, 'cancel', $this->lang('cancel')));
	$this->smarty->assign('apply',$this->CreateInputSubmit($id, 'apply', $this->lang('apply')));
	
	$this->smarty->assign('root_url', $rooturl);
	$this->smarty->assign('donation',$this->Lang('donation'));
	$this->smarty->assign('tab', $this->CreateInputHidden($id, 'tab', $tab, ''));
	
	/* --------------------------------------------------------------------------------------------------------
		Navigation buttons
	-----------------------------------------------------------------------------------------------------------*/				

	$this->smarty->assign('editslides', $this->CreateLink($id, 'addslides', $returnid, 
		'<img src="../modules/Showtime/images/slides.png" class="systemicon" title="'.$this->Lang('edit_slides').'">', 
		array('showid'=>$showid), '' , false, true, '').'&nbsp;'. $this->CreateLink($id, 'addslides', $returnid, 
		$this->Lang('edit_slides'), array('showid'=>$showid), '' , false, true, ''));

	$this->smarty->assign('addpicture',	"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;". $this->CreateLink($id, 'addpicture', $returnid, 
		'<img src="../modules/Showtime/images/add_picture.png" class="systemicon">', 
		array('showid'=>$showid), '', false, false, '') .' '.
		$this->CreateLink($id, 'addpicture', $returnid, $this->Lang('addpicture'), array('showid'=>$showid), '', false, false, 'class="pageoptions"'));
		
	$this->smarty->assign('backimage', "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;". $this->CreateLink($id, 'defaultadmin', $returnid, 
		'<img src="../modules/Showtime/images/edit_show.png" class="systemicon">', array('showid'=>$showid), '', false, false, '') .' '.
		$this->CreateLink($id, 'defaultadmin', $returnid, $this->Lang('back_to_admin'), array('showid'=>$showid), '', false, false, 'class="pageoptions"').
		'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Slidehow '.$showid.' ('.$showinfo['show_name'] . ')</strong>');

	
	/* --------------------------------------------------------------------------------------------------------
		TAB change name
	-----------------------------------------------------------------------------------------------------------*/
	$this->smarty->assign('nametext', $this->Lang('name'));
	$this->smarty->assign('nameinput', $this->CreateInputText($id, 'showname', $showinfo['show_name'], 30, 255));
	$this->smarty->assign('shownumber', $this->Lang('changeshownumber'));
	$this->smarty->assign('shownumberinput', $this->CreateInputText($id, 'shownumber', $showid, 6, 255));
	

	
/* --------------------------------------------------------------------------------------------------------
	TAB URL settings
-----------------------------------------------------------------------------------------------------------*/
	$keyvalues=array();
	$keyvalues['_self']='_self';
	$keyvalues['_blank']='_blank';
	$keyvalues['_parent']='_parent';
	$keyvalues['_top']='_top';
	$this->smarty->assign('st_target',
		$this->CreateInputDropdown($id, 'st_target',$keyvalues,-1,$showinfo['st_target'], $addttext=''));
		
	$keyvalues=array();
	$keyvalues[$this->Lang('editshow_intpage')]='internal page';
	$keyvalues[$this->Lang('editshow_extpage')]='external page';
	$keyvalues[$this->Lang('editshow_image')]='image';
	$this->smarty->assign('st_link',
		$this->CreateInputDropdown($id, 'st_link',$keyvalues,-1,$showinfo['st_link'], $addttext=''));
		
	$this->smarty->assign('linkoptions',$this->Lang('editshow_linko'));
	$this->smarty->assign('linkloc',$this->Lang('editshow_linkloc'));
	$this->smarty->assign('internalpage',$this->Lang('editshow_intpage'));
	$this->smarty->assign('internalpage_info',$this->Lang('editshow_intpage_info'));
	$this->smarty->assign('externalpage',$this->Lang('editshow_extpage'));
	$this->smarty->assign('externalpage_info',$this->Lang('editshow_extpage_info'));
	$this->smarty->assign('imagepage',$this->Lang('editshow_image'));
	$this->smarty->assign('imagepage_info',$this->Lang('editshow_image_info'));
	
	$this->smarty->assign('linktarget',$this->Lang('editshow_linktarget'));
	$this->smarty->assign('self_info',$this->Lang('editshow_self_info'));
	$this->smarty->assign('blank_info',$this->Lang('editshow_blank_info'));
	$this->smarty->assign('parent_info',$this->Lang('editshow_parent_info'));
	$this->smarty->assign('top_info',$this->Lang('editshow_top_info'));
	
	$this->smarty->assign('example_info',$this->Lang('editshow_example'));
	//save animationtype for later use
	$this->smarty->assign('hidden',$this->CreateInputHidden($id, 'showid', $showid, '').
			$this->CreateInputHidden($id, 'oldanimationtype', $showinfo['st_animationtype'], ''));
	



/* --------------------------------------------------------------------------------------------------------
	TAB Show options
-----------------------------------------------------------------------------------------------------------*/
	switch($showinfo['st_animationtype']){
		case "swfobject":
			include(dirname(__FILE__).'/function.admin_swftab.php');
			echo $this->ProcessTemplate('editshow_swf.tpl');
			break;
		case "nivoslider":
			include(dirname(__FILE__).'/function.admin_nivoslider.php');
			echo $this->ProcessTemplate('editshow_ns.tpl');
			break;
		default:
			include(dirname(__FILE__).'/function.admin_jQuerytab.php');
			echo $this->ProcessTemplate('editshow_jq.tpl');
	}
	

}else{ //ho showid found!
	$this->Redirect($id, 'defaultadmin', $returnid, $params);
}
?>
