<?php

if (!isset($gCms)) exit;

if ( isset($params['cancel']) )
  {
    $this->Redirect($id, 'defaultadmin', $returnid);
  }

if(! $this->CheckPermission( 'Use Album' ) ) exit;


$albumtemplate = (isset($params['albumtemplate']) ? $params['albumtemplate'] : 'default');

$albumid = (isset($params['albumid']) ? $params['albumid'] : '');
if ($albumid == '') exit;
// Clear the site cache
$query = 'UPDATE '.cms_db_prefix().'module_album_albums SET template=? WHERE album_id = ?';
$db->Execute($query, array($albumtemplate,$albumid));

if( isset($params['return']) )
  {
    $this->Redirect($id, 'defaultadmin', $returnid);
  }
else
  {
    $params = array('albumid' => $albumid, 'tab_message' => 'propertiesupdated', 'active_tab' => 'properties');
    $this->Redirect($id, 'editalbum', $returnid, $params);
  }

?>
