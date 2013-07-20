<?php

class showtime_CSS_SWF{
  protected function __construct() {} 

  public static function _Create($show_id){
		$gCms = cmsms();
		$config = $gCms->GetConfig();
		$row = showtime_data::_Getshowinfo($show_id);
		
				 $cssstring ="
		#gallery-".$row['show_id']." {margin: auto;}
		#gallery-".$row['show_id']." .gallery-item {float: left; margin-top: 10px; text-align: center;}
		#gallery-".$row['show_id']." img {border: 2px solid #cfcfcf;}
		#gallery-".$row['show_id']." .gallery-caption {margin-left: 0;}";
			
		$cssfilename = '../modules/Showtime/templates/css/Show_' . $show_id . '.css';
		$handle = fopen($cssfilename,'w');
		fwrite($handle,$cssstring);
		fclose($handle);
		return true;
	}
}     
          
?>
