<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$fieldName=$id.'input_browse';

$themeObject = $gCms->variables['admintheme'];	


if (isset( $params['pictureid'])){
	$params = array('showid' => $params['showid'], 'pictureid' => $params['pictureid'], 
					'curdir' => $params['curdir'], 'dir' => $params['dir']);		
}else{
	$params = array('showid' => $params['showid'],'curdir' => $params['curdir'], 'dir' => $params['dir']);		
}


if (!isset ($_FILES[$fieldName]) || !isset ($_FILES)
	|| !is_array ($_FILES[$fieldName]) || !$_FILES[$fieldName]['name']){
	$params['message'] = $this->Lang('error_nofilesuploaded');
	$this->Redirect($id, 'addpicture', '', $params);	
}else{
	$file = $_FILES[$fieldName];
	$curdir = (isset($params['curdir']) ? $params['curdir'] : '');
	$uploaddir = $config['image_uploads_path'].$curdir;
	$uploadfile = $uploaddir.'/'. $file['name'];

	if (!@move_uploaded_file($file['tmp_name'], $uploadfile))	{
		$params['message'] = $this->Lang('error_nofilesuploaded');
		$this->Redirect($id, 'addpicture', '', $params);	
	}else{
		chmod($uploadfile, 0644);
		$params['message'] = 'pictureuploaded';
			if (isset($params['pictureid'])){
				$this->Redirect($id, 'changepicture', '', $params);	
			}else{
				$this->Redirect($id, 'addpicture', '', $params);	
			}
	}
	
}

if (isset($params['pictureid'])){
	$this->Redirect($id, 'changepicture', '', $params);	
}else{
	$this->Redirect($id, 'addpicture', '', $params);	
}
?>
