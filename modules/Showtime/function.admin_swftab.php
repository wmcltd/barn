<?php					
	$smarty->assign('edit_animationtype', 
		$this->CreateInputRadioGroup($id,"st_animationtype",
		array('<img src="../modules/Showtime/images/swfobject_icon.jpg" />'=>"swfobject",
			  '<img src="../modules/Showtime/images/jQuery_icon.jpg" />'=>"jQuery",
			  '<img src="../modules/Showtime/images/nivoslider_icon.jpg" />'=>"nivoslider"),
		'swfobject','','<br /><br /><br />'));

			//labels and comments
			$this->smarty->assign('basic',$this->Lang('editshow_basic'));
			$this->smarty->assign('label_width',$this->Lang('editshow_width'));
			$this->smarty->assign('label_height',$this->Lang('editshow_height'));
			$this->smarty->assign('label_scaling',$this->Lang('editshow_scaling'));
			$this->smarty->assign('label_animationtype',$this->Lang('animationtype'));
			$this->smarty->assign('animation_info',$this->Lang('animation_info'));
			$this->smarty->assign('label_slide_options',$this->Lang('editshow_slide_options'));
			$this->smarty->assign('shuffle_onoff',$this->Lang('editshow_shuffle_onoff'));
			$this->smarty->assign('auto_onoff',$this->Lang('editshow_auto_onoff'));
			$this->smarty->assign('label_transition',$this->Lang('editshow_transition'));
			$this->smarty->assign('label_trans_eas',$this->Lang('editshow_trans_eas'));
			$this->smarty->assign('label_rotation',$this->Lang('editshow_rotation'));
			$this->smarty->assign('label_transitiontime',$this->Lang('editshow_transitiontime'));
			$this->smarty->assign('label_slide_bg',$this->Lang('editshow_slide_bg'));

			$this->smarty->assign('text_options',$this->Lang('editshow_text_options'));
			$this->smarty->assign('label_show_title',$this->Lang('editshow_show_title'));
			$this->smarty->assign('label_show_comment',$this->Lang('editshow_show_comment'));
			$this->smarty->assign('label_bg_text',$this->Lang('editshow_bg_text'));
			$this->smarty->assign('label_text_bgcolor',$this->Lang('editshow_text_bgcolor'));
			$this->smarty->assign('label_text_color',$this->Lang('editshow_text_color'));
			$this->smarty->assign('label_font_type',$this->Lang('editshow_font_type'));
			$this->smarty->assign('label_title_size',$this->Lang('editshow_title_size'));
			$this->smarty->assign('label_comment_size',$this->Lang('editshow_comment_size'));



			$this->smarty->assign('st_width',$this->CreateInputText($id,'st_width',$showinfo['st_width'],5,5));
			$this->smarty->assign('st_height',$this->CreateInputText($id,'st_height',$showinfo['st_height'],5,5));


			$smarty->assign('st_scale', 
				$this->CreateInputRadioGroup($id,"st_scale",
				array('<img src="../modules/Showtime/images/sc_noscale.png" /> '.$this->Lang('editshow_noscale')=>"noscale",
					  '<img src="../modules/Showtime/images/sc_showall.png" /> '.$this->Lang('editshow_showall')=>"showall",
					  '<img src="../modules/Showtime/images/sc_exactfit.png" /> '.$this->Lang('editshow_exact')=>"exactfit",
					  '<img src="../modules/Showtime/images/sc_noborder.png" /> '.$this->Lang('editshow_fit')=>"noborder"),
				$showinfo['st_scale'],'','<br />'));



			$keyvalues=array();
			$keyvalues['window']='window';
			$keyvalues['opaque']='opaque';
			$keyvalues['transparent']='transparent';
			$keyvalues['direct']='direct';
			$keyvalues['gpu']='gpu';
			$this->smarty->assign('st_wmode',
			$this->CreateInputDropdown($id, 'st_wmode',$keyvalues,-1, $showinfo['st_wmode'], $addttext=''));

			$hiddenfield .= $this->CreateInputHidden($id,"st_commentpos",$showinfo['st_commentpos']);

			$keyvalues=array();
			$keyvalues['Blur']='Blur';
			$keyvalues['Fade']='Fade';
			$keyvalues['Flash']='Flash';
			$keyvalues['ZoomIn']='ZoomIn';
			$keyvalues['ZoomOut']='ZoomOut';
			$keyvalues['SlideDown']='SlideDown';
			$keyvalues['SlideUp']='SlideUp';
			$keyvalues['SlideLeft']='SlideLeft';
			$keyvalues['SlideRight']='SlideRight';
			$keyvalues['WipeH']='WipeH';
			$keyvalues['WipeV']='WipeV';
			$keyvalues['FlipH']='FlipH';
			$keyvalues['FlipV']='FlipV';
			$keyvalues['Flip']='Flip';
			$keyvalues['panandzoom']='KenBurns'; 
			//see if Value is acceptable
			if (in_array($showinfo['st_transition'],$keyvalues)){
				$this->smarty->assign('st_transition',
				$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,$showinfo['st_transition'], $addttext=''));
			}else{
				$this->smarty->assign('st_transition',
				$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,'Blur', $addttext=''));
				$showinfo['st_transition']='Blur';
			}			
			
			$keyvalues=array();
			$keyvalues['Elastic']='Elastic';
			$keyvalues['Bounce']='Bounce';
			$keyvalues['Linear']='Linear';
			$keyvalues['Circular']='Circular';
			$keyvalues['Cubic']='Cubic';
			$keyvalues['Quadratic']='Quadratic';
			$keyvalues['Quintic']='Quintic';
			$keyvalues['Quartic']='Quartic';
			$keyvalues['Sine']='Sine';
			$keyvalues['Exponential']='Exponential';
			$keyvalues['Back']='Back';			
			$this->smarty->assign('st_easeFunc',
			$this->CreateInputDropdown($id, 'st_easeFunc',$keyvalues,-1,$showinfo['st_easeFunc'], $addttext=''));
			
			$keyvalues=array();
			$keyvalues['EaseNone']='EaseNone';
			$keyvalues['EaseOut']='EaseOut';
			$keyvalues['EaseIn']='EaseIn';
			$keyvalues['EaseInOut']='EaseInOut';
			$this->smarty->assign('st_ease',
			$this->CreateInputDropdown($id, 'st_ease',$keyvalues,-1, $showinfo['st_ease'], $addttext=''));

			
			$this->smarty->assign('st_rotatetime',$this->CreateInputText($id,'st_rotatetime',$showinfo['st_rotatetime'],5,5));
			$this->smarty->assign('st_transitiontime',$this->CreateInputText($id,'st_transitiontime',$showinfo['st_transitiontime'],5,5));
			$this->smarty->assign('st_bgcolor',$this->CreateInputText($id,'st_bgcolor',$showinfo['st_bgcolor'],7,7,'class="hello"'));
			$this->smarty->assign('st_showtext',$this->CreateInputCheckbox($id,'st_showtext','true',$showinfo['st_showtext']));
			$this->smarty->assign('st_showcomment',$this->CreateInputCheckbox($id,'st_showcomment','true',$showinfo['st_showcomment']));
			$this->smarty->assign('st_showalt',$this->CreateInputCheckbox($id,'st_showalt','true',$showinfo['st_showalt']));
			$this->smarty->assign('st_textbgcolor',$this->CreateInputText($id,'st_textbgcolor',$showinfo['st_textbgcolor'],7,7));
			$this->smarty->assign('st_textcolor',$this->CreateInputText($id,'st_textcolor',$showinfo['st_textcolor'],7,7));
			
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
			
			$keyvalues=array();
			$keyvalues['8']='8';
			$keyvalues['9']='9';
			$keyvalues['10']='10';
			$keyvalues['12']='12';
			$keyvalues['14']='14';
			$keyvalues['16']='16';
			$keyvalues['18']='18';
			$keyvalues['20']='20';
			$keyvalues['22']='22';
			$keyvalues['24']='24';
			$keyvalues['26']='26';
			$keyvalues['28']='28';
			$keyvalues['30']='30';
			$keyvalues['32']='32';
			$keyvalues['34']='34';
			$keyvalues['36']='36';
			$keyvalues['38']='38';
			$keyvalues['40']='40';
			$keyvalues['42']='42';
			$keyvalues['44']='44';
			$keyvalues['46']='46';
			$keyvalues['48']='48';
			$keyvalues['50']='50';
			$keyvalues['52']='52';
			$keyvalues['54']='54';
			$keyvalues['56']='56';
			$keyvalues['58']='58';
			$keyvalues['60']='60';
			$keyvalues['65']='65';
			$keyvalues['70']='70';
			$keyvalues['75']='75';
			$keyvalues['80']='80';
			$this->smarty->assign('st_titlesize',
				$this->CreateInputDropdown($id, 'st_titlesize',$keyvalues,-1,$showinfo['st_titlesize'], $addttext=''));
			$this->smarty->assign('st_textsize',
				$this->CreateInputDropdown($id, 'st_textsize',$keyvalues,-1,$showinfo['st_textsize'], $addttext=''));
			
			// we need clean values for our example
			$this->smarty->assign('stt_rotatetime',$showinfo['st_rotatetime']);
			$this->smarty->assign('stt_transition',$showinfo['st_transition']);
			$this->smarty->assign('stt_transitiontime',$showinfo['st_transitiontime']);
			$this->smarty->assign('stt_scale',$showinfo['st_scale']);
			$this->smarty->assign('stt_wmode',$showinfo['st_wmode']);
			$this->smarty->assign('stt_bgcolor',$showinfo['st_bgcolor']);
			$this->smarty->assign('showidvalue',$showid);		
			$this->smarty->assign('stt_easeFunc',$showinfo['st_easeFunc'].$showinfo['st_ease']);
			$this->smarty->assign('stt_autoplay',$showinfo['st_autoplay']);
			$this->smarty->assign('stt_showcontrols',$showinfo['st_showcontrols']);
			$this->smarty->assign('stt_showcontrolssub',$showinfo['st_showcontrolssub']);
			$this->smarty->assign('stt_textbgcolor',$showinfo['st_textbgcolor']);
			$this->smarty->assign('stt_showtext',$showinfo['st_showtext']);
			$this->smarty->assign('stt_showcomment',$showinfo['st_showcomment']);
			$this->smarty->assign('stt_textcolor',$showinfo['st_textcolor']);
			$this->smarty->assign('stt_textsize',$showinfo['st_textsize']);
			$this->smarty->assign('stt_titlesize',$showinfo['st_titlesize']);
			$this->smarty->assign('stt_showalt',$showinfo['st_showalt']);
			$this->smarty->assign('stt_shuffle',$showinfo['st_shuffle']);

			//set textoptions
			switch ($showinfo['st_fonttype']){
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
		
			$this->smarty->assign('st_shuffle',$this->CreateInputCheckbox($id,'st_shuffle','true',$showinfo['st_shuffle']));
			$hiddenfield .= $this->CreateInputHidden($id,'st_navbut',$showinfo['st_navbut']);
			
			
			//control options
			$this->smarty->assign('label_nav_controls',$this->Lang('editshow_nav_controls'));
			$this->smarty->assign('controls_onoff',$this->Lang('editshow_controls_onoff'));
			$this->smarty->assign('controls_onoff_warning',$this->Lang('editshow_controls_onoff_warning'));
			$this->smarty->assign('label_controltypes',$this->Lang('editshow_controltypes'));
			
			$this->smarty->assign('st_autoplay',$this->CreateInputCheckbox($id,'st_autoplay','true',$showinfo['st_autoplay']));
			$this->smarty->assign('st_showcontrols',$this->CreateInputCheckbox($id,'st_showcontrols','true',$showinfo['st_showcontrols']));
			
			$this->smarty->assign('showcontrolssub',
				'<table>
					<tr>
						<td>'.$this->CreateInputCheckbox($id,'st_control_left',substr($showinfo['st_showcontrolssub'],0,1),'1').'</td>
						<td><img src="../modules/Showtime/images/control_left.png" /></td>
						<td>'.$this->Lang('editshow_control_left').'</td>
					</tr>
					<tr>
						<td>'.$this->CreateInputCheckbox($id,'st_control_fullscreen',substr($showinfo['st_showcontrolssub'],1,1),'2').'</td>
						<td><img src="../modules/Showtime/images/control_fullscreen.png" /></td>
						<td>toggle fullscreen <br />
						<span style="color:#bb2222;">'.$this->Lang('editshow_control_fullscr').'</span> </td>
					</tr>
					<tr>
						<td>'.$this->CreateInputCheckbox($id,'st_control_pause',substr($showinfo['st_showcontrolssub'],2,1),'3').'</td>
						<td><img src="../modules/Showtime/images/control_pause.png" /></td>
						<td>play / pause <br />
						<span style="color:#bb2222;">'.$this->Lang('editshow_control_fullscr').'</span></td>
					</tr>
					<tr>
						<td>'.$this->CreateInputCheckbox($id,'st_control_right',substr($showinfo['st_showcontrolssub'],3,1),'4').'</td>
						<td><img src="../modules/Showtime/images/control_right.png" /></td>
						<td>'.$this->Lang('editshow_control_right').'</td>
					</tr>
				</table>'
			);
			
			$hiddenfield .= $this->CreateInputHidden($id,'st_navbut',$showinfo['st_navbut']);

			// navigation buttons configuration (mostly CSS settings) (Hide these now because we'r in SWFsettings) 
			$hiddenfield .= $this->CreateInputHidden($id,'st_navbut',$showinfo['st_navbut']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_bordercolor',$showinfo['st_nav_bordercolor']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_bordersize',$showinfo['st_nav_bordersize']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_radius',$showinfo['st_nav_radius']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_bgcolor',$showinfo['st_nav_bgcolor']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_bgactivecolor',$showinfo['st_nav_bgactivecolor']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_textcolor',$showinfo['st_nav_textcolor']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_showtext',$showinfo['st_nav_showtext']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_size',$showinfo['st_nav_size']);
			$hiddenfield .= $this->CreateInputHidden($id,"st_nav_pos",$showinfo['st_nav_pos']);
			$hiddenfield .= $this->CreateInputHidden($id,'st_nav_padding',$showinfo['st_nav_padding']);

?>