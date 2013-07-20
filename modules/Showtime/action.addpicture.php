<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}


$showid = (isset($params['showid']) ? $params['showid'] : '');
if (isset($params['cancel'])) 
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));

if (isset($params['uploadimages'])) 
	$this->Redirect($id, 'jq_upload', $returnid,array('showid'=>$showid, 'curdir'=>$params['curdir']));


if (isset($params['filename'])){
	$images = array($params['filename']);
}else{
	$images = array();
	foreach ($params as $key=>$value){
		if (substr($key,0,4)=='img_')
			$images[] = $value;
	}
}


//read curdir after uploading images
$params['dir'] = (isset($params['curdir']))?$params['curdir']:'';


//see if we have uploaded images, if so mark them and give some info
if (isset($params['filesselected'])){
	$filesselected = explode('//',$params['filesselected']);
	$nr_filesselected = 0;
	foreach ($filesselected as $key => $value){
		if (!empty($value)){
                    //see if this image exsist!
                    if(is_file($config['image_uploads_path'].$params['dir'] .'/'. $value)){
  			$nr_filesselected ++;                      
                    }

		}
	}
	if ($nr_filesselected){
		$smarty->assign('nr_filesselected', $nr_filesselected);
	}
        $smarty->assign('files_uploaded',$this->lang('files_uploaded',$nr_filesselected));
}



$counter=0;
if (isset($params['submit']) || isset($params['filename'])){	
	$sql= "SELECT count(picture_id) FROM ". cms_db_prefix()."module_showtime WHERE show_id = ".$showid ;
	$picturenumber = $db->GetOne($sql);
	
	sort($images);

	foreach($images as $imagename){
            print "\$imagename = ".$imagename."\n";

		$imagepath = &$imagename;
		$the_path = dirname($imagepath);
		$pos = strpos ($the_path, '/', strlen($the_path) - 1);
		if ($pos === false){
			$thumbpath = $the_path.'/thumb_'.basename($imagepath);
		}
		if ($pos !== false){
			$thumbpath = $the_path.'thumb_'.basename($imagepath);
		}

		$picturenumber++;
		$counter++;
		$thumbpath =  str_replace('\\', '', $thumbpath); // A quick hacky fix for XAMPP on Windows
		$pictureid = $db->GenID(cms_db_prefix()."module_showtime_seq");
		
		$query = 'INSERT INTO '.cms_db_prefix().'module_showtime (picture_id, picture_name,show_id, thumbnail_path, picture_path,  picture_number) VALUES (?,?,?,?,?,?)';
		$db->Execute($query, array($pictureid, basename($imagename),$showid, $thumbpath, $imagepath, $picturenumber));

	}
	
	//generate message
	switch($counter){
		case 0:
			$message=$this->Lang('addpicture_nonadded');
			break;
		case 1:
			$message=$this->Lang('addpicture_1added');
			break;
		default:
			$message=$this->Lang('addpicture_added');	
	}
	
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid,'message'=>$message));
}
	
include dirname(__FILE__).'/lib.browsepictures.php';

?>