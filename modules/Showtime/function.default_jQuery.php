<?php
	//first some calculations
	$showinfo['st_rotatetime'] = $showinfo['st_rotatetime']  * 1000;
	$showinfo['st_transitiontime'] = $showinfo['st_transitiontime'] * 1000;			
		
	$this->smarty->assign('show',$showinfo);
				
	//read pictures or slides from database
	$query = 'SELECT picture_id, picture_name, picture_url, picture_url_nature, picture_url_target, picture_path, comment FROM '.
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

			//adjust width and height depending on st_scale		
			$img=$config['image_uploads_path'] . $pic['picture_path'];
			list($width, $height)=getimagesize($img);
			switch ($showinfo['st_scale']){
				case 'noscale':
					$tn_width = $width;
					$tn_height = $height;
					if ($width < $showinfo['st_width']){
					   $tn_left = ceil(($showinfo['st_width'] - $width)/2);
					}else{
						$tn_left = 0;
					}
					if ($height < $showinfo['st_height']){
					   $tn_top = ceil(($showinfo['st_height'] - $height)/2);
					}else{
					   $tn_top='0';
					}
					break;
				case 'showall':
					$x_ratio = $showinfo['st_width'] / $width;
					$y_ratio = $showinfo['st_height'] / $height;
					if (($x_ratio * $height) < $showinfo['st_height']){
					   $tn_height = ceil($x_ratio * $height);
					   $tn_width = $showinfo['st_width'];
					   $tn_top = ceil(($showinfo['st_height'] - $tn_height)/2);
					   $tn_left='0';
					}else{
					   $tn_width = ceil($y_ratio * $width);
					   $tn_height = $showinfo['st_height'];
					   $tn_left = ceil(($showinfo['st_width'] - $tn_width)/2);
					   $tn_top='0';
					}
											
					break;
				case 'exactfit':
					$tn_width = $showinfo['st_width'];
					$tn_height = $showinfo['st_height'];
					$tn_left = '0';
					$tn_top='0';
					break;
				case 'noborder':
					$x_ratio = $showinfo['st_width'] / $width;
					$y_ratio = $showinfo['st_height'] / $height;
					if (($x_ratio * $height) > $showinfo['st_height']){
					   $tn_height = ceil($x_ratio * $height);
					   $tn_width = $showinfo['st_width'];
					   $tn_top = ceil(($showinfo['st_height'] - $tn_height)/2);
					   $tn_left='0';
					}else{
					   $tn_width = ceil($y_ratio * $width);
					   $tn_height = $showinfo['st_height'];
					   $tn_left = ceil(($showinfo['st_width'] - $tn_width)/2);
					   $tn_top='0';
					}
					break;
				default:
					$tn_width = $showinfo['st_width'];
					$tn_height = $showinfo['st_height'];
					$tn_left = '0';
					$tn_top='0';
			}

			$onerow->picture ='<img width="' .  $tn_width.'" height="' .  $tn_height.
					'" style="position:absolute; left:'.$tn_left.'px; top:'.$tn_top.'px;" 
					src="'.$config['image_uploads_url'] . $pic['picture_path'].
					'" alt="'.htmlspecialchars(strip_tags($pic['comment'])).'" title="' .  $pic['picture_name'].'" />';
			$onerow->comment = $pic['comment'];
			$entryarray[] = $onerow;
		
			$teller ++;
			$result->MoveNext();
		}//end while


		$smarty->assign_by_ref('items', $entryarray);

		// lead Scripts for jQuery
		if ($this->GetPreference("load_jQuery_scripts")){
		$template_metadata =	"
<!--LOAD SHOWTIME jQuery-->
<script type=\"text/javascript\" src=\"".$rooturl.
		"/modules/Showtime/templates/jquery/jquery-1.4.2.js\" ></script>
<script type=\"text/javascript\" src=\"".$rooturl.
		"/modules/Showtime/templates/jquery/jquery.cycle.all.min.js\" ></script>
<!--END SHOWTIME-->
";
		}else{
		$template_metadata =	"
<!--LOAD SHOWTIME jQuery-->
<script type=\"text/javascript\" src=\"".$rooturl.
		"/modules/Showtime/templates/jquery/jquery.cycle.all.min.js\" ></script>
<!--END SHOWTIME-->
";
		}
		
		if ( empty($this->JQMetadata) ){
			$this->JQMetadata = $template_metadata;
		}
		
		//finaly process template
		echo $this->ProcessTemplate('showtime_jq.tpl');


	 }else{ //No images found
		echo  "<br>".$this->Lang('default_addimages'). $showid ."<br>";
	 }//if $aantal <> 0
	$result->Close();
	//End Read the pictures



?>