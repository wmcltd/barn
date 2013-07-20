<?php
$path = dirname(dirname(dirname(dirname(__FILE__))));
require_once($path . DIRECTORY_SEPARATOR . 'include.php');
$gCms = cmsms();
$config=$gCms->GetConfig();
$rooturl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']=='on')?$config['ssl_url']:$config['root_url'];
//move to real root
$rooturl = str_replace('/modules/Showtime/showtime','',$rooturl);

$imgurl = str_replace('/modules/Showtime/showtime','',$config['image_uploads_url']);

//global $gCms;
$db = $gCms->GetDb();

$showid = htmlspecialchars($_GET["showid"]);


//read text settings
	$query = "SELECT st_showtext, st_textcolor, st_textsize, st_titlesize, st_fonttype, st_link FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = $showid";
	$result=$db->Execute($query);
	if ( $result && $result->RecordCount() > 0 ){
	  while ( $row=$result->FetchRow() ) {
		$st_textcolor=$row['st_textcolor'];
		$st_textsize=$row['st_textsize'];
		$st_titlesize=$row['st_titlesize'];
		$st_fonttype=$row['st_fonttype'];
		$st_showtext = $row['st_showtext'];
		$st_link=$row['st_link'];
	  }
	}
	
	switch ($st_fonttype){
		case 'verdana':
			$st_fonttype='Verdana, Geneva, sans-serif' ;break;
		case 'courier':
			$st_fonttype='"Courier New", Courier, monospace' ;break;
		case 'arial':
			$st_fonttype='Arial, Helvetica, sans-serif' ;break;
		case 'tahoma':
			$st_fonttype='Tahoma, Geneva, sans-serif' ;break;
		case 'sans':
			$st_fonttype='_sans, Helvetica, Arial' ;break;
		case 'times':
			$st_fonttype='"Times New Roman", Times, serif' ;break;
		case 'serif':
			$st_fonttype='"MS Serif", "New York", serif' ;break;
	}

	$query = 'SELECT picture_id, picture_name, picture_url, picture_url_nature, picture_url_target, picture_path, comment FROM '.
		cms_db_prefix().'module_showtime WHERE active AND show_id = ? ORDER BY picture_number';	
	$result=$db->Execute($query,array($showid));
	$aantal= $result->RecordCount();

	header("content-type:text/xml;charset=utf-8");
	echo '<?xml version="1.0" encoding="utf-8" ?>';
	echo '<slideshow>'; 

	//error_reporting(E_NONE);
	ini_set("display_errors", 'OFF');

function xmlentities($string) {
   return str_replace ( array ( '&', '"', "'", '<', '>', '�' ), array ( '&amp;' , '&quot;', '&apos;' , '&lt;' , '&gt;', '&apos;' ), $string ); 
}

?>
<css>p {
	marginLeft: 15;
	marginRight: 15;
	valign: bottom;
	textAlign: left;
	color: <?php echo $st_textcolor?>;
	font-family: <?php echo $st_fonttype?>;
	fontWeight:normal;
	kerning: true;
	leading: 0;
}
.description {
	fontSize: <?php echo $st_textsize?>;
}
h1 {
	fontSize: <?php echo $st_titlesize?>;
}
a {
	color: <?php echo $st_textcolor?>;
}
a:hover {
	color: #ffffff;
	textDecoration: underline;
}
.spacer {
	fontSize: 12;
}
.cursor {color: #ffffff;}
.circle {color: #ffffff;}
.shadow {color: #000000; strength: 0; blur: 2;}
</css>

	 	<?php 
		$teller = 0;
		while(!$result->EOF()){
			$teller ++;
			$pic=$result->fields;
			//Create picture_url depending on $st_link
			$picture_url = '';			
			if (!empty($pic['picture_url_nature'])&& $pic['picture_url_nature']<>"none" && !empty($pic['picture_url'])){
				switch ($pic['picture_url_nature']){
					case "internal page":
						//link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
						if (FALSE == empty($pic['picture_url'])){
							$manager = $gCms->GetHierarchyManager();
							$node    = $manager->sureGetNodeById($pic['picture_url']);
							if(is_object($node)){
								$content = $node->GetContent();
								$hierarchypath = $content->HierarchyPath();
								$alias =& $content->Alias();
								if ($config["url_rewriting"] == 'mod_rewrite'){
									$link = $rooturl. '/' . $hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
								}else{
									if (isset($_SERVER['PHP_SELF']) && $config['url_rewriting'] == 'internal'){
										$link = $rooturl. '/index.php/' . $hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
									}else{
										$link = $rooturl. '/index.php?' . $config['query_var'] . '=' . $alias;
									}
								}
							}else{
								$link =   '';
							}
						}else{
							$link =  '';
						}					
						$picture_url = $link;
						break;
					case "external page":
						// Link to an external page like: 'http://www.google.be'
						$picture_url=$pic['picture_url'];
						break;
					case "image":
						//link to the original image file
						$picture_url = $config['image_uploads_url'].$pic['picture_path'];
						break;					
				}
			}
			
			//cleanup for XML output.
			  $pic['picture_path'] = xmlentities($pic['picture_path']);
			  $pic['comment'] = xmlentities($pic['comment']);
			  $pic['picture_name'] = xmlentities($pic['picture_name']);
			  
			  
			?>
            <img src='<?php echo $imgurl.$pic['picture_path']?>' 
				hdsrc='<?php echo $imgurl.$pic['picture_path']?>' title='<?php echo $pic['picture_name']?>' caption='<?php echo strip_tags($pic['comment'])?>' href='<?php echo $picture_url;?>' target='<?php echo $pic['picture_url_target']?>' />
			<?php 
			$result->MoveNext();
		}
		?>

</slideshow>