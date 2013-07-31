<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 17:02:22
         compiled from "module_file_tpl:Gallery;adminoptions.tpl" */ ?>
<?php /*%%SmartyHeaderCode:23761883151f837eee810d8-69609381%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '582e58f35296f2037ef5cb274589637dcdcafa91' => 
    array (
      0 => 'module_file_tpl:Gallery;adminoptions.tpl',
      1 => 1375151951,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '23761883151f837eee810d8-69609381',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'startform' => 0,
    'urlprefix' => 0,
    'input_urlprefix' => 0,
    'urlprefix_help' => 0,
    'allowed_extensions' => 0,
    'input_allowed_extensions' => 0,
    'prompt_imagesize' => 0,
    'imagesize' => 0,
    'imagejpgquality' => 0,
    'input_imagejpgquality' => 0,
    'jpgquality_help' => 0,
    'thumbjpgquality' => 0,
    'input_thumbjpgquality' => 0,
    'use_permissions' => 0,
    'input_use_permissions' => 0,
    'newgalleries_active' => 0,
    'input_newgalleries_active' => 0,
    'use_comment_wysiwyg' => 0,
    'input_use_comment_wysiwyg' => 0,
    'editdirdates' => 0,
    'input_editdirdates' => 0,
    'editfiledates' => 0,
    'input_editfiledates' => 0,
    'fe_folderpath' => 0,
    'input_fe_folderpath' => 0,
    'be_folderpath' => 0,
    'input_be_folderpath' => 0,
    'updatethumbs' => 0,
    'input_updatethumbs' => 0,
    'submit' => 0,
    'endform' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f837eef12f38_96393999',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f837eef12f38_96393999')) {function content_51f837eef12f38_96393999($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['startform']->value;?>

	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['urlprefix']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_urlprefix']->value;?>
<br /><?php echo $_smarty_tpl->tpl_vars['urlprefix_help']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['allowed_extensions']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_allowed_extensions']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_imagesize']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['imagesize']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['imagejpgquality']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_imagejpgquality']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['jpgquality_help']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['thumbjpgquality']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_thumbjpgquality']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['jpgquality_help']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['use_permissions']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_use_permissions']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['newgalleries_active']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_newgalleries_active']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['use_comment_wysiwyg']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_use_comment_wysiwyg']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['editdirdates']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_editdirdates']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['editfiledates']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_editfiledates']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['fe_folderpath']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_fe_folderpath']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['be_folderpath']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_be_folderpath']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['updatethumbs']->value;?>
:</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_updatethumbs']->value;?>
</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
</p>
	</div>
<?php echo $_smarty_tpl->tpl_vars['endform']->value;?>

<?php }} ?>