<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 21:07:06
         compiled from "/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/messages.tpl" */ ?>
<?php /*%%SmartyHeaderCode:155220321251e9f0ca93fbc2-99765131%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '46e2e7c371cc565f41eb7789e17eb44ac84383ad' => 
    array (
      0 => '/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/messages.tpl',
      1 => 1327870815,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '155220321251e9f0ca93fbc2-99765131',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'errors' => 0,
    'error' => 0,
    'messages' => 0,
    'message' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51e9f0ca96e668_62571041',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9f0ca96e668_62571041')) {function content_51e9f0ca96e668_62571041($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['errors']->value)&&$_smarty_tpl->tpl_vars['errors']->value[0]!=''){?><aside class="message pageerrorcontainer" role="alert"><?php  $_smarty_tpl->tpl_vars['error'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['error']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['errors']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['error']->key => $_smarty_tpl->tpl_vars['error']->value){
$_smarty_tpl->tpl_vars['error']->_loop = true;
?><?php if ($_smarty_tpl->tpl_vars['error']->value){?><p><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</p><?php }?><?php } ?></aside><?php }?><?php if (isset($_smarty_tpl->tpl_vars['messages']->value)&&$_smarty_tpl->tpl_vars['messages']->value[0]!=''){?><aside class="message pagemcontainer" role="status"><?php  $_smarty_tpl->tpl_vars['message'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['message']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['messages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['message']->key => $_smarty_tpl->tpl_vars['message']->value){
$_smarty_tpl->tpl_vars['message']->_loop = true;
?><?php if ($_smarty_tpl->tpl_vars['message']->value){?><p><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</p><?php }?><?php } ?></aside><?php }?>
<?php }} ?>