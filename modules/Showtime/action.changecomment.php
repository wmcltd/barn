<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}
$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '') $this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

if (isset($params['cancel'])) $this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

/* --------------------------------------------------------------------------------------------------------
	Save settigns
-----------------------------------------------------------------------------------------------------------*/
if (isset($params['submit'])){
	// Clear the site cache
	global $gCms;
	$contentops =& $gCms->GetContentOperations();
	$contentops->ClearCache();
	
	//read picture_url depending on what nature_url settings!
	if ($params['picture_url_nature'] == "internal page"){
		if(isset($params['internal_page_dropdown']) && $params['internal_page_dropdown']>0){
			$picture_url =$params['internal_page_dropdown']; 
		}else{
			$picture_url="";
		}
	}elseif ($params['picture_url_nature'] == "external page") {
            $picture_url = (empty($params['external_edit_input']))? 'http://':$params['external_edit_input'];
	}else{
		$picture_url="";
	}

	//make picture_url_nature empty if set to 'none'
	if ($pictureid!=''){
		//save it all
		$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_url=?, picture_url_target=?, picture_url_nature=?, comment=?, picture_name=? WHERE picture_id = ?';
		$db->Execute($query, array($picture_url,$params['picture_url_target'],$params['picture_url_nature'], $params['comment'], $params['title'],$pictureid));
		$params = array('showid' => $showid, 'message' => $this->Lang('changecomm_message'), 'active_tab' => 'general');
		$this->Redirect($id, 'addslides', $returnid, $params);
	}
}


/* --------------------------------------------------------------------------------------------------------
	Build form
-----------------------------------------------------------------------------------------------------------*/
if ($pictureid != ''){
	$pic = showtime_data::_Getpictureinfo($pictureid);
	if ($pic){
		// choose url nature	
		$pic['picture_url_nature']=($pic['picture_url_nature'])?$pic['picture_url_nature']:'none';
		$smarty->assign('cur_url_nature',$pic['picture_url_nature']);
	
		$keyvalues=array();
		$keyvalues['none']='none';
		$keyvalues[$this->Lang('editshow_intpage')]='internal page';
		$keyvalues[$this->Lang('editshow_extpage')]='external page';
		$keyvalues[$this->Lang('editshow_image')]='image';
		$this->smarty->assign('dropdown_url_nature', $this->CreateInputDropdown($id, 'picture_url_nature',$keyvalues,-1,$pic['picture_url_nature'], 'id="dropdown_url_nature"'));
		$contentops =& $gCms->GetContentOperations();
		$smarty->assign('internal_page_dropdown',$contentops->CreateHierarchyDropdown('', $pic['picture_url'],$id.'internal_page_dropdown'));	
		$smarty->assign('external_edit_input',$this->CreateInputText($id,'external_edit_input', $pic['picture_url'],80,255));
		$smarty->assign('image_link','('.$this->Lang('changecomm_linkimage').')');
		$smarty->assign('no_link','('.$this->Lang('changecomm_nolink').')');

		// choose Target settings
		$keyvalues=array('_self'=>'_self','_blank'=>'_blank','_parent'=>'_parent','_top'=>'_top');
		$this->smarty->assign('picture_url_target',	$this->CreateInputDropdown($id, 'picture_url_target',$keyvalues,-1,$pic['picture_url_target'], $addttext=''));
		$this->smarty->assign('linkttitle',$this->Lang('changecomm_linktitle'));

		//start form
		$this->smarty->assign('FormStart',$this->CreateFormStart($id, $params['action'], $returnid));	
		$this->smarty->assign('dropdown_title', $this->Lang('internal_link'));
	
		//make sure Cache 'll reload 
		$img= $config['image_uploads_path'].$pic['thumbnail_path'];
		$filemtime = filemtime($img);
		
		$this->smarty->assign('thumbnail', 
			'<a href="'.$config['image_uploads_url'].$pic['picture_path'].'"><img alt="" src="'.$config['image_uploads_url'].$pic['thumbnail_path']. '?'.$filemtime.'" /></a>');
		$this->smarty->assign('texttitle', $this->Lang('picture_name'));
		$this->smarty->assign('inputtitle', $this->CreateInputText($id, 'title', $pic['picture_name'], 50, 255));
                $this->smarty->assign('textcomment', $this->Lang('picture_descriptioin'));
		$this->smarty->assign('inputcomment',$this->CreateTextArea(true, $id, $pic['comment'], 'comment', '', '', '', '', '80', '5'));
		$this->smarty->assign('hidden', $this->CreateInputHidden($id, 'showid',$showid). 
										$this->CreateInputHidden($id, 'pictureid',$pictureid));		
		$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit',$this->Lang('submit')));
		$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel',$this->Lang('cancel')));		
		$this->smarty->assign('FormEnd', $this->CreateFormEnd());
		
		echo $this->ProcessTemplate('changecomment.tpl');
	}
}
?>
