<?php
if (!isset($gCms)) exit;
if(! $this->CheckPermission( 'Use Album' ) ) exit;


//debug_display($params); die();
$albumname = (isset($params['albumname']) ? $params['albumname'] : '');

if (isset($params['cancel']))
  {
    $params = array('module_message' => $this->lang('canceled'));
    $this->Redirect($id, 'defaultadmin', $returnid, $params);
  }
else if (isset($params['submit']))
{
	if ($albumname != "")
	{
	  $query = 'SELECT album_id FROM '.cms_db_prefix().'module_album_albums WHERE album_name = ?';
	  $tmp = $db->GetOne($query,array($albumname));
	  if( $tmp )
	    {
		$params = array('albumid' => $albumid, 'module_error' => $this->lang('error_name_exists'));
		$this->Redirect($id, 'editalbum', $returnid, $params);
	    }

		$albumid = $db->GenID(cms_db_prefix()."module_album_albums_seq");
		$albumnumber = $this->AlbumCount()+1;
		
		$query = 'INSERT INTO '.cms_db_prefix().'module_album_albums (album_id,album_name,album_number,template) VALUES (?,?,?,?)';
		 $db->Execute($query, array($albumid,$albumname,$albumnumber,$this->GetPreference('defaulttemplate', '')));

		 //Update search index
		 $module = $this->GetModuleInstance('Search');
		 if ($module != FALSE)
		   {
		     $module->AddWords($this->GetName(), $albumid, 'album', $albumname);
		   }

		$params = array('albumid' => $albumid, 'module_message' => $this->lang('albumadded'));
		$this->Redirect($id, 'editalbum', $returnid, $params);
	}
	else
	{
		echo $this->ShowErrors($this->Lang('error_nonamegiven'));	
	}
}


$this->smarty->assign('nametext', $this->Lang('name'));
$this->smarty->assign('nameinput', $this->CreateInputText($id, 'albumname', $albumname, 30, 255));
$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', lang('submit')));
$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel', lang('cancel')));

echo $this->CreateFormStart($id, 'addalbum', $returnid);
echo $this->ProcessTemplate('newalbum.tpl');
echo $this->CreateFormEnd();

?>
