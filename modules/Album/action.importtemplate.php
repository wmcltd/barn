<?php
if (!isset($gCms)) exit;

#$this->DeleteTemplate($params['tplname']);
#$this->Redirect($id, 'defaultadmin', $returnid);

$error = '';
// Remove the extension from the template name if it has one
$pos = strpos($params['tplname'], '.');
if ($pos === false)
{
	$newtemplate = $params['tplname'];
}
else
{
	$newtemplate = substr($params['tplname'], 0, $pos);
}

if (isset($params['newtemplate'])) $newtemplate = $params['newtemplate'];

if (isset($params['cancel']))
{
	$this->Redirect($id, 'defaultadmin', $returnid);
}
else if (isset($params['submit']))
{
	if ($newtemplate == '')
	{
		$error = $this->Lang('notemplatename');
	}
	else
	{
		if ($this->GetTemplate($newtemplate) == '')
		{
		  $dir = dirname(__FILE__).'/templates/db/';
		  $contents = file_get_contents($dir . $params['tplname']);
		  $this->SetTemplate($newtemplate, $contents);

		  if( ($pos = strrpos($params['tplname'],'.')) !== FALSE )
		    {
		      $basename = substr($params['tplname'],0,$pos);
		      if( is_dir($dir.$basename) && file_exists($dir.$basename.'/metadata.txt') )
			{
			  $metadata = file_get_contents($dir.$basename.'/metadata.txt');
			  if( $metadata )
			    {
			      $query = 'INSERT INTO '.cms_db_prefix().'module_album_templateextra (template_name,metadata) VALUES (?,?)';
			      $db->Execute($query,array($newtemplate,$metadata));
			    }
			}
		    }

			$params = array('tab_message' => 'templateimported', 'active_tab' => 'templates');
			$this->Redirect($id, 'defaultadmin', $returnid, $params);
		}
		else
		{
			$error = $this->ShowErrors($this->Lang('templatenameexists'));
		}
	}
}

$this->smarty->assign_by_ref('errormsg', $error);

$this->smarty->assign('startform', $this->CreateFormStart($id, 'importtemplate', $returnid));
$this->smarty->assign('endform', $this->CreateFormEnd());
$this->smarty->assign('newtemplate', $this->Lang('newtemplate'));
$this->smarty->assign('inputname', $this->CreateInputText($id, 'newtemplate', $newtemplate, 20, 255));
$this->smarty->assign('hidden', $this->CreateInputHidden($id, 'tplname', $params['tplname']));
$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', lang('submit')));
$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel', lang('cancel')));

echo $this->ProcessTemplate('importtemplate.tpl');

?>
