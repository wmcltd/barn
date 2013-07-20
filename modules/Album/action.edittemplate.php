<?php

if (!isset($gCms)) exit;
if (isset($params['cancel'])) $this->Redirect($id, 'defaultadmin', $returnid);
if(! $this->CheckPermission( 'Use Album' ) ) exit;


$themeObject = $gCms->variables['admintheme'];
$templatename = (isset($params['templatename']) ? $params['templatename'] : '');
$query = 'SELECT metadata FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name = ?';
$metadata = $db->GetOne($query,array($templatename));
$newtemplatename = (isset($params['newtemplatename']) ? $params['newtemplatename'] : '');
$templatecontent = (isset($params['templatecontent']) ? $params['templatecontent'] : '');
$metadata = (isset($params['metadata']) ? $params['metadata'] : $metadata);

if (isset($params['submit']) || isset($params['apply']))
{
	if ($newtemplatename != "")
	{
		$error = false;
		if ($newtemplatename != $templatename)
		{
			if ($this->GetTemplate($newtemplatename) != '')
			{
				echo $themeObject->ShowErrors($this->Lang('errortemplatenameexists'));
				$newtemplatename = $templatename;
				$error = true;
			}
		}
		
		if (!$error)
		{
			$insert = TRUE;
			if( $templatename != '' )
			  {
			    $query = 'SELECT template_name FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name = ?';
			    $tmp = $db->GetOne($query,array($templatename));
			    if( $tmp )
			      {
				$insert = FALSE;
			      }
			  }
			if( $insert )
			  {
			    $query = 'INSERT INTO '.cms_db_prefix().'module_album_templateextra (template_name,metadata) VALUES (?,?)';
			    $dbr = $db->Execute($query,array($newtemplatename,$metadata));
			  }
			else
			  {
			    $query = 'UPDATE '.cms_db_prefix().'module_album_templateextra SET template_name = ?, metadata = ? WHERE template_name = ?';
			    $dbr = $db->Execute($query,array($newtemplatename,$metadata,$templatename));
			  }

			if( $templatename != '' ) $this->DeleteTemplate($templatename);
			$this->SetTemplate($newtemplatename, $templatecontent);
			if (isset($params['submit']))
			{
				$params = array('tab_message' => 'templatesaved', 'active_tab' => 'templates');
				$this->Redirect($id, 'defaultadmin', $returnid, $params);
			} 
			else {
				$templatename = $newtemplatename;
			}
		}

	}
	else
	{
	  echo $themeObject->ShowErrors($this->Lang('noname'));
	}
}
else
	$templatecontent = $this->GetTemplate($templatename);

echo $this->CreateFormStart($id, 'edittemplate', $returnid);
echo $this->StartTabHeaders();
echo $this->SetTabHeader('template',$this->Lang('Template'));
echo $this->SetTabHeader('metadata',$this->Lang('Metadata'));
echo $this->SetTabHeader('help',$this->Lang('Help'));
echo $this->EndTabHeaders();
echo $this->StartTabContent();

echo $this->StartTab("template");
$smarty->assign('actionid',$id);
$smarty->assign('mod',$this);
echo $this->CreateInputHidden($id, 'templatename', $templatename);
$smarty->assign('nametext', $this->Lang('name'));
$smarty->assign('nameinput', $this->CreateInputText($id, 'newtemplatename', $templatename, 30, 255));
$smarty->assign('contenttext', $this->Lang('template'));
$smarty->assign('contentinput', $this->CreateTextArea(false, $id, $templatecontent, 'templatecontent', '', '', '', '', '80', '20', '', 'html'));
$smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', lang('submit')));
if( $templatename )
  $smarty->assign('apply', $this->CreateInputSubmit($id, 'apply', lang('apply')));
$smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel', lang('cancel')));
echo $this->ProcessTemplate('edittemplate.tpl');
echo $this->EndTab();

echo $this->StartTab('metadata');
$smarty->assign('metadata',$metadata);
echo $this->ProcessTemplate('edittemplate2.tpl');
echo $this->EndTab();

echo $this->StartTab("help");
echo $this->Lang('help_template');
echo $this->EndTab();
echo $this->EndTabContent();
echo $this->CreateFormEnd();

?>
