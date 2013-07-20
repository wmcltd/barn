<?php
if (!isset($gCms)) exit;
if(! $this->CheckAccess($id, $params, $returnid) ) exit;

$config = $gCms->config;
$themeObject = &$gCms->variables['admintheme'];

// Create Album Admin object
require_once(dirname(__FILE__).'/lib/class.AlbumAdmin.php');
$albumAdmin = new AlbumAdmin;

if( isset($params['tab_error']) )
  {
    echo $this->ShowErrors($this->Lang(trim($params['tab_error'])));
    unset($params['tab_error']);
  }
// The tabs
echo $this->StartTabHeaders();
$active_tab = isset($params['active_tab']) ? $params['active_tab'] : FALSE;
// Tab headers
echo $this->SetTabHeader('albums', $this->Lang('Albums'), ('albums' == $active_tab));
echo $this->SetTabHeader('categories', $this->Lang('categories'), ('categories' == $active_tab));
echo $this->SetTabHeader('templates',$this->Lang('Templates'), ('templates' == $active_tab));
echo $this->SetTabHeader('file_templates',$this->Lang('file_templates'), ('file_templates' == $active_tab));
if($this->CheckPermission('Modify Site Preferences'))
{
  echo $this->SetTabHeader('options', $this->Lang('options'), ('options' == $active_tab));
}
echo $this->EndTabHeaders();


echo $this->StartTabContent();
echo $this->StartTab('albums', $params);

$categories = array();

// Get albums that are not in a category
// To understand this query see: http://www.informit.com/articles/article.asp?p=30875&seqNum=5
$query = 'SELECT '.cms_db_prefix().'module_album_albums.album_id FROM '.cms_db_prefix().'module_album_albums LEFT JOIN '.cms_db_prefix().'module_album_category_listings ON '.cms_db_prefix().'module_album_albums.album_id = '.cms_db_prefix().'module_album_category_listings.listing_album_id WHERE '.cms_db_prefix().'module_album_category_listings.listing_album_id IS NULL';
$dbresult = $db->Execute($query);
if (false == $dbresult)
{
	echo $this->ShowErrors( $this->Lang('query_failed') );
}
while( $dbresult && ($row = $dbresult->FetchRow()) )
{
	if (TRUE == empty($unlisted_ids))
	{
		$unlisted_ids = $row['album_id'];
	}
	else
	{
		$unlisted_ids .= ','.$row['album_id'];
	}
}
if (FALSE == empty($unlisted_ids))
{
	$albums = $albumAdmin->getAlbumsFromIds(0, $unlisted_ids, $id, $returnid); 
	$categories[] = array ('albums' =>  $albums, 'category_name' => $this->Lang('uncategorized'));
}

// Get categories and list all Albums in them
$db_categories = $this->GetCategories();
foreach ($db_categories as $db_category)
{
	$album_ids = $this->GetAlbumsInCategory($db_category->id);
	if (TRUE == empty($album_ids[$db_category->id]))
	{
		$albums = '';
	}
	else
	{
		$albums = $albumAdmin->getAlbumsFromIds($db_category->id, $album_ids[$db_category->id], $id, $returnid);
	}
	$categories[] = array ('albums' =>  $albums, 'category_name' => $db_category->name);
}

$smarty->assign('categories', $categories);
$smarty->assign('noalbumstext', $this->Lang('noalbumstext'));
$smarty->assign('albumnametext', $this->Lang('albumnametext'));
$smarty->assign('albumtemplatetext', $this->Lang('template'));
$smarty->assign('albumthumbtext', $this->Lang('albumthumbtext'));
$smarty->assign('albumidtext', $this->Lang('albumidtext'));
$smarty->assign('albumreordertext', $this->Lang('albumreordertext'));
$smarty->assign('albumactionstext', $this->Lang('albumactionstext'));
$smarty->assign('picturestext', $this->Lang('pictures'));
$smarty->assign('albumnumpicturestext', $this->Lang('albumnumpicturestext'));
$smarty->assign('addlink', $this->CreateLink($id, 'addalbum', $returnid, $this->DisplayImage('newalbum.png', $this->Lang('addalbum'),'','','systemicon'), array(), '', false, false, '') .' '. $this->CreateLink($id, 'addalbum', $returnid, $this->Lang('addalbum'), array(), '', false, false, 'class="pageoptions"'));
echo $this->ProcessTemplate('albumlist.tpl');

echo $this->EndTab();


echo $this->StartTab('categories', $params);

$db_categories = $this->GetCategories();
if (TRUE == empty($db_categories)) {
	$smarty->assign('nocategoriestext', $this->Lang('nocategories'));
}
$categories = array();
foreach ($db_categories as $db_category)
{
	$onerow = new stdClass();
	$onerow->name = $this->CreateLink($id, 'editcategory', $returnid, $db_category->name, array('category_id'=>$db_category->id));
	$onerow->id = $db_category->id;
	$onerow->deletelink = $this->CreateLink($id, 'deletecategory', $returnid, 
						$this->DisplayImage('delete2.png', $this->Lang('deletealbum'),'','','systemicon'),
									   array('category_id' => $db_category->id), $this->Lang('areyousure'));
	if (count($categories) > 0)
	{
		$onerow->uplink = $this->CreateLink($id, 'movecategory', $returnid,
						    $this->DisplayImage('up.png', lang('up'),'','','systemicon'), 
									       array('category_id' => $db_category->id, 'direction'=>'up'));
	} else {
		$onerow->uplink = '';
	}
	if (count($albums) < count($db_categories)-1)
	{
		$onerow->downlink = $this->CreateLink($id, 'movecategory', $returnid,
						      $this->DisplayImage('down.png', lang('down'),'','','systemicon'), 
										 array('category_id' => $db_category->id, 'direction'=>'down'));
	} else {
		$onerow->downlink = '';
	}

	// $onerow->picturenumber = $this->PictureCount($dbalbum->id);

	array_push($categories, $onerow);
}

$smarty->assign('items', $categories);
$smarty->assign('itemcount', count($categories));

$smarty->assign('categorynametext', $this->Lang('categorynametext'));
$smarty->assign('categorytemplatetext', $this->Lang('template'));
$smarty->assign('categorythumbtext', $this->Lang('categorythumbtext'));
$smarty->assign('categoryidtext', $this->Lang('categoryidtext'));
$smarty->assign('categoryreordertext', $this->Lang('categoryreordertext'));
$smarty->assign('categoryactionstext', $this->Lang('categoryactionstext'));
$smarty->assign('categoriestext', $this->Lang('categories'));
$smarty->assign('categorynumpicturestext', $this->Lang('categorynumpicturestext'));
$smarty->assign('addlink', $this->CreateLink($id, 'addcategory', $returnid, $themeObject->DisplayImage('icons/system/newobject.gif', $this->Lang('addcategory'),'','','systemicon'), array(), '', false, false, '') .' '. $this->CreateLink($id, 'addcategory', $returnid, $this->Lang('addcategory'), array(), '', false, false, 'class="pageoptions"'));
echo $this->ProcessTemplate('categorylist.tpl');

echo $this->EndTab();




echo $this->StartTab('templates', $params);
$templates = array();
$templates2 = array();
//$templates2[$this->Lang('automatic_album_list_template')] = 'auto';
$dbtemplates = $this->ListTemplates();
$rowclass = 'row1';
foreach ($dbtemplates as $template)
{
	$onerow = new stdClass();
	$onerow->rowclass = $rowclass;
	$onerow->name = $this->CreateLink($id, 'edittemplate', $returnid, $template, array('templatename'=>$template));
	$onerow->editlink = $this->CreateLink($id, 'edittemplate', $returnid, $this->DisplayImage('edittemplate.png', $this->Lang('edittemplate'),'','','systemicon'), array('templatename' => $template));
	if ($template!='default')
	{
		$onerow->deletelink = $this->CreateLink($id, 'deletetemplate', $returnid, $this->DisplayImage('delete2.png', $this->Lang('deletetemplate'),'','','systemicon'), array('templatename' => $template), $this->Lang('areyousure'));
	} else {
		$onerow->deletelink = '';
	}
	$onerow->exportlink = $this->CreateLink($id,'exporttemplate',$returnid, $themeObject->DisplayImage('icons/system/export.gif', $this->Lang('exporttemplate'),'','','systemicon'), array('tplname'=>$template));
	$templates2[$template]=$template;
	$templates[] = $onerow;
	($rowclass=="row1"?$rowclass="row2":$rowclass="row1");
}

$smarty->assign('formstart', $this->CreateFormStart($id, 'changetemplate', $returnid));
$smarty->assign('templatetext', $this->Lang('currenttemplate'));
$smarty->assign('templateinput', $this->CreateInputDropdown($id, 'templatename', $templates2, -1, $this->GetPreference('template','default')));
$smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->Lang('submit')));
$smarty->assign('formend', $this->CreateFormEnd());

$smarty->assign('items', $templates);
$smarty->assign('templatenametext', $this->Lang('templatenametext'));

if( $this->CheckImportPermissions() )
  {
    $smarty->assign('formstart2',$this->CreateFormStart($id,'importxml',$returnid,'post','multipart/form-data'));
    $smarty->assign('lbl_import',$this->Lang('lbl_import'));
    $smarty->assign('lbl_select',$this->Lang('lbl_select_file'));
    $smarty->assign('lbl_newname',$this->Lang('lbl_newname'));
    $smarty->assign('info_newname',$this->Lang('info_newname'));
    $smarty->assign('input_newname',$this->CreateInputText($id,'newname','',40));
    $smarty->assign('submit2', $this->CreateInputSubmit($id, 'submit', $this->Lang('return')));
    $smarty->assign('input_import',$this->CreateInputFile($id,'xmlfile','',25));
    $smarty->assign('formend2',$this->CreateFormEnd());
  }

$smarty->assign('addlink', $this->CreateLink($id, 'edittemplate', $returnid, $this->DisplayImage('addatemplate.png', $this->Lang('addtemplate'),'','','systemicon'), array(), '', false, false, '') .' '. $this->CreateLink($id, 'edittemplate', $returnid, $this->Lang('addtemplate'), array(), '', false, false, 'class="pageoptions"'));
echo $this->ProcessTemplate('templatelist.tpl');

echo $this->EndTab();




/*****************************************
 * Handle the File Tab
 ****************************************/
echo $this->StartTab('file_templates');
echo $this->Lang('file_templates_help');
$dir = dirname(__FILE__) . '/templates/db';
$dh  = opendir($dir);
$files = array();
while (false !== ($filename = readdir($dh)))
{
	$files[] = $filename;
}
if (isset($dh))
  closedir($dh);
natcasesort($files);
$rowclass = 'row1';
$entryarray = array();

foreach ($files as $onefile)
{
	//If this is not a .tpl file, skip it
	if (!endswith($onefile, '.tpl')) continue;

	//If this is in badfiles, skip it
	// if (in_array($onefile, $badfiles)) continue;

	$onerow = new stdClass();

	$onerow->filename = $onefile;
	$onerow->rowclass = $rowclass;

	$onerow->importlink = $this->CreateLink($id, 'importtemplate', $returnid, $themeObject->DisplayImage('icons/system/import.gif', $this->Lang('importtemplate'),'','','systemicon'), array('tplname' => $onefile));

	$entryarray[] = $onerow;

	($rowclass=="row1"?$rowclass="row2":$rowclass="row1");
}

$smarty->assign('items', $entryarray);
$smarty->assign('itemcount', count($entryarray));

$smarty->assign('filenametext', $this->Lang('filename'));
$smarty->assign('nofilestext', $this->Lang('notemplatefiles', dirname(__FILE__) . '/templates/db'));

#Display template
echo $this->ProcessTemplate('filetpllist.tpl');

echo $this->EndTab();
/*****************************************
 * Finished File Tab
 ****************************************/


if ($this->CheckPermission('Modify Site Preferences'))
{
	echo $this->StartTab('options', $params);
	$smarty->assign('startform', $this->CreateFormStart($id, 'updateoptions'));
	$smarty->assign('endform', $this->CreateFormEnd());

	$contentops = $gCms->GetContentOperations();
	$smarty->assign('defaultalbumpage_text', $this->Lang('defaultalbumpage'));
	$smarty->assign('defaultalbumpage_input', $contentops->CreateHierarchyDropdown('', $this->GetPreference('defaultalbumpage','')));

	$smarty->assign('defaulttemplatetext', $this->Lang('defaulttemplate'));
	$smarty->assign('defaulttemplateinput', $this->CreateInputDropdown($id, 'defaulttemplate', $templates2, -1, $this->GetPreference('defaulttemplate','')));

	$smarty->assign('useinlinelinkstext', $this->Lang('useinlinelinks'));
	$smarty->assign('useinlinelinksinput', $this->CreateInputCheckbox($id, 'useinlinelinks', 0, $this->GetPreference('useinlinelinks', 1)));

	$smarty->assign('max_image_size_text', $this->Lang('max_image_size'));
	$smarty->assign('max_image_size_input', $this->CreateInputText($id, 'max_image_size', $this->GetPreference('max_image_size', 800), '10', '255'));

	$smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->Lang('submit')));

	echo $this->ProcessTemplate('options.tpl');
	echo $this->CreateFormEnd();
	echo $this->EndTab();
}

echo $this->EndTabContent();
?>
