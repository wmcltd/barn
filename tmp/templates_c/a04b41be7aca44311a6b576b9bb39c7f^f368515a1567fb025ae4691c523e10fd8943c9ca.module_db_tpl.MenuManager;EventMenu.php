<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 13:10:16
         compiled from "module_db_tpl:MenuManager;EventMenu" */ ?>
<?php /*%%SmartyHeaderCode:109350473451f8018882e0e2-47931880%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f368515a1567fb025ae4691c523e10fd8943c9ca' => 
    array (
      0 => 'module_db_tpl:MenuManager;EventMenu',
      1 => 1373851797,
      2 => 'module_db_tpl',
    ),
  ),
  'nocache_hash' => '109350473451f8018882e0e2-47931880',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'count' => 0,
    'nodelist' => 0,
    'node' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f801888bcea3_52078203',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f801888bcea3_52078203')) {function content_51f801888bcea3_52078203($_smarty_tpl) {?><?php if (!is_callable('smarty_function_repeat')) include '/Users/darfine/Sites/barn/plugins/function.repeat.php';
?> 
<?php if ($_smarty_tpl->tpl_vars['count']->value>0){?>
<ul class="clearfix">
<?php  $_smarty_tpl->tpl_vars['node'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['node']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['nodelist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['node']->key => $_smarty_tpl->tpl_vars['node']->value){
$_smarty_tpl->tpl_vars['node']->_loop = true;
?>
<?php if ($_smarty_tpl->tpl_vars['node']->value->depth>$_smarty_tpl->tpl_vars['node']->value->prevdepth){?>
<?php echo smarty_function_repeat(array('string'=>"<ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value->depth-$_smarty_tpl->tpl_vars['node']->value->prevdepth),$_smarty_tpl);?>

<?php }elseif($_smarty_tpl->tpl_vars['node']->value->depth<$_smarty_tpl->tpl_vars['node']->value->prevdepth){?>
<?php echo smarty_function_repeat(array('string'=>"</li></ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value->prevdepth-$_smarty_tpl->tpl_vars['node']->value->depth),$_smarty_tpl);?>

</li>
<?php }elseif($_smarty_tpl->tpl_vars['node']->value->index>0){?></li>
<?php }?>



<!--
<?php if ($_smarty_tpl->tpl_vars['node']->value->current==true){?>
<li><a href="<?php echo $_smarty_tpl->tpl_vars['node']->value->url;?>
" class="currentpage"<?php if ($_smarty_tpl->tpl_vars['node']->value->target!=''){?> target="<?php echo $_smarty_tpl->tpl_vars['node']->value->target;?>
"<?php }?>> <?php echo $_smarty_tpl->tpl_vars['node']->value->menutext;?>
 </a>


<?php }elseif($_smarty_tpl->tpl_vars['node']->value->parent==true&&$_smarty_tpl->tpl_vars['node']->value->depth==1&&$_smarty_tpl->tpl_vars['node']->value->type!='sectionheader'&&$_smarty_tpl->tpl_vars['node']->value->type!='separator'){?>
<li class="activeparent"> <a href="<?php echo $_smarty_tpl->tpl_vars['node']->value->url;?>
" class="activeparent"<?php if ($_smarty_tpl->tpl_vars['node']->value->target!=''){?> target="<?php echo $_smarty_tpl->tpl_vars['node']->value->target;?>
"<?php }?>> <?php echo $_smarty_tpl->tpl_vars['node']->value->menutext;?>
 </a>

<?php }elseif($_smarty_tpl->tpl_vars['node']->value->type=='sectionheader'){?>
<li class="sectionheader"><?php echo $_smarty_tpl->tpl_vars['node']->value->menutext;?>


<?php }elseif($_smarty_tpl->tpl_vars['node']->value->type=='separator'){?>
<li style="list-style-type: none;"> <hr class="separator" />

<?php }else{ ?>
<li><a href="<?php echo $_smarty_tpl->tpl_vars['node']->value->url;?>
"<?php if ($_smarty_tpl->tpl_vars['node']->value->target!=''){?> target="<?php echo $_smarty_tpl->tpl_vars['node']->value->target;?>
"<?php }?>> <?php echo $_smarty_tpl->tpl_vars['node']->value->menutext;?>
 </a>

<?php }?>

<?php } ?>

<?php echo smarty_function_repeat(array('string'=>"</li></ul>",'times'=>$_smarty_tpl->tpl_vars['node']->value->depth-1),$_smarty_tpl);?>
</li>
</ul>
<?php }?>
--><?php }} ?>