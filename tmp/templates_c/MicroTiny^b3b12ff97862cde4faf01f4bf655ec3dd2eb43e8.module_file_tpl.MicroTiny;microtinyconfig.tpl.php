<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 21:07:06
         compiled from "module_file_tpl:MicroTiny;microtinyconfig.tpl" */ ?>
<?php /*%%SmartyHeaderCode:94907342351e9f0ca58fb28-62472845%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b3b12ff97862cde4faf01f4bf655ec3dd2eb43e8' => 
    array (
      0 => 'module_file_tpl:MicroTiny;microtinyconfig.tpl',
      1 => 1341582289,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '94907342351e9f0ca58fb28-62472845',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'textareas' => 0,
    'templateid' => 0,
    'strip_background' => 0,
    'force_blackonwhite' => 0,
    'isfrontend' => 0,
    'toolbar' => 0,
    'show_statusbar' => 0,
    'allow_resize' => 0,
    'language' => 0,
    'css_styles' => 0,
    'filepickerurl' => 0,
    'filepickertitle' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51e9f0ca5e7d86_03469727',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9f0ca5e7d86_03469727')) {function content_51e9f0ca5e7d86_03469727($_smarty_tpl) {?><?php if (!is_callable('smarty_cms_function_cms_stylesheet')) include '/Users/darfine/Sites/barn/plugins/function.cms_stylesheet.php';
if (!is_callable('smarty_function_root_url')) include '/Users/darfine/Sites/barn/plugins/function.root_url.php';
?> tinyMCE.init({ 
  
  mode : "exact",
  elements : "<?php echo $_smarty_tpl->tpl_vars['textareas']->value;?>
",
  body_class : "CMSMSBody",
  <?php if (isset($_smarty_tpl->tpl_vars['templateid']->value)){?>
    content_css : "<?php echo smarty_cms_function_cms_stylesheet(array('templateid'=>$_smarty_tpl->tpl_vars['templateid']->value,'nolinks'=>1,'stripbackground'=>$_smarty_tpl->tpl_vars['strip_background']->value,'forceblackonwhite'=>$_smarty_tpl->tpl_vars['force_blackonwhite']->value),$_smarty_tpl);?>
",
  <?php }?>
  
  entity_encoding : "raw",
  button_tile_map : true, 

		
  theme : "advanced",
  skin : "o2k7",
  skin_variant : "black",
  theme_advanced_toolbar_location : "top",
  theme_advanced_toolbar_align : "left",
  visual : true,
	      
  accessibility_warnings : false,

  forced_root_block : '',      			
  fix_list_elements : true,
  verify_html : true,
  verify_css_classes : false,
  
  plugins : "paste,inlinepopups<?php if ($_smarty_tpl->tpl_vars['isfrontend']->value==false){?>,cmslinker<?php }?>",
  
  paste_auto_cleanup_on_paste : true,
  paste_remove_spans : true,
  paste_remove_styles : true,
  theme_advanced_buttons1 : "<?php echo $_smarty_tpl->tpl_vars['toolbar']->value;?>
",
  theme_advanced_buttons2 : "",
  theme_advanced_buttons3 : "",
  
<?php if ($_smarty_tpl->tpl_vars['isfrontend']->value==false){?>
<?php if ($_smarty_tpl->tpl_vars['show_statusbar']->value==1){?>
  theme_advanced_statusbar_location: "bottom",
<?php if ($_smarty_tpl->tpl_vars['allow_resize']->value==1){?>
  theme_advanced_resizing: true,
<?php }?> 
<?php }?>
<?php }?>

  theme_advanced_blockformats : "p,div,h1,h2,h3,h4,h5,h6,blockquote,code",
  document_base_url : "<?php echo smarty_function_root_url(array(),$_smarty_tpl);?>
/",

  relative_urls : true,
  remove_script_host : true,
  language: "<?php echo $_smarty_tpl->tpl_vars['language']->value;?>
",
  dialog_type: "modal",
  apply_source_formatting : true  
	 

<?php if (isset($_smarty_tpl->tpl_vars['css_styles']->value)&&$_smarty_tpl->tpl_vars['css_styles']->value!=''){?>
  ,theme_advanced_styles : '<?php echo $_smarty_tpl->tpl_vars['css_styles']->value;?>
'
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['isfrontend']->value==false){?>
  ,file_browser_callback : 'CMSMSFilePicker'
<?php }?>
  
});
  

<?php if ($_smarty_tpl->tpl_vars['isfrontend']->value==false){?>
function toggleMicroTiny(id) {
  if (!tinyMCE.getInstanceById(id))
    tinyMCE.execCommand('mceAddControl', false, id);
  else
    tinyMCE.execCommand('mceRemoveControl', false, id);
}
<?php }?>
	
  <?php if ($_smarty_tpl->tpl_vars['isfrontend']->value==false){?>
  
function CMSMSFilePicker (field_name, url, type, win) {
     
  var cmsURL = "<?php echo $_smarty_tpl->tpl_vars['filepickerurl']->value;?>
&type="+type+"&showtemplate=false";
  
  tinyMCE.activeEditor.windowManager.open({
  
    file : cmsURL,
    title : '<?php echo $_smarty_tpl->tpl_vars['filepickertitle']->value;?>
',
    width : '800',
    height : '500',
    resizable : "yes",
    scrollbars : "yes",
    inline : "yes",  
    close_previous : "no"
  
  }, {
    window : win,
    input : field_name
  });
  return false;
}

<?php }?>
<?php }} ?>