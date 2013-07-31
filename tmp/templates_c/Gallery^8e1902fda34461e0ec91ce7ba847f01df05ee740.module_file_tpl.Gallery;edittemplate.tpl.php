<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 12:45:21
         compiled from "module_file_tpl:Gallery;edittemplate.tpl" */ ?>
<?php /*%%SmartyHeaderCode:65697505451f7fbb1832592-83436791%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e1902fda34461e0ec91ce7ba847f01df05ee740' => 
    array (
      0 => 'module_file_tpl:Gallery;edittemplate.tpl',
      1 => 1375151951,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '65697505451f7fbb1832592-83436791',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'title' => 0,
    'formstart' => 0,
    'hidden' => 0,
    'prompt_templatename' => 0,
    'templatename' => 0,
    'prompt_thumbnailsize' => 0,
    'thumbnailsize' => 0,
    'prompt_maxnumber' => 0,
    'maxnumber' => 0,
    'showallimages' => 0,
    'prompt_sortingoptions' => 0,
    'sortingoptions' => 0,
    'submit' => 0,
    'cancel' => 0,
    'apply' => 0,
    'reset' => 0,
    'prompt_template' => 0,
    'template' => 0,
    'availablevariables' => 0,
    'availablevariableslink' => 0,
    'availablevariableslist' => 0,
    'prompt_templatecss' => 0,
    'templatecss' => 0,
    'prompt_templatejs' => 0,
    'templatejs' => 0,
    'formend' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f7fbb18949f1_49552671',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f7fbb18949f1_49552671')) {function content_51f7fbb18949f1_49552671($_smarty_tpl) {?><div class="pageoverflow">
<h3><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h3>
</div>
<?php echo $_smarty_tpl->tpl_vars['formstart']->value;?>
<?php echo $_smarty_tpl->tpl_vars['hidden']->value;?>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_templatename']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['templatename']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_thumbnailsize']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['thumbnailsize']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_maxnumber']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['maxnumber']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['showallimages']->value;?>
)</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_sortingoptions']->value;?>
:</p>
  <fieldset class="pageinput" style="width:400px; padding:6px;"><?php echo $_smarty_tpl->tpl_vars['sortingoptions']->value;?>
</fieldset>
</div>

<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
<?php echo $_smarty_tpl->tpl_vars['cancel']->value;?>
<?php echo $_smarty_tpl->tpl_vars['apply']->value;?>
<?php echo $_smarty_tpl->tpl_vars['reset']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_template']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['template']->value;?>
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
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_templatecss']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['templatecss']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_templatejs']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['templatejs']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
<?php echo $_smarty_tpl->tpl_vars['cancel']->value;?>
<?php echo $_smarty_tpl->tpl_vars['apply']->value;?>
<?php echo $_smarty_tpl->tpl_vars['reset']->value;?>
</p>
</div>
<?php echo $_smarty_tpl->tpl_vars['formend']->value;?>

<?php }} ?>