<?php

if (!isset($gCms)) exit;

if (isset($params['cancel'])) 
  $this->Redirect($id, 'defaultadmin', $returnid);

if(! $this->CheckPermission( 'Use Album' ) ) exit;

$templatename = (isset($params['templatename']) ? $params['templatename'] : '');
$this->DeleteTemplate($templatename);
$query = 'DELETE FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name = ?';
$db->Execute($query,array($templatename));
$params = array('tab_message' => 'template_deleted', 'active_tab' => 'templates');
$this->Redirect($id, 'defaultadmin', $returnid, $params);

?>