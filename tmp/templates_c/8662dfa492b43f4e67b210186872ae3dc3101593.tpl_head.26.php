<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 14:01:47
         compiled from "tpl_head:26" */ ?>
<?php /*%%SmartyHeaderCode:149404208951f7f9a396f696-18732996%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8662dfa492b43f4e67b210186872ae3dc3101593' => 
    array (
      0 => 'tpl_head:26',
      1 => 1375210903,
      2 => 'tpl_head',
    ),
  ),
  'nocache_hash' => '149404208951f7f9a396f696-18732996',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f7f9a3a68c21_17009963',
  'variables' => 
  array (
    'canonical' => 0,
    'content_obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f7f9a3a68c21_17009963')) {function content_51f7f9a3a68c21_17009963($_smarty_tpl) {?><?php if (!is_callable('smarty_function_sitename')) include '/Users/darfine/Sites/barn/plugins/function.sitename.php';
if (!is_callable('smarty_function_title')) include '/Users/darfine/Sites/barn/plugins/function.title.php';
if (!is_callable('smarty_function_metadata')) include '/Users/darfine/Sites/barn/plugins/function.metadata.php';
if (!is_callable('smarty_cms_function_cms_stylesheet')) include '/Users/darfine/Sites/barn/plugins/function.cms_stylesheet.php';
if (!is_callable('smarty_function_cms_selflink')) include '/Users/darfine/Sites/barn/plugins/function.cms_selflink.php';
?><head>
<title><?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
 - <?php echo smarty_function_title(array(),$_smarty_tpl);?>
</title>
<?php if (isset($_smarty_tpl->tpl_vars['canonical']->value)){?><link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['canonical']->value;?>
" /><?php }elseif(isset($_smarty_tpl->tpl_vars['content_obj']->value)){?><link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['content_obj']->value->GetURL();?>
" /><?php }?>

<?php echo smarty_function_metadata(array(),$_smarty_tpl);?>

<?php echo smarty_cms_function_cms_stylesheet(array(),$_smarty_tpl);?>


<?php echo smarty_function_cms_selflink(array('dir'=>'start','rellink'=>1),$_smarty_tpl);?>

<?php echo smarty_function_cms_selflink(array('dir'=>'prev','rellink'=>1),$_smarty_tpl);?>

<?php echo smarty_function_cms_selflink(array('dir'=>'next','rellink'=>1),$_smarty_tpl);?>


</head><?php }} ?>