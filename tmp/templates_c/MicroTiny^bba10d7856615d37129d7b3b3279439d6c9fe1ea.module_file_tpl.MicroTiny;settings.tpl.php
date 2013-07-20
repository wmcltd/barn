<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 21:06:58
         compiled from "module_file_tpl:MicroTiny;settings.tpl" */ ?>
<?php /*%%SmartyHeaderCode:138941546851e9f0c2508ee1-91876545%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bba10d7856615d37129d7b3b3279439d6c9fe1ea' => 
    array (
      0 => 'module_file_tpl:MicroTiny;settings.tpl',
      1 => 1334362500,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '138941546851e9f0c2508ee1-91876545',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'startform' => 0,
    'allowimages_text' => 0,
    'allowimages_input' => 0,
    'allowimages_help' => 0,
    'show_statusbar' => 0,
    'input_show_statusbar' => 0,
    'help_show_statusbar' => 0,
    'allow_resize' => 0,
    'input_allow_resize' => 0,
    'help_allow_resize' => 0,
    'strip_background' => 0,
    'input_strip_background' => 0,
    'help_strip_background' => 0,
    'force_blackonwhite' => 0,
    'input_force_blackonwhite' => 0,
    'help_force_blackonwhite' => 0,
    'css_styles_text' => 0,
    'css_styles_help' => 0,
    'css_styles_input' => 0,
    'css_styles_help2' => 0,
    'submit' => 0,
    'endform' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51e9f0c2564516_88033179',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9f0c2564516_88033179')) {function content_51e9f0c2564516_88033179($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['startform']->value;?>


<div class="pageoverflow">
	<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['allowimages_text']->value;?>
:</p>
	<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['allowimages_input']->value;?>
<?php echo $_smarty_tpl->tpl_vars['allowimages_help']->value;?>
</p>
</div>

<div class="pageoverflow">
        <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['show_statusbar']->value;?>
:</p> 
        <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_show_statusbar']->value;?>
<?php echo $_smarty_tpl->tpl_vars['help_show_statusbar']->value;?>
</p>
</div>

<div class="pageoverflow">
        <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['allow_resize']->value;?>
:</p> 
        <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_allow_resize']->value;?>
<?php echo $_smarty_tpl->tpl_vars['help_allow_resize']->value;?>
</p>
</div>

<div class="pageoverflow">
        <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['strip_background']->value;?>
:</p> 
        <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_strip_background']->value;?>
<?php echo $_smarty_tpl->tpl_vars['help_strip_background']->value;?>
</p>
</div>

<div class="pageoverflow">
        <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['force_blackonwhite']->value;?>
:</p> 
        <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['input_force_blackonwhite']->value;?>
<?php echo $_smarty_tpl->tpl_vars['help_force_blackonwhite']->value;?>
</p>
</div>

<div class="pageoverflow">
	<p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['css_styles_text']->value;?>
:</p>
	<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['css_styles_help']->value;?>
 <br/> <?php echo $_smarty_tpl->tpl_vars['css_styles_input']->value;?>
<br/><?php echo $_smarty_tpl->tpl_vars['css_styles_help2']->value;?>
</p>
</div>

<div class="pageoverflow">
	<p class="pagetext">&nbsp;</p>
	<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
</p>
</div>

<?php echo $_smarty_tpl->tpl_vars['endform']->value;?>

<?php }} ?>