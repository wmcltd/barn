<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 21:07:06
         compiled from "/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/shortcuts.tpl" */ ?>
<?php /*%%SmartyHeaderCode:104171119151e9f0ca780474-40069650%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b01fc5ca5aa410b2fa8cfaebe35e295bccbe9cd6' => 
    array (
      0 => '/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/shortcuts.tpl',
      1 => 1353064585,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '104171119151e9f0ca780474-40069650',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_help_url' => 0,
    'secureparam' => 0,
    'marks' => 0,
    'mark' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51e9f0ca7e9c51_74966473',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9f0ca7e9c51_74966473')) {function content_51e9f0ca7e9c51_74966473($_smarty_tpl) {?><?php if (!is_callable('smarty_function_root_url')) include '/Users/darfine/Sites/barn/plugins/function.root_url.php';
?><div class="shortcuts"><ul class="cf"><li class="help"><?php if (isset($_smarty_tpl->tpl_vars['module_help_url']->value)){?><a href="<?php echo $_smarty_tpl->tpl_vars['module_help_url']->value;?>
" title="<?php echo lang('module_help');?>
"><?php echo lang('module_help');?>
</a><?php }else{ ?><a href="http://docs.cmsmadesimple.org/" rel="external" title="<?php echo lang('documentation');?>
"><?php echo lang('documentation');?>
</a><?php }?></li><li class="settings"><a href="myaccount.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('myaccount');?>
"><?php echo lang('myaccount');?>
</a></li><?php if (isset($_smarty_tpl->tpl_vars['marks']->value)){?><li class="favorites open"><a href="listbookmarks.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('bookmarks');?>
"><?php echo lang('bookmarks');?>
</a></li><?php }?><li class="view-site"><a href="<?php echo smarty_function_root_url(array(),$_smarty_tpl);?>
/index.php" rel="external" target="_blank" title="<?php echo lang('viewsite');?>
"><?php echo lang('viewsite');?>
</a></li><li class="logout"><a href="logout.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('logout');?>
"><?php echo lang('logout');?>
</a></li></ul></div><?php if (isset($_smarty_tpl->tpl_vars['marks']->value)){?><div class="dialog invisible" role="dialog" title="<?php echo lang('bookmarks');?>
"><?php if (count($_smarty_tpl->tpl_vars['marks']->value)){?><h3><?php echo lang('user_created');?>
</h3><ul><?php  $_smarty_tpl->tpl_vars['mark'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['mark']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['marks']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['mark']->key => $_smarty_tpl->tpl_vars['mark']->value){
$_smarty_tpl->tpl_vars['mark']->_loop = true;
?><li><a<?php if ($_smarty_tpl->tpl_vars['mark']->value->bookmark_id>0){?> class="bookmark"<?php }?> href="<?php echo $_smarty_tpl->tpl_vars['mark']->value->url;?>
" title="<?php echo $_smarty_tpl->tpl_vars['mark']->value->title;?>
"><?php echo $_smarty_tpl->tpl_vars['mark']->value->title;?>
</a></li><?php } ?></ul><?php }?><h3><?php echo lang('help');?>
</h3><ul><li><a rel="external" class="external" href="http://docs.cmsmadesimple.org" title="<?php echo lang('documentation');?>
"><?php echo lang('documentation');?>
</a></li><li><a rel="external" class="external" href="http://forum.cmsmadesimple.org" title="<?php echo lang('forums');?>
"><?php echo lang('forums');?>
</a></li><li><a rel="external" class="external" href="http://cmsmadesimple.org/main/support/IRC"><?php echo lang('irc');?>
</a></li></ul></div><?php }?><?php }} ?>