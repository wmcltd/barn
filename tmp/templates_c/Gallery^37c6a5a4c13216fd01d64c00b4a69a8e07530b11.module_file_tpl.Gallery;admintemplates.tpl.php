<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 17:02:22
         compiled from "module_file_tpl:Gallery;admintemplates.tpl" */ ?>
<?php /*%%SmartyHeaderCode:67004406751f837eecb5247-60492428%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '37c6a5a4c13216fd01d64c00b4a69a8e07530b11' => 
    array (
      0 => 'module_file_tpl:Gallery;admintemplates.tpl',
      1 => 1375151951,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '67004406751f837eecb5247-60492428',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'newtemplatelink' => 0,
    'nameprompt' => 0,
    'versionprompt' => 0,
    'aboutprompt' => 0,
    'defaultprompt' => 0,
    'visibleprompt' => 0,
    'items' => 0,
    'entry' => 0,
    'formstart' => 0,
    'title_importxml' => 0,
    'importxmlnote' => 0,
    'prompt_importxml' => 0,
    'importxml' => 0,
    'prompt_overwrite' => 0,
    'overwrite' => 0,
    'submit' => 0,
    'formend' => 0,
    'formstart2' => 0,
    'title_singleimg_template' => 0,
    'prompt_singleimg_template' => 0,
    'singleimg_template' => 0,
    'prompt_singleimg_template_html' => 0,
    'singleimg_template_html' => 0,
    'availablevariables' => 0,
    'availablevariableslink' => 0,
    'availablevariableslist' => 0,
    'submit2' => 0,
    'formend2' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f837eed6a271_89243520',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f837eed6a271_89243520')) {function content_51f837eed6a271_89243520($_smarty_tpl) {?><div class="pageoverflow">
  <p class="pageoptions"><?php echo $_smarty_tpl->tpl_vars['newtemplatelink']->value;?>
</p>
</div>
<div class="pageoverflow">
<table cellspacing="0" class="pagetable">
  <thead>
    <tr>
      <th class="pagew50"><?php echo $_smarty_tpl->tpl_vars['nameprompt']->value;?>
</th>
      <th class="pagew10"><?php echo $_smarty_tpl->tpl_vars['versionprompt']->value;?>
</th>
      <th class="pagew10"><?php echo $_smarty_tpl->tpl_vars['aboutprompt']->value;?>
</th>
      <th class="pagew10"><?php echo $_smarty_tpl->tpl_vars['defaultprompt']->value;?>
</th>
      <th class="pagew10"><?php echo $_smarty_tpl->tpl_vars['visibleprompt']->value;?>
</th>
      <th class="pageicon">&nbsp;</th>
      <th class="pageicon">&nbsp;</th>
      <th class="pageicon">&nbsp;</th>
      <th class="pageicon">Export</th>
    </tr>
  </thead>
<?php  $_smarty_tpl->tpl_vars['entry'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['entry']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['entry']->key => $_smarty_tpl->tpl_vars['entry']->value){
$_smarty_tpl->tpl_vars['entry']->_loop = true;
?>
   <tr class="<?php echo $_smarty_tpl->tpl_vars['entry']->value->rowclass;?>
">
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->name;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->version;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->about;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->default;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->visible;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->editlink;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->copylink;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->deletelink;?>
</td>
     <td><?php echo $_smarty_tpl->tpl_vars['entry']->value->export;?>
</td>
   </tr>
<?php } ?>
</table>
</div>
<div class="pageoverflow">
  <p class="pageoptions"><?php echo $_smarty_tpl->tpl_vars['newtemplatelink']->value;?>
</p>
</div>

<?php echo $_smarty_tpl->tpl_vars['formstart']->value;?>

<fieldset>
<legend><?php echo $_smarty_tpl->tpl_vars['title_importxml']->value;?>
</legend>

<div class="pageoverflow">
<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['importxmlnote']->value;?>
</p>
</div>

<div class="pageoverflow">
<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_importxml']->value;?>
:</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['importxml']->value;?>

</p>
</div>

<div class="pageoverflow">
<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_overwrite']->value;?>
:</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['overwrite']->value;?>

</p>
</div>

<div class="pageoverflow">
<p class="pagetext">&nbsp;</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['submit']->value;?>

</p>
</div>

</fieldset>
<?php echo $_smarty_tpl->tpl_vars['formend']->value;?>


<div class="pageoverflow">
  &nbsp;
</div>

<?php echo $_smarty_tpl->tpl_vars['formstart2']->value;?>

<fieldset>
<legend><?php echo $_smarty_tpl->tpl_vars['title_singleimg_template']->value;?>
</legend>

<div class="pageoverflow">
<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_singleimg_template']->value;?>
:</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['singleimg_template']->value;?>

</p>
</div>

<div class="pageoverflow">
<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_singleimg_template_html']->value;?>
:</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['singleimg_template_html']->value;?>

</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['availablevariables']->value;?>
: <a href="#" onclick="togglecollapse('variablesinfo'); return false;"><?php echo $_smarty_tpl->tpl_vars['availablevariableslink']->value;?>
</a></p>
</div>
<div id="variablesinfo" style="display: none;">
<div class="pageoverflow">
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['availablevariableslist']->value;?>
</p>
</div>
</div>

<div class="pageoverflow">
<p class="pagetext">&nbsp;</p>
<p class="pageinput">
<?php echo $_smarty_tpl->tpl_vars['submit2']->value;?>

</p>
</div>

</fieldset>
<?php echo $_smarty_tpl->tpl_vars['formend2']->value;?>
<?php }} ?>