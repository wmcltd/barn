<?php
if (!cmsms()) exit;

$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '')
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

$direction = (isset($params['direction']) ? $params['direction'] : '');
if ($direction != 'up' && $direction!='down')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (! $this->CheckPermission('Use Showtime'))
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));

$activatethis = ($direction == 'up')? '1': '0';
showtime_data::_Updatepicture(array('active'=>$activatethis),$pictureid);

$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


?>