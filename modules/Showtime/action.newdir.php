<?php
if (!cmsms()) exit;
$config = cmsms()->GetConfig();
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}
if(!isset($params["newdirname"]) || !isset($params["curdir"])) {
	$this->Redirect($id, 'addpicture',
                array("curdir"=>$params["curdir"],
                    "module_error"=>'invalid',
                    'showid'=>$params['showid']));
}

$params["newdirname"]=trim($params["newdirname"]);
if( !showtime_utils::is_valid_filename($params['newdirname']) ) {
  $this->Redirect($id, 'addpicture',$returnid,
          array("module_error"=>"invalidnewdir", 
              "curdir"=>$params["curdir"],
              'showid'=>$params['showid']));
}


$newdir=showtime_utils::Slash($params["curdir"],$params["newdirname"]);
$newdir=showtime_utils::Slash($config["image_uploads_path"],$newdir);


if (is_dir($newdir)) {
	$this->Redirect($id, 'addpicture',$returnid,
            array("module_error"=>"direxists", 
                "curdir"=>$params["curdir"], 
                'showid'=>$params['showid']));
}


$message=""; $error="";
if (mkdir($newdir)) {
  $message="newdirsuccess";
  // put mention into the admin log
  $this->Audit( 0, "Showtime", "Created new directory: ".$params["newdirname"]);
} else {
  $error="newdirfail";
}

$this->Redirect($id,"addpicture",$returnid,
            array("curdir"=>$params["curdir"],
                "module_message"=>$message,
                "module_error"=>$error, 
                'showid'=>$params['showid']))

?>
