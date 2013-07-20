<?php
if( !isset($gCms) ) exit;

$rootdir = cms_join_path($this->GetModulePath(),'templates','db');
$fileid = $id.'xmlfile';
$newname = '';
$translate = false;
if( !isset($_FILES[$fileid]) || $_FILES[$fileid]['name'] == '' || $_FILES[$fileid]['size'] == 0 )
  {
    $params = array('active_tab'=>'templates','tab_error'=>'error_noupload');
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }
if( $_FILES[$fileid]['error'] != 0 )
  {
    $params = array('active_tab'=>'templates','tab_error'=>'error_badupload');
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }
if( $_FILES[$fileid]['type'] != 'text/xml' )
  {
    $params = array('active_tab'=>'templates','tab_error'=>'error_baduploadtype');
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }

$reader = new XMLReader();
$ret = $reader->open($_FILES[$fileid]['tmp_name']);
if( $ret == 0 )
  {
    $params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }

// check to make sure we can write to the tempaltes dir.
if( !$this->CheckImportPermissions() )
  {
    $params = array('active_tab'=>'templates','tab_error'=>'error_badpermissions');
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }
if( isset($params['newname']) )
  {
    $newname = trim($params['newname']);
  }

if( $newname )
  {
    if( $this->TemplateExists($newname) )
      {
	$params = array('active_tab'=>'templates','tab_error'=>'error_templateexists');
	$this->Redirect($id,'defaultadmin',$returnid,$params);
      }
    if( is_dir(cms_join_path($this->GetModulePath(),'templates','db',$newname)) )
      {
	$params = array('active_tab'=>'templates','tab_error'=>'error_templateexists');
	$this->Redirect($id,'defaultadmin',$returnid,$params);
      }
  }

function album_translate_data($oldtplname,$newtplname,$b64data)
{
  if( strlen($b64data) == 0 )
    {
      throw new Exception('Attempting to import album xml file.  No data specified to translate');
    }

  $translate = TRUE;
  if( $newtplname == '' || $oldtplname == $newtplname ) 
    {
      // new name is the same as old name.. 
      // no need to do translation.
      $newtplname = $oldtplname;
      $translate = FALSE;
    }

  $data = base64_decode($b64data);
  if( strlen($data) == 0 )
    {
      throw new Exception('Attempting to import album xml file.  No data after decode');
    }

  if( $translate )
    {
      $fromtxt = "modules/Album/templates/db/$oldtplname";
      $totxt = "modules/Album/templates/db/$newtplname";

      $data = str_replace($fromtxt,$totxt,$data);
    }

  return $data;
}

function album_write_xml_tplfile($rootdir,$oldtplname,$newtplname,$data)
{
  if( !is_dir($rootdir) )
    {
      throw new Exception('Attempting to import album xml file.  Directory '.$rootdir.' does not exist');
    }
  if( strlen($data) == 0 )
    {
      throw new Exception('Attempting to import album xml file.  No data specified for '.$newtplname);
    }

  if( $newtplname == '' || $oldtplname == $newtplname ) 
    {
      // new name is the same as old name.. 
      // no need to do translation.
      $newtplname = $oldtplname;
    }

  $destname = $rootdir.'/'.$newtplname.'.tpl';
  if( file_exists($destname) )
    {
      throw new Exception('Attempting to import album xml file.  File '.$filename.' already exists in destination directory');
    }

  file_put_contents($destname,$data);
}

function album_write_xml_datafile($rootdir,$oldtplname,$newtplname,$filename,$data)
{
  if( !is_dir($rootdir) )
    {
      throw new Exception('Attempting to import album xml file.  Directory '.$rootdir.' does not exist');
    }
  if( strlen($data) == 0 )
    {
      throw new Exception('Attempting to import album xml file.  No data specified for '.$filename);
    }

  if( $newtplname == '' || $oldtplname == $newtplname ) 
    {
      // new name is the same as old name.. 
      // no need to do translation.
      $newtplname = $oldtplname;
    }

  $destname = $rootdir.'/'.$newtplname.'/'.$filename;
  if( file_exists($destname) )
    {
      throw new Exception('Attempting to import album xml file.  File '.$filename.' already exists in destination directory');
    }
  $destdir = dirname($destname);
  @mkdir($destdir,0777,TRUE); // create the path to this file.
  file_put_contents($destname,$data);
}

function album_write_xml_dbdata($field,$tplname,$data)
{
  $db = cmsms()->GetDb();
  // check if row exists.
  $query = 'SELECT template_name FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name = ?';
  $tmp = $db->GetOne($query,array($tplname));
  if( $tmp )
    {
      // update
      $query = 'UPDATE '.cms_db_prefix().'module_album_templateextra SET ? = ? WHERE template_name = ?';
      $db->Excute($query,array($field,$data,$tplname));
    }
  else
    {
      // insert
      $query = 'INSERT INTO '.cms_db_prefix().'module_album_templateextra (template_name,'.$field.') VALUES (?,?)';
      $db->Execute($query,array($tplname,$data));
    }
}

$in_albumtemplate = FALSE;
$in_files = FALSE;
$in_file = FALSE;
$tpl_name = '';
$cur_filename = '';
$template = '';
$metadata = '';
$info = '';
while( $reader->read() )
  {
    switch( $reader->nodeType )
      {
      case XMLReader::ELEMENT:
	switch( $reader->localName )
	  {
	  case 'AlbumTemplate':
	    $in_albumtemplate = 1;
	    break;

	  case 'name':
	    $reader->read();
	    $value = $reader->value;
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( !$in_files )
	      {
		if( $tpl_name != '' )
		  {
		    $params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		    $this->Redirect($id,'defaultadmin',$returnid,$params);
		  }
		$tpl_name = $reader->value;
		if( $newname == '' && $this->TemplateExists($tpl_name) )
		  {
		    $params = array('active_tab'=>'templates','tab_error'=>'error_templateexists');
		    $this->Redirect($id,'defaultadmin',$returnid,$params);
		  }
	      }
	    else if( !$in_file )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    else if( !$template )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    else
	      {
		// all conditions right... we have a new filename.
		$cur_filename = $value;
		// check for duplicate file.
	      }
	    break;

	  case 'template':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $in_files || $in_file )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( !$tpl_name )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $template )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $reader->read();
	    $template = album_translate_data($tpl_name,$newname,$reader->value);
	    $this->SetTemplate(($newname == ''?$tpl_name:$newname),$template);
	    album_write_xml_tplfile($rootdir,$tpl_name,$newname,$template);
	    break;

	  case 'metadata':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $in_files || $in_file )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( !$tpl_name )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $metadata )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $reader->read();
	    $metadata = album_translate_data($tpl_name,$newname,$reader->value);
	    album_write_xml_datafile($rootdir,$tpl_name,$newname,'metadata.txt',$metadata);
	    album_write_xml_dbdata('metadata',($newname==''?$tpl_name:$newname),$metadata);
	    break;

	  case 'info':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $in_files || $in_file )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $info )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $reader->read();
	    $info = album_translate_data($tpl_name,$newname,$reader->value);
	    album_write_xml_dbdata('info',$newname,$info);
	    break;

	  case 'data':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( !$in_files )
	      {
		if( $tpl_name != '' )
		  {
		    $params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		    $this->Redirect($id,'defaultadmin',$returnid,$params);
		  }
		$tpl_name = $reader->value;
		// check for duplicate template name.
	      }
	    else if( !$in_file || !$cur_filename )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $reader->read();
	    $data = album_translate_data($tpl_name,$newname,$reader->value);
	    album_write_xml_datafile($rootdir,$tpl_name,$newname,$cur_filename,$data);
	    break;

	  case 'files':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $in_files )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $in_files = TRUE;
	    break;

	  case 'file':
	    if( !$in_albumtemplate )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( !$in_files )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    if( $in_file )
	      {
		$params = array('active_tab'=>'templates','tab_error'=>'error_badxmlformat');
		$this->Redirect($id,'defaultadmin',$returnid,$params);
	      }
	    $in_file = TRUE;
	    break;
	  }
	break;

      case XMLReader::END_ELEMENT:
	switch( $reader->localName )
	  {
	  case 'AlbumTemplate':
	    $in_albumtemplate = 0;
	    $template = '';
	    $metadata = '';
	    $info = '';
	    $tpl_name = '';
	    $in_files = 0;
	    $in_file = 0;
	    $cur_filename = '';
	    break;
	    
	  case 'files':
	    $in_files = 0;
	    $cur_filename = '';
	    break;

	  case 'file':
	    $in_file = 0;
	    $cur_filename = '';
	    break;
	  }
	break;
      }
  }

$params = array('active_tab'=>'templates','tab_message'=>'msg_import_good');
$this->Redirect($id,'defaultadmin',$returnid,$params);


?>