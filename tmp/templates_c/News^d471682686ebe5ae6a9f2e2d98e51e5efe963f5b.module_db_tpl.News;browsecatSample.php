<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 21:26:31
         compiled from "module_db_tpl:News;browsecatSample" */ ?>
<?php /*%%SmartyHeaderCode:28970482951e9f55783ee94-61430530%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd471682686ebe5ae6a9f2e2d98e51e5efe963f5b' => 
    array (
      0 => 'module_db_tpl:News;browsecatSample',
      1 => 1373760544,
      2 => 'module_db_tpl',
    ),
  ),
  'nocache_hash' => '28970482951e9f55783ee94-61430530',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'count' => 0,
    'cats' => 0,
    'node' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51e9f557888209_75961488',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9f557888209_75961488')) {function content_51e9f557888209_75961488($_smarty_tpl) {?><?php if (!is_callable('smarty_function_repeat')) include '/Users/darfine/Sites/barn/plugins/function.repeat.php';
?><?php if ($_smarty_tpl->tpl_vars['count']->value>0){?>
<ul class="list1">
<?php  $_smarty_tpl->tpl_vars['node'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['node']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cats']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['node']->key => $_smarty_tpl->tpl_vars['node']->value){
$_smarty_tpl->tpl_vars['node']->_loop = true;
?>
<?php if ($_smarty_tpl->tpl_vars['node']->value['depth']>$_smarty_tpl->tpl_vars['node']->value['prevdepth']){?>
<?php echo smarty_function_repeat(array('string'=>"<ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value['depth']-$_smarty_tpl->tpl_vars['node']->value['prevdepth']),$_smarty_tpl);?>

<?php }elseif($_smarty_tpl->tpl_vars['node']->value['depth']<$_smarty_tpl->tpl_vars['node']->value['prevdepth']){?>
<?php echo smarty_function_repeat(array('string'=>"</li></ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value['prevdepth']-$_smarty_tpl->tpl_vars['node']->value['depth']),$_smarty_tpl);?>

</li>
<?php }elseif($_smarty_tpl->tpl_vars['node']->value['index']>0){?></li>
<?php }?>
<li class="newscategory">
<?php if ($_smarty_tpl->tpl_vars['node']->value['count']>0){?>
	<a href="<?php echo $_smarty_tpl->tpl_vars['node']->value['url'];?>
"><?php echo $_smarty_tpl->tpl_vars['node']->value['news_category_name'];?>
</a> (<?php echo $_smarty_tpl->tpl_vars['node']->value['count'];?>
)<?php }else{ ?><span><?php echo $_smarty_tpl->tpl_vars['node']->value['news_category_name'];?>
 (0)</span><?php }?>
<?php } ?>
<?php echo smarty_function_repeat(array('string'=>"</li></ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value['depth']-1),$_smarty_tpl);?>
</li>
</ul>
<?php }?><?php }} ?>