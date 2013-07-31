<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 12:45:23
         compiled from "module_db_tpl:Gallery;Fancybox" */ ?>
<?php /*%%SmartyHeaderCode:113707424851f7f9a37f43e2-76516234%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8846cd36262dd5450d7cfaecebbcdd18284a3f44' => 
    array (
      0 => 'module_db_tpl:Gallery;Fancybox',
      1 => 1375206321,
      2 => 'module_db_tpl',
    ),
  ),
  'nocache_hash' => '113707424851f7f9a37f43e2-76516234',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f7f9a38ed160_04267952',
  'variables' => 
  array (
    'gallerytitle' => 0,
    'gallerycomment' => 0,
    'imagecount' => 0,
    'pages' => 0,
    'prevpage' => 0,
    'nextpage' => 0,
    'hideparentlink' => 0,
    'parentlink' => 0,
    'pagelinks' => 0,
    'images' => 0,
    'image' => 0,
    'galleryid' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f7f9a38ed160_04267952')) {function content_51f7f9a38ed160_04267952($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include '/Users/darfine/Sites/barn/lib/smarty/plugins/modifier.replace.php';
?><div class="gallery">
<?php if (!empty($_smarty_tpl->tpl_vars['gallerytitle']->value)){?><h3 ><?php echo $_smarty_tpl->tpl_vars['gallerytitle']->value;?>
</h3><?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['gallerycomment']->value)){?><div class="gallerycomment" style="font-size:.8em; font-style:italic; text-align:left; margin-bottom:-10px;"><?php echo $_smarty_tpl->tpl_vars['gallerycomment']->value;?>
</div><?php }?>
<!--<p><?php echo $_smarty_tpl->tpl_vars['imagecount']->value;?>
</p>-->
<div class="pagenavigation" style="margin-top:-50px;">
<?php if ($_smarty_tpl->tpl_vars['pages']->value>1){?>
<div class="prevpage"><?php echo $_smarty_tpl->tpl_vars['prevpage']->value;?>
</div>
<div class="nextpage"><?php echo $_smarty_tpl->tpl_vars['nextpage']->value;?>
</div>
<?php }?>
<?php if (!$_smarty_tpl->tpl_vars['hideparentlink']->value&&!empty($_smarty_tpl->tpl_vars['parentlink']->value)){?><div class="parentlink"><?php echo $_smarty_tpl->tpl_vars['parentlink']->value;?>
</div><?php }?>
<?php if ($_smarty_tpl->tpl_vars['pages']->value>1){?><div class="pagelinks"><?php echo $_smarty_tpl->tpl_vars['pagelinks']->value;?>
</div><?php }?>
</div>

<?php  $_smarty_tpl->tpl_vars['image'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['image']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['images']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['image']->key => $_smarty_tpl->tpl_vars['image']->value){
$_smarty_tpl->tpl_vars['image']->_loop = true;
?>
	<div class="img">
	<?php if ($_smarty_tpl->tpl_vars['image']->value->isdir){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['image']->value->file;?>
" title="<?php echo $_smarty_tpl->tpl_vars['image']->value->titlename;?>
"><img src="<?php echo smarty_modifier_replace(rawurlencode($_smarty_tpl->tpl_vars['image']->value->thumb),'%2F','/');?>
" alt="<?php echo $_smarty_tpl->tpl_vars['image']->value->titlename;?>
" /></a><br />
		<?php echo $_smarty_tpl->tpl_vars['image']->value->titlename;?>

	<?php }else{ ?>
   <a class="group" href="<?php echo smarty_modifier_replace(rawurlencode($_smarty_tpl->tpl_vars['image']->value->file),'%2F','/');?>
" title="<?php echo $_smarty_tpl->tpl_vars['image']->value->titlename;?>
" rel="gallery-<?php echo $_smarty_tpl->tpl_vars['galleryid']->value;?>
"><img src="<?php echo smarty_modifier_replace(rawurlencode($_smarty_tpl->tpl_vars['image']->value->thumb),'%2F','/');?>
" alt="<?php echo $_smarty_tpl->tpl_vars['image']->value->titlename;?>
" /></a>
	<?php }?>
	</div>
<?php } ?>
<div class="galleryclear">&nbsp;</div>
</div>

<?php }} ?>