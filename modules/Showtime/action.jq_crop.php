<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();	
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}



$showid = (isset($params['showid']) ? $params['showid'] : '');
if ($showid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (isset($params['cancel']))
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));



//read values from show_id	: show_name 	st_height 	st_width
$showinfo = showtime_data::_Getshowinfo($params['showid']);
//=============================================

//read values from picture_id;
//active,show_id,picture_name,picture_number,picture_url, thumbnail_path,picture_path,comment
$pictureinfo = showtime_data::_Getpictureinfo($params['pictureid']);

$img= $config['image_uploads_path'] . $pictureinfo['picture_path'];
$filemtime = filemtime($img);


$thumb = $config['image_uploads_path'] . $pictureinfo['thumbnail_path'];
$imgdata = @getimagesize($img);
if ( $imgdata === FALSE ) {
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));
}
$width = $imgdata[0];
$height = $imgdata[1];
//=============================================



if (isset($params['crop'])){

	// lets crop this image
	showtime_image::_createnewimage('', $img, 0, 0,$params['x'], $params['y'] , $showinfo['st_width'] , $showinfo['st_height'] , $params['w'], $params['h'] );
	
	//lets make thumbnail
	$imgratio =  $showinfo['st_width'] / $showinfo['st_height'];  // width/height
        
  
	$thumbwidth = get_site_preference('thumbnail_width',96);
	$thumbheight = get_site_preference('thumbnail_height',96);

	$thumbratio = $thumbwidth / $thumbheight;
	if( $imgratio > $thumbratio ){
		$newwidth = $thumbwidth;
		$newheight = ceil($thumbwidth / $imgratio);
	}else{
		$newheight = $thumbheight;
		$newwidth = ceil($thumbheight * $imgratio);
	}
	showtime_image::_createnewimage($thumb, $img, 0, 0, 0, 0 , $newwidth , $newheight , $showinfo['st_width'], $showinfo['st_height'] );

	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));
}


	$x_ratio = $width / $showinfo['st_width'] ;
	$y_ratio = $height / $showinfo['st_height'] ;
	if ($x_ratio >= $y_ratio){
		$y_pos = 0;
		$y_dim = $height;
		$x_dim = $showinfo['st_width'] * $y_ratio;	
		$x_pos = intval(( $width - $x_dim ) / 2);
	}else{
		$x_pos = 0;
		$x_dim = $width;
		$y_dim = $showinfo['st_height'] * $x_ratio;
		$y_pos = intval(( $height - $y_dim ) / 2);
	}

$smarty->assign('x_pos',$x_pos);
$smarty->assign('y_pos',$y_pos);

$smarty->assign('x_dim',$x_dim);
$smarty->assign('y_dim',$y_dim);

$smarty->assign('st_height',$showinfo['st_height']);
$smarty->assign('st_width',$showinfo['st_width']);

//=============================================


$smarty->assign('imgtocrop',$config['image_uploads_url'].$pictureinfo['picture_path']);
$smarty->assign('filemtime',$filemtime);

//$smarty->assign('FormStart',$this->CreateFormStart($id, 'jq_crop', $returnid, '', '', '','',array() ,'onSubmit="return checkCoords();"'));
$smarty->assign('FormStart',$this->CreateFormStart($id, 'jq_crop', $returnid));
$smarty->assign('submit', $this->CreateInputSubmit($id, 'crop',$this->lang('Crop_Image')));
$smarty->assign('cancel',$this->CreateInputSubmit($id, 'cancel', $this->lang('cancel')));
$smarty->assign('hidden',$this->CreateInputHidden($id, 'active_tab',$params['active_tab']).
								$this->CreateInputHidden($id, 'pictureid',$params['pictureid']).
								$this->CreateInputHidden($id, 'showid',$params['showid'])
								);
								
$this->smarty->assign('coordinates',$this->CreateInputHidden($id, 'x','x').
								$this->CreateInputHidden($id, 'y','y').
								$this->CreateInputHidden($id, 'w','w').
								$this->CreateInputHidden($id, 'h','h')
								);
$smarty->assign('title_crop',$this->lang('Crop_this_Image'));
$smarty->assign('FormEnd', $this->CreateFormEnd());

echo $this->ProcessTemplate('jq_crop.tpl');

?>