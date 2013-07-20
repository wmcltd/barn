<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();	
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

if (isset($params['curdir']) && !empty($params['curdir'])){
	$curdir = $params['curdir'];
}else{
	$curdir = '';	
}

//current directory
$smarty->assign('curdir',$curdir);
//path needed for uploads
$smarty->assign('image_uploads_path',$config['image_uploads_path']);
//path needed for showing thumbnails
$smarty->assign('image_uploads_url',$config['image_uploads_url']);

$smarty->assign('FormStart',$this->CreateFormStart($id, 'addpicture', $returnid));
$smarty->assign('submit', $this->CreateInputSubmit($id, 'uploaddone',$this->lang('upload_done')));
$smarty->assign('hidden',$this->CreateInputHidden($id, 'curdir',$curdir).
	$this->CreateInputHidden($id, 'showid',$params['showid']).
	$this->CreateInputHidden($id, 'filesselected',''));
$smarty->assign('FormEnd', $this->CreateFormEnd());

$smarty->assign('drag_and_drop',$this->lang('drag_and_drop'));
$smarty->assign('press_button',$this->lang('press_button'));
$smarty->assign('add_files',$this->lang('add_files'));
$smarty->assign('start_upload',$this->lang('start_upload'));
$smarty->assign('cancel_upload',$this->lang('cancel_upload'));
$smarty->assign('delete_upload',$this->lang('delete_upload'));
$smarty->assign('delete',$this->lang('addslides_delete'));

echo $this->ProcessTemplate('jq_upload.tpl');

?>