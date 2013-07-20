<?php
#-------------------------------------------------------------------------
# Module: Album - This module allows you to add photo albums to your website.
# Version: 0.0.1, dam
# Versions: 0.4.x - present, Elijah Lofgren <elijahlofgren@elijahlofgren.com>
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2006 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
#
# This file originally created by ModuleMaker module, version 0.2
# Copyright (c) 2006 by Samuel Goldstein (sjg@cmsmadesimple.org) 
#
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------

class Album extends CMSModule
{
  protected $__usedtemplates = array();

  // An array of Albums
  protected $albums = array();
  // An array of links (like first, last, next, previous) for Albums, Pictures, and Thumbnail Pages
  protected $link;

	function GetName() {return 'Album';}
	function GetFriendlyName() {return $this->Lang('friendlyname');}
	function GetVersion() {return '1.10.3';}
	function GetHelp() { return $this->Lang('help');}
	function GetAuthor() {return 'mark';}
	function GetAuthorEmail() {return 'album@multiintech.com';}
	function GetChangeLog() {return $this->Lang('changelog');}
	function IsPluginModule() { return true;}
	function HasAdmin() {return true;	}
	function GetAdminSection() {return 'content';}
	function GetAdminDescription() {return $this->Lang('admindescription');}
	function VisibleToAdminUser()
	{
	  return $this->CheckPermission('Use Album');
	}
	function GetDependencies()	{return array();}
	function MinimumCMSVersion() {return '1.9';}
	function IsAdminOnly() { return false;}
	function CheckAccess($id, $params, $return_id,$perm = 'Use Album')
	{
	  if (! $this->CheckPermission($perm))
            {
	      $this->DisplayErrorPage($id, $params, $return_id,$this->Lang('accessdenied'));
	      return false;
	    }
	  return true;
	}
	
	function SetParameters()
	{
//		$this->RestrictUnknownParams();
// useless help parameters
//		$this->CreateParameter('albums', '1,3', $this->lang('help_albums'));
//		$this->CreateParameter('sortdesc', 'true', $this->lang('help_sortdesc'));
//		$this->CreateParameter('sortpicturesdesc', 'false', $this->lang('help_sortpicturesdesc'));
//		$this->CreateParameter('action', 'default', $this->lang('help_action'));
//		$this->CreateParameter('number', 10, $this->lang('help_number'));
//		$this->CreateParameter('detailpage', 'pagealias', $this->lang('helpdetailpage'));
		//$this->CreateParameter('detailpage', 'pagealias', $this->lang('helpdetailpage'));
    
### Added by JoMorg -> Start
    $this->RestrictUnknownParams();
    $this->SetParameterType('albums',CLEAN_STRING);
    $this->SetParameterType('sortdesc',CLEAN_STRING);
    $this->SetParameterType('sortpicturesdesc',CLEAN_STRING);
    $this->SetParameterType('action',CLEAN_STRING);
    $this->SetParameterType('number',CLEAN_INT);
    $this->SetParameterType('detailpage',CLEAN_STRING);
    $this->SetParameterType('imagesurl',CLEAN_STRING);
    $this->SetParameterType('border',CLEAN_STRING);
    $this->SetParameterType('picturename',CLEAN_STRING);
    $this->SetParameterType('pagealias',CLEAN_STRING);
    $this->SetParameterType('albumid',CLEAN_INT);
    $this->SetParameterType('pictureid',CLEAN_INT);
    $this->SetParameterType('returnid',CLEAN_INT);
    $this->SetParameterType('page',CLEAN_INT);
    $this->SetParameterType('sortdesc',CLEAN_INT);
    $this->SetParameterType('categories',CLEAN_STRING);
### Added by JoMorg -> END    
    
		$this->RegisterModulePlugin();
		//$this->SetParameterType('detailpage',CLEAN_STRING);
      // For viewing a picture
      $this->RegisterRoute('/(?P<pagealias>[a-z-\/_0-9]+)\/album-(?P<albumid>[0-9]+)\/(?P<pictureid>[0-9]+)\/(?P<returnid>[0-9]+)$/', array('action'=>'default'));
      // For viewing an album
      $this->RegisterRoute('/(?P<pagealias>[a-z-\/_0-9]+)\/album-(?P<albumid>[0-9]+)\/(?P<returnid>[0-9]+)$/', array('action'=>'default'));

      // For viewing a thumbnail page
      $this->RegisterRoute('/(?P<pagealias>[a-z-\/_0-9]+)\/album-(?P<albumid>[0-9]+)\/page(?P<page>[0-9]+)\/(?P<returnid>[0-9]+)$/', array('action'=>'default'));
	  
    }
    
	function InstallPostMessage()
	{
		return $this->Lang('postinstall');
	}


	function UninstallPostMessage()
	{
		return $this->Lang('postuninstall');
	}

    /**
     * Returns the givin album template
     * Code adapted from the Guestbook module
     */	
	function InstallDefaultAlbumTemplate($template_name)
	{
	  $tpl_base = cms_join_path($this->GetModulePath(),'templates');
	  $default_template_dir = cms_join_path($tpl_base,'db',$template_name);
	  $default_template = $default_template_dir.'.tpl';
	  
	  $tpl = '';
	  $meta = '';
	  $info = '';
	  if( is_file($default_template) )
	    {
	      $tpl = file_get_contents($default_template);
	    }
	  if( is_dir($default_template_dir) )
	    {
	      // get the metadata.
	      $meta_file = cms_join_path($default_template_dir,'metadata.txt');
	      if( is_file($meta_file) )
		{
		  $meta = file_get_contents($meta_file);
		}
	    }

	  if( !$tpl ) return FALSE;

	  $this->SetTemplate($template_name,$tpl);

	  if( $meta || $info )
	    {
	      $db = cmsms()->GetDb();
	      $query = 'INSERT INTO '.cms_db_prefix().'module_album_templateextra (template_name,metadata,info) VALUES (?,?,?)';
	      $dbr = $db->Execute($query,array($template_name,$meta,$info));
	    }
	  return TRUE;
	}

	public function TemplateExists($name)
	{
	  $tmp = $this->ListTemplates();
	  if( is_array($tmp) && count($tmp) )
	    {
	      for( $i = 0; $i < count($tmp); $i++ )
		{
		  if( $tmp[$i] == $name ) return TRUE;
		}
	    }
	  $dir = cms_join_path($this->GetModulePath(),'templates','db',$name);
	  if( is_dir($dir) ) return TRUE;
	  if( is_file($dir.'.tpl') ) return TRUE;
	  return FALSE;
	}

    function SearchResult($returnid, $item_id, $attr = '')
    {
      global $gCms;
      // $hm =& $gCms->GetHierarchyManager();
      $result = array();
      if ($attr == 'album')
	{
	  $db =& $this->GetDb();
	  $q = "SELECT album_name FROM ".cms_db_prefix()."module_album_albums WHERE album_id = ?";
	  $dbresult = $db->Execute( $q, array( $item_id ) );
	  if ($dbresult)
	    {
	      $row = $dbresult->FetchRow();
	      
	      //0 position is the prefix displayed in the list results.
	      $result[0] = $this->GetFriendlyName();
	      
	      //1 position is the title
	      $result[1] = $row['album_name'];
	      
	      //2 position is the URL to the title.
	      // $prettyurl = 'pageblocks/' . $block_id;
	      //	      $curnode =& $hm->getNodeById($row['parent_page_id']);
	      //	      $curcontent =& $curnode->GetContent();
	      //	      $result[2] = $curcontent->GetURL().'#'.$row['content_alias'];
	      global $id;
	      $result[2] = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$item_id), '', true, false, '', false);
	      // $this->CreateLink('cntnt01', 'detail', $returnid, '', array('articleid' => $articleid) ,'#'.$row['name'], true, false, '', true, $prettyurl);
	    }
	}
	  if ($attr == 'album_picture')
	    {
	      $db =& $this->GetDb();
	      $q = "SELECT picture_album_id,picture_name FROM ".cms_db_prefix()."module_album_pictures WHERE picture_id = ?";
	      $dbresult = $db->Execute( $q, array( $item_id ) );
	      if ($dbresult)
		{
		  $row = $dbresult->FetchRow();
		  
		  //0 position is the prefix displayed in the list results.
		  $result[0] = $this->Lang('picture');
		  
		  //1 position is the title
		  $result[1] = $row['picture_name'];
		  
		  //2 position is the URL to the title.
	      // $prettyurl = 'pageblocks/' . $block_id;
	      //	      $curnode =& $hm->getNodeById($row['parent_page_id']);
	      //	      $curcontent =& $curnode->GetContent();
	      //	      $result[2] = $curcontent->GetURL().'#'.$row['content_alias'];
		  global $id;
		  $result[2] = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$row['picture_album_id'],'pictureid'=>$item_id), '', true, '', '', '');
	      //		  $result[2] = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$item_id), '', true, false, '', false);
		  // $this->CreateLink('cntnt01', 'detail', $returnid, '', array('articleid' => $articleid) ,'#'.$row['name'], true, false, '', true, $prettyurl);
		}
	    }
	  
	  return $result;
	}

function GetAlbumId ($pictureid)
{
	global $gCms;
	$db = cmsms()->GetDb();
	$query = 'SELECT picture_album_id FROM '.cms_db_prefix().'module_album_pictures WHERE picture_id=?';
	$dbresult = $db->Execute($query,array($pictureid));
	if ($dbresult)
	{
		$row = $dbresult->FetchRow();
		$albumid = $row['picture_album_id'];
		return $albumid;
	}
	else return false;
}

function GetAlbum ($albumid)
{
	$albums = $this->GetAlbums($albumid);
	return $albums[0];
}

function GetCategory($category_id)
{
	$categories = $this->GetCategories($category_id);
	return $categories[0];
}

function GetAlbumsInCategory($category_ids, $sortdesc=false)
{
	global $gCms;
	$db = $this->GetDb();
	$albums = array();
	$ids = explode(',', $category_ids);
	foreach ($ids as $id)
	{
		// Get which albums this categories has
		$query = 'SELECT listing_album_id FROM '.cms_db_prefix().'module_album_category_listings WHERE listing_category_id='.intval($id).' ORDER BY listing_number ';
		if ($sortdesc == false || $sortdesc == 'false' || $sortdesc == 'FALSE')
		{
			$query .= ' ASC';
		}
		else
		{
			$query .= ' DESC';
		}
		$dbresult = $db->Execute($query);
		if (false == $dbresult)
		{
			echo $this->ShowErrors( $this->Lang('query_failed') );
		}
		while ($dbresult && ($row = $dbresult->FetchRow()))
		{
			if (TRUE == empty($albums[$id]))
			{
				$albums[$id] = $row['listing_album_id'];
			}
			else
			{
				$albums[$id] .= ','.$row['listing_album_id'];
			}
		}
	}
	return $albums;
}

function GetAlbums ($ids=false, $sortdesc=false, $category_id=false)
{
	global $gCms;
	$db = $this->GetDb();
	$config = $gCms->config;
	
	if ($category_id == false)
	{
	  if ($ids===false || $ids=='' || (is_array($ids) && count($ids) == 0) )
		{
			$query = 'SELECT * FROM '.cms_db_prefix().'module_album_albums ORDER BY album_number';
		}
		else
		{
		  if( is_array($ids) )
		    {
		      $ids = implode(',',$ids);
		    }
		  $query = 'SELECT * FROM '.cms_db_prefix().'module_album_albums WHERE album_id IN ('.$ids.') ORDER BY album_number';
		}
	}
	else
	{
		$query = 'SELECT * FROM '.cms_db_prefix().'module_album_albums,'.cms_db_prefix().'module_album_category_listings WHERE '.cms_db_prefix().'module_album_albums.album_id = '.cms_db_prefix().'module_album_category_listings.listing_album_id AND listing_category_id = '.$category_id.' ORDER BY listing_number';
	}
	if ($sortdesc == false || $sortdesc == 'false' || $sortdesc == 'FALSE')
	{
		$query .= ' ASC';
	}
	else
	{
		$query .= ' DESC';
	}

	$dbresult = $db->Execute($query);
	if (false == $dbresult)
	{
		echo $this->ShowErrors( $this->Lang('query_failed') );
	}
	$albums = array();
	while ( $dbresult && ($row = $dbresult->FetchRow()) )
	{
		$album = new StdClass();
		$album->id = $row['album_id'];
		$album->name = $row['album_name'];
		$album->comment = $row['comment'];
		$album->template = $row['template'];
		$album->thumbnail = $row['thumbnail_path'];

		$album->number = $row['album_number'];	
		$album->defaultthumb=false;
		$album->autothumbnailsize = '';
		if ($album->thumbnail=='')
		{
			$album->defaultthumb=true;
			$query2 = 'SELECT thumbnail_path, thumbnail_width, thumbnail_height FROM '.cms_db_prefix().'module_album_pictures WHERE picture_album_id = ?';
			$dbresult2 = $db->SelectLimit($query2, 1,0,array($album->id));
			if (false == $dbresult2)
			{
				echo $this->ShowErrors( $this->Lang('query_failed') );
			}
			if ($dbresult2)
			{
				$row2 = $dbresult2->FetchRow();
				$album->thumbnail  = $row2['thumbnail_path'];

				if (FALSE == empty($row2['thumbnail_path']))
				{
					// Set dimensions of thumbnail
					$this->setThumbDimensions($row2, $album);
				}

			}
		}
		else
		{
			$query2 = 'SELECT thumbnail_path, thumbnail_width, thumbnail_height FROM '.cms_db_prefix().'module_album_pictures WHERE picture_album_id = ? AND thumbnail_path = ?';
			$dbresult2 = $db->SelectLimit($query2, 1,0,array($album->id,$album->thumbnail));
			if (false == $dbresult2)
			{
				echo $this->ShowErrors( $this->Lang('query_failed') );
			}
			if ($dbresult2)
			{
				$row2 = $dbresult2->FetchRow();
				if (FALSE == empty($row2['thumbnail_path']))
				{
					// Set dimensions of thumbnail
					$this->setThumbDimensions($row2, $album);
				}
			}
			
		}
		if (FALSE == empty($album->thumbnail) && substr($album->thumbnail,0,7)!='http://')
			$album->thumbnail = $config['image_uploads_url'].$album->thumbnail;
		$albums[] = $album;
	}
	
	return $albums;
}

function GetCategories($ids=false, $sortdesc=false)
{
	global $gCms;
	$db = $this->GetDb();
	$config = $gCms->config;
	
	if ($ids===false || $ids=='')
		$query = 'SELECT * FROM '.cms_db_prefix().'module_album_categories ORDER BY category_number';
	else
	{
		$ids = explode(',', $ids);
		$query = '';
		foreach ($ids as $id)
			$query .= ($query!='' ? ' OR ': '').'category_id='.$id;
		$query = 'SELECT * FROM '.cms_db_prefix().'module_album_categories WHERE ('.$query.') ORDER BY category_number';
	}
	if ($sortdesc == false || $sortdesc == 'false' || $sortdesc == 'FALSE')
	  {
	    $query .= ' ASC';
	  }
	else
	  {
	    $query .= ' DESC';
	  }
	$dbresult = $db->Execute($query);
	if (false == $dbresult)
	{
		echo $this->ShowErrors( $this->Lang('query_failed') );
	}
	$categories = array();
	while ( $dbresult && ($row = $dbresult->FetchRow()) )
	{
		$category = new StdClass();
		$category->id = $row['category_id'];
		$category->name = $row['category_name'];
		$category->comment = $row['category_comment'];
		$category->number = $row['category_number'];	
		$categories[] = $category;
	}
	
	return $categories;
}

function setThumbDimensions($row, &$picture)
{
	global $gCms;
	$config = $gCms->config;
	// Add thumbnail dimensions
	if (FALSE == empty($row['thumbnail_width']))
	{
		$picture->thumbnailwidth = $row['thumbnail_width'];
		$picture->thumbnailheight = $row['thumbnail_height'];
		if (FALSE != empty($row['thumbnail_path']))
		{
		$picture->thumbnail = $picture->picture;
		}
	}
	else
	{
		// If the thumnail dimensions are not in the DB, we need to calculate them now
		if (FALSE == empty($row['thumbnail_path']) && TRUE == is_file($config['image_uploads_path'].$row['thumbnail_path']))
		{
			list($width, $height, $type, $attr) = getimagesize($config['image_uploads_path'].$row['thumbnail_path']);
			$picture->thumbnailwidth = $width;
			$picture->thumbnailheight = $height;
		}
		else // I guess the thumbnail does not exist. Just use a scaled down version of large one
		{
			$picture->thumbnailwidth = 96;
			$picture->thumbnailheight = '';
			// @NOTE: This may need to be reverted instead of showing no thumb image if it causes problems
			// $picture->thumbnail = $picture->picture;
			$picture->thumbnail = $config['root_url'].'/modules/Album/images/no-thumb.png';
			// print_r($picture);
		}
	}
	// Make tall thumnails fit in box
	if ($picture->thumbnailheight > 72)
	{
		$picture->autothumbnailsize = ' height="72"';
	}
	else
	{
		$picture->autothumbnailsize = ' height="'.$picture->thumbnailheight.'"';			
	}
}

function GetPictures ($albumid, $sortpicturesdesc=false)
{
	global $gCms;
	$db = $this->GetDb();

	$query = 'SELECT * FROM '.cms_db_prefix().'module_album_pictures WHERE picture_album_id = ? ORDER BY picture_number';

	if ($sortpicturesdesc == false || $sortpicturesdesc == 'false' || $sortpicturesdesc == 'FALSE')
	{
		$query .= ' ASC';
	}
	else
	{
		$query .= ' DESC';
	}

	$dbresult = $db->Execute($query, array($albumid));
	
	if (!$dbresult) return array();
	
	$pictures = array();
	while ($row = $dbresult->FetchRow())
	{	
		$picture = $this->row2picture_class($row);
		$pictures[] = $picture;
	}
	return $pictures;
}

function row2picture_class($row)
{
	global $gCms;
	$config = $gCms->config;	
	// Create our picture class
	$picture = new StdClass();
	// Add picture id
	$picture->id = $row['picture_id'];
	// Remove the extension from the picture name if it has one
	// Removed because people want periods in titles
	/*
	$pos = strpos($row['picture_name'], '.');
	if ($pos === false) {
		$picture_name = $row['picture_name'];
	} else {
		$picture_name = substr($row['picture_name'], 0, $pos);
	}
	*/
	// Clean up caption so it will work for Javascript popups.
	// Edit: Removed this because of lang problems: http://forum.cmsmadesimple.org/index.php/topic,10276.0.html
	// Instead templates should do this.
	// $picture->name = htmlentities($picture_name);
	// $picture->name = str_replace('#', '',  $picture->name);
	$picture->name = $row['picture_name'];
	// Add picture description
	$picture->comment = $row['comment'];
	$picture->comment2 = $row['comment2'];
	$picture->comment3 = $row['comment3'];
	// Add picture URL
	$picture->picture = $row['picture_path'];
	// Add full URL if needed
	if (substr($picture->picture,0,7)!='http://')
	{
		$picture->picture = $config['image_uploads_url'].$picture->picture;
	}
	// Add thumbnail URL
	$picture->thumbnail = $row['thumbnail_path'];
	$this->setThumbDimensions($row, $picture);

	// Make thumbnail a full URL if needed
	if (substr($picture->thumbnail,0,7)!='http://')
	{
	$picture->thumbnail = $config['image_uploads_url'].$picture->thumbnail;
	}
	// Calculate picture dimensions
	// @TODO: Store dimensions in DB
	// Check is_file() is to stop read error on empty album
	if (is_readable($config['image_uploads_path'].$row['picture_path']) && is_file($config['image_uploads_path'].$row['picture_path']))
	{
		list($width, $height, $type, $attr) = getimagesize($config['image_uploads_path'].$row['picture_path']);
		$picture->width = $width;
		$picture->height = $height;
	}
	else
	{
		echo $this->ShowErrors('Error: Unable to read: '.$config['image_uploads_path'].$row['picture_path']);
		$picture->width = '';
		$picture->height = '';
	}
	// Set album id and picture number
	$picture->albumid = $row['picture_album_id'];
	$picture->number = $row['picture_number'];
	return $picture;
}

function GetPicture ($pictureid)
{
	$db = $this->GetDb();
	global $gCms;
	$config = $gCms->config;	
	$query = 'SELECT * FROM '.cms_db_prefix().'module_album_pictures WHERE picture_id = ?';
	$dbresult = $db->Execute($query, array($pictureid));
	if (!$dbresult) return false;
	$row = $dbresult->FetchRow();
	$picture = $this->row2picture_class($row);
	return $picture;
}

function DisplayImage($imageName, $alt='', $title='', $class='')
{
	global $gCms;
	$config = $gCms->config;	
	$img = $config['root_url'].'/modules/Album/images/'.$imageName;
	return '<img src="'.$img.'" alt="'.$alt.'" '
		.($title=='' ? '' : 'title="'.$title.'" ')
		.($class=='' ? '' : 'class="'.$class.'" ')
		.'/>';
}

function AlbumCount()
{
	global $gCms;
	$db = $this->GetDb();
	$query = 'SELECT COUNT(*) AS cnt FROM '.cms_db_prefix().'module_album_albums';
	$dbresult = $db->Execute($query);
	if ($dbresult)
	{
		$row = $dbresult->FetchRow();
		return $row['cnt'];
	}
	else
		return 0;
}

/**
 * Returns the max listing_number in use by a category listing.
 * Used so that new album category listings have a unique listing number that is larger
 */
function MaxListingNumber($category_id)
{
	global $gCms;
	$db = $this->GetDb();
        $query = 'SELECT MAX(listing_number) FROM '.cms_db_prefix().'module_album_category_listings 
                WHERE listing_category_id='.intval($category_id);

	$dbresult = $db->Execute($query);
	if ($dbresult)
	   {
  	           $row = $dbresult->FetchRow();
	           return $row['MAX(listing_number)'];
	   }
	else
	    return 0;
}

function CategoryCount()
{
	global $gCms;
	$db = $this->GetDb();
	$query = 'SELECT COUNT(*) AS cnt FROM '.cms_db_prefix().'module_album_categories';
	$dbresult = $db->Execute($query);
	if ($dbresult)
	{
		$row = $dbresult->FetchRow();
		return $row['cnt'];
	}
	else
		return 0;
}

function PictureCount($albumid='')
{
	global $gCms;
	$db = $this->GetDb();
	if ($albumid=='')
	{
		$query = 'SELECT COUNT(*) AS cnt FROM '.cms_db_prefix().'module_album_pictures';
		$dbresult = $db->Execute($query);
	}
	else
	{
		$query = 'SELECT COUNT(*) AS cnt FROM '.cms_db_prefix().'module_album_pictures WHERE picture_album_id=?';
		$dbresult = $db->Execute($query,array($albumid));
	}
	if ($dbresult)
	{
		$row = $dbresult->FetchRow();
		return $row['cnt'];
	}
	else
		return 0;
}

function ClearPath($path)
{
	$patharray = explode('/', $path);
	$newpatharray = array();
	foreach ($patharray as $dir)
	{
		switch ($dir)
		{
			case '' : break;
			case '..':
				array_pop($newpatharray);
				break;
			default :
				$newpatharray[] = $dir;
		}
	}
	return (substr($path,0,1)=='/' ? '/' : '').implode('/', $newpatharray);
}

function ShortPath($imageurl)
{
	global $gCms;
	$config = $gCms->config;	
	return substr($imageurl, strlen($config['image_uploads_url']));
}

	function table_column_exists(&$db, $table, $col)
	{
		$result = $db->Execute('select * from '.$table);
	
		/* get column metadata */
		$i = 0;
		$meta = '';
		while ($i <  $result->_numOfFields)
		{
			$meta = $result->FetchField($i);
			if (!$meta)
			{
				echo "No information available<br />\n";
			}
			$colnames[] = $meta->name;
			$i++;
		}
		if (TRUE == in_array($col, $colnames))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	// ==== Frontend Methods ====
	function ShowFrontendAlbumList($album_index, $hierarchy_path, $albumid, $id, $returnid, $params)
	{
		// Set up parameters
		$page = (isset($params['page']) && is_numeric($params['page']) ? $params['page'] : 1);
		$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
		$templatename = (isset($params['template']) ? $params['template'] : ''); // This param would come from the Album content type
		if ($templatename == '')
		{
			$templatename = $this->GetPreference('template','default'); // Get the template chosen as the 'Album List Template'
		}

		// Set up the album links and get the index of the current album
		$currentalbum_index = $this->SetupAlbumLinks($hierarchy_path, $albumid, $id, $returnid);
		// If the 'auto' option for 'Album List Template' is selected, then go through each
		// album one by one, and list it using the template that is assigned to it
		if ('auto' == $templatename)
		{
			$the_albums[0] = $this->albums[$album_index];
			$templatename  = $this->albums[$album_index]->template;
			$this->smarty->assign_by_ref('albums', $the_albums);
		}
		else
		{
			$this->smarty->assign_by_ref('albums', $this->albums);
		}
		$this->smarty->assign('albumcount', count($this->albums));
		$this->smarty->assign('albumnumber', $currentalbum_index+1);
		
		//	$album = '';

		
		//	$pictures = array();
		$pagecount = 1;
		
		// If an Album has been specified, then we need to show the contents (i.e. all the thumbnail pictures) of that album
		$currentpicture_index = 0;
		if ($albumid!='')
		{
			// Create an object pointing to the current album
			//$this->albums[$album_index] = &$albums[$currentalbum_index];
			// Pass in the albumid and the current album object and get the index of the currentpicture_index
			$currentpicture_index = $this->SetupAlbumContent($currentalbum_index, $pictureid, $hierarchy_path, $albumid, $id, $returnid, $page, $params);
			$this->smarty->assign_by_ref('album', $this->albums[$currentalbum_index]);
 			$templatename = $this->albums[$currentalbum_index]->template; // Use the template assigned to this album
		}
		else
		{
			// Assigned empty album var to prevent template variable errors
			$this->smarty->assign('album', '');
			$tpl_current_picture = new StdClass();
			$tpl_current_picture->id = 0;
			$this->smarty->assign('picture', $tpl_current_picture);
			$allpictures = array();
			$this->smarty->assign('picturecount', count($allpictures));
		}
		$this->smarty->assign('next_picture', $this->lang('next_picture'));
		$this->smarty->assign('picturenumber', $currentpicture_index+1);
		$this->smarty->assign_by_ref('link', $this->link);
		$this->smarty->assign_by_ref('pictureid', $pictureid);
		$albumbacklink = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$albumid), '', true, false, '', false, $hierarchy_path.'/album-'.$albumid.'/'.$returnid);
		$this->smarty->assign_by_ref('albumbacklink', $albumbacklink);
		
		if (!isset($params['albums']))
		{
			$this->smarty->assign('returnlink',$this->CreateReturnLink($id, $returnid, '', array(), true));
		}
		else
		{
			$this->smarty->assign('returnlink', '');
		}
		
		
		if ($this->GetTemplate($templatename)=='')
		{
			$album_content = $this->Lang('error_empty_template', $templatename);
		}
		else
		{
		  $this->__usedtemplates[] = $templatename;
			$this->smarty->assign('max_image_size', $this->GetPreference('max_image_size', 800));
			$album_content = $this->ProcessTemplateFromDatabase($templatename);
			// Clearing the album smarty variable is very important!
			$this->smarty->clear_assign('album');
			$this->smarty->clear_assign('picture');
		}

		return $album_content;	
	}
	
	// Sets up the links to the Albums
	// Modifies the arrays of Albums and links
	// @returns int - the index of the current album
	function SetupAlbumLinks($hierarchy_path, $albumid, $id, $returnid)
	{
		// Initialize the currentalbum_index variable which is used to create next/prev links
		$currentalbum_index = 0;
		// Loop through the albums and create links to each of them
		for ($i = 0 ; $i < count($this->albums) ; $i++)
		{
			// Show an inline link if the preference to show the content of the page with the albums is set
			if (1 == $this->GetPreference('useinlinelinks', 1))
			{
				$this->albums[$i]->link = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$this->albums[$i]->id), '', true, true, '', false);
			}
			else
			{
				$this->albums[$i]->link = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$this->albums[$i]->id), '', true, false, '', false, $hierarchy_path.'/album-'.$this->albums[$i]->id.'/'.$returnid);
			}
			$this->albums[$i]->picturecount = $this->PictureCount($this->albums[$i]->id);
			// Keep track of the index of the current album so that next and previous links can be created
			if ($this->albums[$i]->id == $albumid)
			{
				$currentalbum_index = $i;
			}
		}
		// Initialize the array of album links
		$this->link['album'] = array();
		// Loop through the albums allowing links in the form of: {$link.album.1}, {$link.album.2} etc
		for ($i = 1; $i <= count($this->albums); $i++)
		{
			$this->link['album'][$i] = $this->albums[$i-1]->link;
		}
		// Set up the first and last links: {$link.album.first} {$link.album.last}
		$this->link['album']['first'] = $this->link['album'][1];
		$this->link['album']['last'] = $this->link['album'][count($this->albums)];
		if ($currentalbum_index > 0)
		{
			$this->link['album']['previous'] =  $this->link['album'][$currentalbum_index];
		}
		if ($currentalbum_index < count($this->albums)-1)
		{
			$this->link['album']['next'] =  $this->link['album'][$currentalbum_index+2];
		}
		return $currentalbum_index;
	}

	// Sets up the various attributes of the albums that can be accessed by smarty templates
	// returns current picture index
	function SetupAlbumContent($album_index, $pictureid, $hierarchy_path, $albumid, $id, $returnid, $page, $params)
	{
		$currentpicture_index = 0;
		$allpictures = $this->GetPictures($albumid, $params['sortpicturesdesc']);
		if (0 == count($allpictures))
		{
			echo '<b>'.$this->Lang('nopicturetext').'</b>';
		}
		else
		{
			for ($i = 0 ; $i < count($allpictures) ; $i++)
			{
				// Show an inline link if the preference to show the content of the page with the albums is set
				if (1 == $this->GetPreference('useinlinelinks', 1))
				{
					$allpictures[$i]->link = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$albumid,'pictureid'=>$allpictures[$i]->id), '', true, true, '', '');
				}
				else
				{
					$allpictures[$i]->link = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$albumid,'pictureid'=>$allpictures[$i]->id), '', true, '', '', '', $hierarchy_path.'/album-'.$albumid.'/'.$allpictures[$i]->id.'/'.$returnid);

				}			
				if ($allpictures[$i]->id == $pictureid)
				{
					$currentpicture_index = $i;
				}
			}	 
			
			$picturesbypage = 100000;
			if( isset($params['number']) )
			  {
			    $picturesbypage = max(1,min(100000,(int)$params['number']));
			  }
			if ($picturesbypage==0)
			{
				$picturesbypage = count($allpictures);
			}
			if (FALSE == empty($currentpicture_index))
			{
				$page = ($picturesbypage > 0 ? ceil(($currentpicture_index+1) / $picturesbypage) : 1);
			}
			$pagecount = ($picturesbypage > 0 ? ceil(count($allpictures) / $picturesbypage) : 1);
			if ($page > $pagecount)
			{
				$page = $pagecount;
			}
			if ($page < 1)
			{
				$page = 1;
			}
			
			$row = array();
			$j = 0;
			for ($i = 0 ; $i < $picturesbypage && (($page-1) * $picturesbypage + $i)<count($allpictures); $i++)
			{
				$j++;
				$row[] = & $allpictures[($page-1) * $picturesbypage + $i];
			}
			
			$pictures[] = $row;
			
			// This extra copy of the var is needed to fix the picture count bug 
			$allthepictures = $allpictures;
			$tpl_current_picture = new StdClass();
			$tpl_current_picture->id = 0;
			$tpl_current_picture = $allthepictures[$currentpicture_index];
			//print_r($tpl_current_picture);
			$this->link['page'] = array();
			
			for ($i=1;  $i<=$pagecount ; $i++)
			{
				// Show an inline link if the preference to show the content of the page with the albums is set
				if (1 == $this->GetPreference('useinlinelinks', 1))
				{
					$this->link['page'][$i] = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$albumid, 'page'=>$i), '', true, true, '', '');
				}
				else
				{
					$this->link['page'][$i] = $this->CreateLink($id, 'default', $returnid, '', array('albumid'=>$albumid, 'page'=>$i), '', true, '', '', '', $hierarchy_path.'/album-'.$albumid.'/page'.$i.'/'.$returnid);
				}
			}
			$this->link['page']['first'] = $this->link['page'][1];
			$this->link['page']['last'] = $this->link['page'][$pagecount];
			if ($page > 1)
			{
				$this->link['page']['previous'] = $this->link['page'][$page-1];
			}
			else
			{
				$this->link['page']['previous'] = '';
			}
			if ($page < $pagecount)
			{
				$this->link['page']['next'] = $this->link['page'][$page+1];
			}
			else
			{
				$this->link['page']['next'] = '';
			}
			
			$this->link['picture'] = array();
			for ($i = 1;  $i <= count($allpictures); $i++)
			{
				$this->link['picture'][$i] = $allpictures[$i-1]->link;
			}
			$this->link['picture']['first'] = $this->link['picture'][1];
			$this->link['picture']['last'] = $this->link['picture'][count($allpictures)];
			if ($currentpicture_index > 0)
			{
				$this->link['picture']['previous'] =  $this->link['picture'][$currentpicture_index];
			}
			else
			{
				$this->link['picture']['previous'] = '';
			}
			if ($currentpicture_index<count($allpictures)-1)
			{
				$this->link['picture']['next'] =  $this->link['picture'][$currentpicture_index+2];
			}
			else
			{
				$this->link['picture']['next'] =  '';
			}
		}
		$this->smarty->assign('pagecount', $pagecount);
		$this->smarty->assign('pagenumber', $page);
		$this->smarty->assign_by_ref('picture', $tpl_current_picture);
		$this->smarty->assign_by_ref('pictures', $pictures);
		$this->smarty->assign('picturecount', count($allpictures));
		return $currentpicture_index;
	}

	public function CheckImportPermissions()
	{
	  $dir = cms_join_path($this->GetModulePath(),'templates','db');
	  return (is_dir($dir) && is_writable($dir));
	}
	// ==== End Frontend Methods ====
}
?>
