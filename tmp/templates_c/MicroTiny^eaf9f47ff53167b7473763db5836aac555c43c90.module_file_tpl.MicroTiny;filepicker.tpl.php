<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 20:03:10
         compiled from "module_file_tpl:MicroTiny;filepicker.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3544964751f8624ee6bbd8-47302194%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eaf9f47ff53167b7473763db5836aac555c43c90' => 
    array (
      0 => 'module_file_tpl:MicroTiny;filepicker.tpl',
      1 => 1338147282,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '3544964751f8624ee6bbd8-47302194',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filepickertitle' => 0,
    'rooturl' => 0,
    'isimage' => 0,
    'youareintext' => 0,
    'startpath' => 0,
    'dimensionstext' => 0,
    'sizetext' => 0,
    'files' => 0,
    'file' => 0,
    'filepickerstyle' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f8624f00cc51_93517643',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f8624f00cc51_93517643')) {function content_51f8624f00cc51_93517643($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->tpl_vars['filepickertitle']->value;?>
</title>
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/filepicker.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/tinymce/themes/advanced/skins/default/dialog.css" />
<script language="javascript" type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/tinymce/tiny_mce_popup.js"></script>

<script language="javascript" type="text/javascript">

function SubmitElement(filename) {
  var URL = filename;
  var win = tinyMCEPopup.getWindowArg("window");

  // insert information now
  win.document.getElementById(tinyMCEPopup.getWindowArg("input")).value = URL;

  
  <?php if ($_smarty_tpl->tpl_vars['isimage']->value=='1'){?>
  // for image browsers: update image dimensions
  if (win.ImageDialog.getImageData) win.ImageDialog.getImageData();
  if (win.ImageDialog.showPreviewImage) win.ImageDialog.showPreviewImage(URL);
  <?php }?> 
  

   // close popup window
  tinyMCEPopup.close();
}

</script>
</head>
<body>
<div id="full-fp">

<div class="header">

<fieldset>
<legend><?php echo $_smarty_tpl->tpl_vars['youareintext']->value;?>
</legend>
<h2><img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/dir.gif" title="<?php echo $_smarty_tpl->tpl_vars['startpath']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['startpath']->value;?>
" /><?php echo $_smarty_tpl->tpl_vars['startpath']->value;?>
</h2>
</fieldset>

</div>
<div class="filelist">
<table width="100%">
<thead>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td width="1%" align="right" style="white-space:nowrap;"><b><?php echo $_smarty_tpl->tpl_vars['dimensionstext']->value;?>
</b></td>
<td width="1%" align="right" style="white-space:nowrap;"><b><?php echo $_smarty_tpl->tpl_vars['sizetext']->value;?>
</b></td>
</tr>
</thead>
  <?php  $_smarty_tpl->tpl_vars['file'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['file']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['files']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['file']->key => $_smarty_tpl->tpl_vars['file']->value){
$_smarty_tpl->tpl_vars['file']->_loop = true;
?>
  <tr>
  <?php if ($_smarty_tpl->tpl_vars['file']->value->isdir=="1"){?>
    <td width="1%" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/dir.gif" title="Dir" alt="Dir" /></td>
    <td><?php echo $_smarty_tpl->tpl_vars['file']->value->namelink;?>
 </td>
    <td width="1%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
  <?php }else{ ?>
    <td align="right">
    <?php if ($_smarty_tpl->tpl_vars['filepickerstyle']->value=="filename"){?>
      <?php if ($_smarty_tpl->tpl_vars['file']->value->isimage=="1"){?>
      <img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/images.gif" title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" />
      <?php }elseif($_smarty_tpl->tpl_vars['file']->value->fileicon!=''){?>
        <?php echo $_smarty_tpl->tpl_vars['file']->value->fileicon;?>

      <?php }else{ ?>

      <img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/fileicon.gif" title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" />
      <?php }?>
    <?php }else{ ?>
      <div class="thumbnail">
      <a title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" href='#' onclick='SubmitElement("<?php echo $_smarty_tpl->tpl_vars['file']->value->fullurl;?>
")'>
      <?php if (isset($_smarty_tpl->tpl_vars['file']->value->thumbnail)&&$_smarty_tpl->tpl_vars['file']->value->thumbnail!=''){?>
      
        <?php echo $_smarty_tpl->tpl_vars['file']->value->thumbnail;?>

      <?php }else{ ?>
      
        <?php if ($_smarty_tpl->tpl_vars['file']->value->isimage=="1"){?>        
        <img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/images.gif" title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" />
        <?php }elseif($_smarty_tpl->tpl_vars['file']->value->fileicon!=''){?>
        <?php echo $_smarty_tpl->tpl_vars['file']->value->fileicon;?>

        <?php }else{ ?>
        <img src="<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/MicroTiny/images/fileicon.gif" title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" />
        <?php }?>
      <?php }?>
      </a>
      </div>
    <?php }?>
    </td>
    <td align="left">
       <a  title="<?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>
" href='#' onclick='SubmitElement("<?php echo $_smarty_tpl->tpl_vars['file']->value->fullurl;?>
")'>
     <?php echo $_smarty_tpl->tpl_vars['file']->value->name;?>

       </a>
    </td>
    <td width="1%" align="right"><?php echo $_smarty_tpl->tpl_vars['file']->value->dimensions;?>
</td>
    <td width="1%" align="right"><?php echo $_smarty_tpl->tpl_vars['file']->value->size;?>
</td>
    <td width="1%" align="right"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['file']->value->deletelink)===null||$tmp==='' ? '' : $tmp);?>
</td>
  <?php }?>
  </tr>
  <?php } ?>
<tr><td colspan="4">&nbsp;</td></tr>
</table>
</div>
</div><!--end full-fp-->
</body>
</html>
<?php }} ?>