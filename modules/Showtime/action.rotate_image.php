<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();	
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}


$showid = (isset($params['showid']) ? $params['showid'] : '');
if ($showid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);


//read values from picture_id;
//active,show_id,picture_name,picture_number,picture_url, thumbnail_path,picture_path,comment
$pictureinfo = showtime_data::_Getpictureinfo($params['pictureid']);

$img= $config['image_uploads_path'] . $pictureinfo['picture_path'];
$thumb = $config['image_uploads_path'] . $pictureinfo['thumbnail_path'];
//=============================================

// lets rotote this image
$degreeOfRotation = (isset($params['rotate']))? $params['rotate']:'90';
showtime_image::_rotateimage($img, $degreeOfRotation);
showtime_image::_rotateimage($thumb, $degreeOfRotation);


$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

?>