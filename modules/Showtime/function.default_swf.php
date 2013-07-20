<?php
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
					
				//Create picture_url depending on picture_url_target picture_url_nature 
				if (!empty($pic['picture_url_nature'])&& $pic['picture_url_nature']<>"none" && !empty($pic['picture_url'])){
					switch ($pic['picture_url_nature']){
						case "internal page":
							//link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
							$pic['picture_url'] = showtime_utils::CreatePictureLink($pic['picture_url']);
							break;
						case "external page":
							// Link to an external page like: 'http://www.google.be'
							$pic['picture_url']=$pic['picture_url'];
							break;
						case "image":
							//link to the original image file
							$pic['picture_url'] = $config['image_uploads_url'].$pic['picture_path'];
							break;					
					}
				}


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


				$galleryitems .= "<dl class='gallery-item'><dt class='gallery-icon'>";
				if (FALSE == empty($pic['picture_url'])){
					$galleryitems .= "<a href='".$pic['picture_url']."' title='".$pic['picture_name']."' target='".$showinfo['st_target']."'>";
				}
				$galleryitems .= "<img width='" .  $showinfo['st_width']."' height='" .  $showinfo['st_height'].
						"' src='".$config['image_uploads_url'] . $pic['picture_path'].
						"' class='attachment-thumbnail' alt='' title='" .  $pic['picture_name']."' />";
				if (FALSE == empty($pic['picture_url'])){
					$galleryitems .= "</a>";
				}
				$galleryitems .= "</dt></dl>\n";

				$onerow->picture ='<img width="' .  $tn_width.'" height="' .  $tn_height.
						'" style="position:absolute; left:'.$tn_left.'px; top:'.$tn_top.'px;" 
						src="'.$config['image_uploads_url'] . $pic['picture_path'].
						'" alt="'.$pic['comment'].'" title="' .  $pic['picture_name'].'" />';
				$onerow->comment = $pic['comment'];
				$entryarray[] = $onerow;
			
				$teller ++;
				$result->MoveNext();
			}

			$this->smarty->assign('galleryitems',$galleryitems);
			
			// lead Scripts for SWFobject
			$template_metadata =	'
			<!--LOAD SHOWTIME swfobject-->
			<script type="text/javascript" src="'.$rooturl.
				'/modules/Showtime/showtime/swfobject/swfobject.js?ver=2.2"></script>
			<!--END SHOWTIME-->
			';
			if ( empty($this->SWFMetadata) ){
				$this->SWFMetadata = $template_metadata;
			}
			//finaly process template
			echo $this->ProcessTemplate('showtime_swf.tpl');




		 }else{ //No images found
			echo  "<br>".$this->Lang('default_addimages'). $showid ."<br>";
		 }//if $aantal <> 0
		$result->Close();
		//End Read the pictures



?>