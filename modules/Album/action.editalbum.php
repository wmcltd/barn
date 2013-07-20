<?php

$gCms = cmsms(); if( !is_object($gCms) ) exit;

if (isset($params['cancel'])) 
	$this->Redirect($id, 'defaultadmin', $returnid);
if(! $this->CheckPermission( 'Use Album' ) ) exit;

$themeObject = &cmsms()->variables['admintheme'];

$albumname = ( isset($params['albumname']) ? $params['albumname'] : '');
$albumcomment = (isset($params['albumcomment']) ? $params['albumcomment'] : '');
$albumtemplate = (isset($params['albumtemplate']) ? $params['albumtemplate'] : 'default');

$albumid = (isset($params['albumid']) ? $params['albumid'] : '');
if ($albumid == '') exit;

$dbalbum = $this->GetAlbum($albumid);
$albumname = $dbalbum->name;
$albumcomment = $dbalbum->comment;
$albumtemplate = $dbalbum->template;
$thumbnailpath = $dbalbum->thumbnail;
$defaulthumb = $dbalbum->defaultthumb;

echo $this->StartTabHeaders();
$active_tab = isset($params['active_tab']) ? $params['active_tab'] : FALSE;
echo $this->SetTabHeader('pictures',$this->Lang('Pictures'), ('pictures' == $active_tab));
echo $this->SetTabHeader('properties',$this->Lang('Properties'), ('properties' == $active_tab));
echo $this->EndTabHeaders();


echo $this->StartTabContent();

//****  "pictures" tab *************************************************************
echo $this->StartTab('pictures', $params);

$this->smarty->assign('nametext', $this->Lang('name'));
$this->smarty->assign('nameinput', $this->CreateInputText($id, 'albumname', $albumname, 30, 255));

$db_categories = $this->GetCategories();

// Get which categories this Album is currently in
$query = 'SELECT listing_category_id FROM '.cms_db_prefix().'module_album_category_listings WHERE listing_album_id='.intval($albumid);
$dbresult = $db->Execute($query);
while ($row = $dbresult->FetchRow())
{
	$categories_listed[$row['listing_category_id']] = true;
}

$category_inputs = '';
if (TRUE == empty($db_categories))
{
	$category_inputs .= $this->Lang('nocategories');
}
foreach ($db_categories as $db_category)
{
	$selectedvalue = 0;
	if (FALSE == empty($categories_listed[$db_category->id]))
	{
		$selectedvalue = $db_category->id;
	}
	$category_inputs .= '<label>';
	$category_inputs .= $this->CreateInputCheckbox($id, 'category_listings[]', $db_category->id, $selectedvalue);
	$category_inputs .= $db_category->name;
	$category_inputs .= "</label>\n";
}
$this->smarty->assign('categoriestext', $this->Lang('category_listings'));
$this->smarty->assign('category_listing_inputs', $category_inputs);
$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->Lang('submit')));
$this->smarty->assign('return', $this->CreateInputSubmit($id, 'return', $this->Lang('return')));
echo $this->CreateFormStart($id, 'updatealbum', $returnid);
echo $this->ProcessTemplate('editalbum.tpl');
echo $this->CreateInputHidden($id, 'albumid', $albumid);
echo $this->CreateInputHidden($id, 'pictureorder','');

$this->smarty->assign('thumbtext', $this->Lang('thumbnail'));
$this->smarty->assign('thumb', '<img src="'.$thumbnailpath.'" id="thumbnailpath" alt="" />');
                                                                              
$pictureshortpath = str_replace('/thumb_','/',$this->ShortPath($thumbnailpath));   
$this->smarty->assign('thumbmodify', $this->CreateLink($id, 'changethumb', $returnid, $this->DisplayImage('changethumb.png'), array('albumid' => $albumid)).' '.$this->CreateLink($id, 'changethumb', $returnid, $this->Lang('changethumb'), array('albumid' => $albumid)));
if ($thumbnailpath!='' && !$defaulthumb)
{
	$delete_thumb_link = $this->CreateLink($id,'changethumb', $returnid, $this->DisplayImage('refresh.gif'), array('albumid' => $albumid, 'filename'=>''), '', false, false, '') .' '. $this->CreateLink($id, 'changethumb', $returnid, $this->Lang('resetthumb'), array('albumid' => $albumid, 'filename'=>''), '', false, false, 'class="pageoptions"');
} else {
	$delete_thumb_link = '';
}
$this->smarty->assign('deletethumb', $delete_thumb_link);
$this->smarty->assign('commenttext', $this->Lang('comment'));
$this->smarty->assign('comment', ($albumcomment=='' ? $this->lang('nocomment') : $albumcomment));
$this->smarty->assign('commentmodify', $this->CreateLink($id, 'changecomment', $returnid, $this->DisplayImage('editcomment.png'), array('albumid' => $albumid)).' '.$this->CreateLink($id, 'changecomment', $returnid, $this->Lang('changecomment'), array('albumid' => $albumid)));
echo $this->ProcessTemplate('albumthumbcomment.tpl');

echo '<hr />';

$dbpictures = $this->GetPictures($albumid);
if (TRUE == empty($dbpictures)) {
        $this->smarty->assign('nopicturetext', $this->Lang('nopicturetext'));
}
$pictures = array();
foreach ($dbpictures as $dbpicture)
{
	$picture = new stdClass();
	$thumbimg = '<img src="'.$dbpicture->thumbnail.'" alt="'.$this->Lang('nothumbnail').'" title="'.$dbpicture->name.'" style="border:none" width="'.$dbpicture->thumbnailwidth.'" ';
	if (FALSE == empty($height))
        {
	    $thumbimg .= 'height="'.$dbpicture->thumbnailheight.'"';	
        }
	$thumbimg .= ' />';
	$picture->id = $dbpicture->id;
	$picture->thumblink = '<a href="'.$dbpicture->picture.'" target="_blank" >'.$thumbimg.'</a>';
	$picture->name = $dbpicture->name;
	$picture->changecommentlink = $this->CreateLink($id, 'changecomment', $returnid, $this->DisplayImage('edit.png',$this->lang('changecomment'),$this->lang('changecomment'),'systemicon'), array('pictureid' => $dbpicture->id));
	
	$pictureshortpath = substr($dbpicture->picture, strlen($config['image_uploads_url']));
	$picture->changethumblink = $this->CreateLink($id, 'changethumb', $returnid, $this->DisplayImage('pic2.png',$this->lang('changethumbnail'),$this->lang('changethumbnail'),'systemicon'), array('pictureid' => $dbpicture->id,'albumid' => $albumid));
	$picture->changepicturelink = $this->CreateLink($id, 'changepicture', $returnid, $this->DisplayImage('pic.png',$this->lang('changepicture'),$this->lang('changepicture'),'systemicon'), array('pictureid' => $dbpicture->id, 'albumid' => $albumid));
	
	$picture->uplink = $picture->downlink = $this->DisplayImage('arrow-none.gif','','','','systemicon');
	if (count($pictures)>0)
		$picture->uplink = $this->CreateLink($id, 'movepicture', $returnid,$this->DisplayImage('up.png',$this->lang('moveleft'),$this->lang('moveleft'),'systemicon'), array('pictureid' => $dbpicture->id, 'direction'=>'up'));
	if (count($pictures)<count($dbpictures)-1)
		$picture->downlink = $this->CreateLink($id, 'movepicture', $returnid,$this->DisplayImage('down.png',$this->lang('moveright'),$this->lang('moveright'),'systemicon'), array('pictureid' => $dbpicture->id, 'direction'=>'down'));

	$picture->deletelink = $this->CreateLink($id, 'deletepicture', $returnid, $this->DisplayImage('trash.png', $this->Lang('deletealbum'),'','','systemicon'), array('pictureid' => $dbpicture->id, 'albumid'=>$albumid), $this->Lang('areyousure'));
	
	$pictures[] = $picture;
}	


$this->smarty->assign_by_ref('items', $pictures);
$this->smarty->assign('itemcount', count($pictures));
$this->smarty->assign('addlink', $this->CreateLink($id, 'addpicture', $returnid, $this->DisplayImage('newimg.png', $this->Lang('addalbum'),'','','systemicon'), array('albumid'=>$albumid), '', false, false, '') .' '. $this->CreateLink($id, 'addpicture', $returnid, $this->Lang('addpicture'), array('albumid'=>$albumid), '', false, false, 'class="pageoptions"'));
echo $this->CreateFormEnd();
echo $this->ProcessTemplate('picturelist.tpl');


echo $this->EndTab();

//****  "properties" tab *************************************************************
echo $this->StartTab('properties', $params);

$dbtemplates = $this->ListTemplates ();
$templates=array();
for ($i=0; $i<count($dbtemplates);$i++)
	$templates[$dbtemplates[$i]]=$dbtemplates[$i];
$this->smarty->assign('templatetext', $this->Lang('template'));
$this->smarty->assign('templateinput', $this->CreateInputDropdown($id, 'albumtemplate', $templates, -1, $albumtemplate));

$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->Lang('submit')));
$this->smarty->assign('return', $this->CreateInputSubmit($id, 'return', $this->Lang('return')));

echo $this->CreateFormStart($id, 'changealbumdisplay', $returnid);
echo $this->ProcessTemplate('albumproperties.tpl');
echo $this->CreateInputHidden($id, 'albumid', $albumid);
echo $this->CreateFormEnd();
echo $this->EndTab();



echo $this->EndTabContent();


?>
