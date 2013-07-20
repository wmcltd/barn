<?php
	//first some calculations and settings
	$showinfo['st_rotatetime'] = $showinfo['st_rotatetime']  * 1000;
	$showinfo['st_transitiontime'] = $showinfo['st_transitiontime'] * 1000;			
	$showinfo['st_showcontrols'] = ($showinfo['st_showcontrols'])? 'true':'false';// Next & Prev navigation
	$showinfo['st_controlshide'] = ($showinfo['st_controlshide'])? 'true':'false';// Only show on hover
	$showinfo['st_navbut'] = ($showinfo['st_navbut'])? 'true':'false';// 1,2,3... navigation
	$showinfo['st_thumb_nav'] = ($showinfo['st_thumb_nav'])? 'true':'false';// Use thumbnails for Control Nav
	$showinfo['st_shuffle'] = ($showinfo['st_shuffle'])? 'true':'false';// Start on a random slide
	$showinfo['st_autoplay'] = ($showinfo['st_autoplay'])? 'false':'true';// Start on a random slide
        $showinfo['st_pauseonhover'] = ($showinfo['st_pauseonhover'])? 'true':'false';//

	$this->smarty->assign('show',$showinfo);
				
	//read pictures or slides from database
	$query = 'SELECT picture_id, picture_name, picture_url, picture_url_nature, thumbnail_path, picture_url_target, picture_path, comment FROM '.
		cms_db_prefix().'module_showtime WHERE active AND show_id = ? ORDER BY picture_number';	

	$result=$db->Execute($query,array($showid));
	$aantal= $result->RecordCount();			
	if ($aantal<>"0"){ //see if there are images
		$teller = 0;
		while(!$result->EOF()){
			$pic=$result->fields;
			if (!empty($pic['picture_url_nature'])&& $pic['picture_url_nature']<>"none"){
				switch ($pic['picture_url_nature']){
					case "internal page":
						$pic['picture_url'] = showtime_utils::CreatePictureLink($pic['picture_url']);
						break;
					case "external page":
						$pic['picture_url']=$pic['picture_url'];
						break;
					case "image":
						$pic['picture_url'] = $config['image_uploads_url'].$pic['picture_path'];
						break;					
				}
			}


			$onerow = new stdClass();
			$onerow->picture_id = $pic['picture_id'];
			$onerow->slide_id=$teller;
			$onerow->picture_name = $pic['picture_name'];
			$onerow->picture_url = $pic['picture_url'];
			$onerow->picture_url_target = $pic['picture_url_target'];
			$onerow->thumbnail = $config['image_uploads_url'].$pic['thumbnail_path'];
			$onerow->picture= $config['image_uploads_url'] . $pic['picture_path'];
			$onerow->comment = $pic['comment'];
			$entryarray[] = $onerow;		
			$teller ++;
			$result->MoveNext();
		}//end while


		$smarty->assign_by_ref('items', $entryarray);

		// lead Scripts for jQuery
		if ($this->GetPreference("load_jQuery_scripts")){
		$template_metadata =	"
<!--LOAD SHOWTIME nivoslider-->
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
<script type='text/javascript' src='".$rooturl."/modules/Showtime/templates/nivoslider/jquery.nivo.slider.pack.js'></script>
<!--END SHOWTIME-->
";
		}else{
		$template_metadata =	"
<!--LOAD SHOWTIME nivoslider-->
<script type='text/javascript' src='".$rooturl."/modules/Showtime/templates/nivoslider/jquery.nivo.slider.pack.js?ver=3.4.2'></script>
<!--END SHOWTIME-->
";
		}
		
		if ( empty($this->JQMetadata) ){
			$this->JQMetadata = $template_metadata;
		}
		
		//finaly process template
		echo $this->ProcessTemplate('showtime_nivo.tpl');


	 }else{ //No images found
		echo  "<br>".$this->Lang('default_addimages'). $showid ."<br>";
	 }//if $aantal <> 0
	$result->Close();
	//End Read the pictures



?>