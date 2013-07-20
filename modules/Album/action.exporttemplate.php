<?php
if (!isset($gCms)) exit;


if( !isset($params['tplname']) )
{
  $params = array('active_tab'=>'file_templates','tab_error'=>$this->Lang('error_param'));
  $this->Redirect($id,'defaultadmin',$returnid,$params);
}
$tplname = trim($params['tplname']);
$basedir = cms_join_path($this->GetModulePath(),'templates','db');
$tpldir = cms_join_path($this->GetModulePath(),'templates','db',$tplname);
$tpldata = $this->GetTemplate($tplname);
if( !$tpldata ) 
  {
    $params = array('active_tab'=>'file_templates','tab_error'=>$this->Lang('error_template'));
    $this->Redirect($id,'defaultadmin',$returnid,$params);
  }
$query = 'SELECT * FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name = ?';
$row = $db->GetRow($query,array($tplname));

function _addCDataChild(SimpleXMLElement $e,$name,$cdata_text)
{
  $child = $e->addChild($name);
  $node = dom_import_simplexml($child);
  $no = $node->ownerDocument;
  $node->appendChild($no->createCDataSection($cdata_text));
}

$XML = new SimpleXMLElement('<AlbumTemplate></AlbumTemplate>');
_addCDataChild($XML,'name',$tplname);
_addCDataChild($XML,'template',base64_encode($tpldata));
if( strlen($row['metadata']) )
  {
    _addCDataChild($XML,'metadata',base64_encode($row['metadata']));
  }
if( $row['info'] )
  {
    _addCDataChild($XML,'info',base64_encode($row['info']));
  }
if( is_dir($tpldir) )
  {
    $child = $XML->AddChild('files');
    $rdi = new RecursiveDirectoryIterator($tpldir);
    $rii = new RecursiveIteratorIterator($rdi);
    foreach( $rii as $file => $info )
      {
	if( !$info->isFile() ) continue;
	if( strpos($info->GetPathInfo(),'.svn') !== FALSE ) continue;
	if( !startswith($info->GetPathInfo(),$tpldir) ) continue;
	if( endswith($info->GetPathInfo(),'metadata.txt') ) continue;
	if( endswith($info->GetPathInfo(),'~') ) continue;
	if( endswith($info->GetPathInfo(),'#') ) continue;
	if( startswith(basename($info->GetPathInfo()),'#') ) continue;

	$relpath = substr($info->GetPathInfo(),strlen($tpldir)+1);
	$data = base64_encode(file_get_contents($info->GetPathInfo()));
	$file = $child->AddChild('file');
	_addCDataChild($file,'name',$relpath);
	_addCDataChild($file,'data',$data);
      }
  }

$handlers = ob_list_handlers(); 
for ($cnt = 0; $cnt < sizeof($handlers); $cnt++) { ob_end_clean(); }
header('Pragma: public');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header('Cache-Control: private',false);
header('Content-Description: File Transfer');
header('Content-Type: application/octet-stream');
header("Content-Disposition: attachment; filename=\"album_$tplname.xml\"" );
header('Content-Transfer-Encoding: binary');
echo $XML->asXML();
exit();

?>