<?php
if (!cmsms()) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$showname = (isset($params['showname']) ? $params['showname'] : '');
$row=array();
//if submit button is pressed
if (isset($params['submit'])){
	if ($showname != ""){
		if (isset($params['merge_from'])){
			if ($params['merge_from']=='0'){ //take default settings
				$showprop = showtime_data::_getdefaultvalues();
				$showprop['st_animationtype']='swfobject';
				$showprop['st_height']=320;
				$showprop['st_width']=640;
			}else{//read settings from database
				$showprop =showtime_data::_Getshowinfo($params['merge_from']);
				unset($showprop['show_id']);
			}
		}
	
		$show_id = $db->GenID(cms_db_prefix()."module_showtime_name_seq");	
		$showprop['show_name']= $showname;		
		showtime_data::_inputshow($showprop, $show_id);

		
		//write CSS file
		switch($showprop['st_animationtype']){
			case "swfobject":
				showtime_CSS_SWF::_Create($show_id);
				break;
			case "nivoslider":
				showtime_CSS_NIVO::_Create($this,$show_id);
				break;
			default:
				showtime_CSS_jQuery::_Create($show_id);
		}	
	
			
		 //Update search index
		 $module =& $this->GetModuleInstance('Search');
		 if ($module != FALSE){
		     $module->AddWords($this->GetName(), $show_id, 'show', $showname);
		   }
		$params = array('showid' => $show_id, 'module_message' => $this->lang('showadded'));
		$this->Redirect($id, 'addslides', $returnid, $params);
	}else{
		echo $this->ShowErrors($this->Lang('error_nonamegiven'));	
	}
}


//if cancel button is pressed
if (isset($params['cancel'])){
	$this->Redirect($id, 'defaultadmin', $returnid, $params);
}

//start content 
$this->smarty->assign('nametext', $this->Lang('name'));
$this->smarty->assign('nameinput', $this->CreateInputText($id, 'showname', $showname, 30, 255));
$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->lang('submit')));
$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel', $this->lang('cancel')));
$this->smarty->assign('FormStart',  $this->CreateFormStart($id, 'addshow', $returnid));
$this->smarty->assign('FormEnd',$this->CreateFormEnd());

// enable merge settings from previous show's
$query = 'SELECT show_id, show_name, st_animationtype FROM '.cms_db_prefix().'module_showtime_name';
$result=$db->Execute($query);
$aantal= $result->RecordCount();
if ($aantal<>"0"){
	$keyvalues=array();
	$keyvalues[$this->Lang('addshow_default')]='0';
	while(!$result->EOF()){
		$fields=$result->fields;
		$keyvalues[$fields['show_name'].' ('.$fields['st_animationtype'].')']=$fields['show_id'];
		$result->MoveNext();
	}
	$this->smarty->assign('merge_settings',$this->Lang('addshow_settings')."<br /><br />".
				$this->CreateInputDropdown($id, 'merge_from',$keyvalues,-1,'0'));	
}else{
	$this->smarty->assign('merge_settings',$this->CreateInputHidden($id, 'merge_from','0'));
}

echo $this->ProcessTemplate('addshow.tpl');
?>