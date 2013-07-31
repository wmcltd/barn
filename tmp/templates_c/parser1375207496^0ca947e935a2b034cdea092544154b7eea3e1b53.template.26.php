<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 13:04:56
         compiled from "template:26" */ ?>
<?php /*%%SmartyHeaderCode:184360987851f80048234127-72808663%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0ca947e935a2b034cdea092544154b7eea3e1b53' => 
    array (
      0 => 'template:26',
      1 => 1375206136,
      2 => 'template',
    ),
  ),
  'nocache_hash' => '184360987851f80048234127-72808663',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'lang' => 0,
    'canonical' => 0,
    'content_obj' => 0,
    'show_extra' => 0,
    'show_search' => 0,
    'show_news' => 0,
    'show_sidebarmenu' => 0,
    'show_recently' => 0,
    'show_newscat' => 0,
    'show_footermenu' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f800483ddd57_24883819',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f800483ddd57_24883819')) {function content_51f800483ddd57_24883819($_smarty_tpl) {?><?php if (!is_callable('smarty_cms_function_cms_stylesheet')) include '/Users/darfine/Sites/barn/plugins/function.cms_stylesheet.php';
if (!is_callable('smarty_function_global_content')) include '/Users/darfine/Sites/barn/plugins/function.global_content.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php if (empty($_smarty_tpl->tpl_vars['lang']->value)){?>en<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
<?php }?>" >
<head>
<title> - </title>
<?php if (isset($_smarty_tpl->tpl_vars['canonical']->value)){?><link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['canonical']->value;?>
" /><?php }elseif(isset($_smarty_tpl->tpl_vars['content_obj']->value)){?><link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['content_obj']->value->GetURL();?>
" /><?php }?>


<?php echo smarty_cms_function_cms_stylesheet(array(),$_smarty_tpl);?>



<?php echo smarty_function_cms_selflink(array('dir'=>'prev','rellink'=>1),$_smarty_tpl);?>

<?php echo smarty_function_cms_selflink(array('dir'=>'next','rellink'=>1),$_smarty_tpl);?>


</head>
<body>

<!-- TEMPLATE BUILDER -->

<?php if (empty($_smarty_tpl->tpl_vars['show_extra']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_extra"])) {$_smarty_tpl->tpl_vars["show_extra"] = clone $_smarty_tpl->tpl_vars["show_extra"];
$_smarty_tpl->tpl_vars["show_extra"]->value = "+"; $_smarty_tpl->tpl_vars["show_extra"]->nocache = null; $_smarty_tpl->tpl_vars["show_extra"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_extra"] = new Smarty_variable("+", null, 0);?><?php }?>

<?php if (empty($_smarty_tpl->tpl_vars['show_search']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_search"])) {$_smarty_tpl->tpl_vars["show_search"] = clone $_smarty_tpl->tpl_vars["show_search"];
$_smarty_tpl->tpl_vars["show_search"]->value = "+"; $_smarty_tpl->tpl_vars["show_search"]->nocache = null; $_smarty_tpl->tpl_vars["show_search"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_search"] = new Smarty_variable("+", null, 0);?><?php }?>
<!-- END TEMPLATE BUILDER -->
	
<a name="main"></a>

	<!-- HEADER -->
	<div id="header-wrap">			
		<div id="header-photo">
		<div id="header-static" style="float:left;"><img src="uploads/images/barn-logo-static.jpg"> </div>
<div id="header-show" style="float:left;"></div>
	</div>
		
	<!--<h1 id="logo-text"><a href="" title="<?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
"><?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
</a></h1>-->	
	<p id="intro"></p>		
	
	<!-- TOP-NAVIGATION -->	
	<div  id="nav">
		
	        
	</div>		
		
	<?php if ($_smarty_tpl->tpl_vars['show_search']->value=="+"){?>
	<!-- SEARCH -->		
    <div id="quick-search">
        
	</div>
	<!-- END SEARCH -->
	<?php }?>	
	
	</div>
	<!-- END HEADER -->
	
	
	<div id="content-outer" class="clear">
	<div id="content-wrapper">
	
	<!-- CONTENT -->
	<div id="content">
	<div class="col-one">
	<?php if ($_smarty_tpl->tpl_vars['show_extra']->value=="+"){?>
	<h2><?php echo smarty_function_title(array(),$_smarty_tpl);?>
</h2>
	<?php }?>
	
	

	</div>
	</div>
	<!-- END CONTENT -->
	
	<!-- TEMPLATE BUILDER -->
		
		<?php if (empty($_smarty_tpl->tpl_vars['show_news']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_news"])) {$_smarty_tpl->tpl_vars["show_news"] = clone $_smarty_tpl->tpl_vars["show_news"];
$_smarty_tpl->tpl_vars["show_news"]->value = "+"; $_smarty_tpl->tpl_vars["show_news"]->nocache = null; $_smarty_tpl->tpl_vars["show_news"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_news"] = new Smarty_variable("+", null, 0);?><?php }?>
		
		<?php if (empty($_smarty_tpl->tpl_vars['show_sidebarmenu']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_sidebarmenu"])) {$_smarty_tpl->tpl_vars["show_sidebarmenu"] = clone $_smarty_tpl->tpl_vars["show_sidebarmenu"];
$_smarty_tpl->tpl_vars["show_sidebarmenu"]->value = "+"; $_smarty_tpl->tpl_vars["show_sidebarmenu"]->nocache = null; $_smarty_tpl->tpl_vars["show_sidebarmenu"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_sidebarmenu"] = new Smarty_variable("+", null, 0);?><?php }?>
		
		<?php if (empty($_smarty_tpl->tpl_vars['show_recently']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_recently"])) {$_smarty_tpl->tpl_vars["show_recently"] = clone $_smarty_tpl->tpl_vars["show_recently"];
$_smarty_tpl->tpl_vars["show_recently"]->value = "+"; $_smarty_tpl->tpl_vars["show_recently"]->nocache = null; $_smarty_tpl->tpl_vars["show_recently"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_recently"] = new Smarty_variable("+", null, 0);?><?php }?>
		
		<?php if (empty($_smarty_tpl->tpl_vars['show_newscat']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_newscat"])) {$_smarty_tpl->tpl_vars["show_newscat"] = clone $_smarty_tpl->tpl_vars["show_newscat"];
$_smarty_tpl->tpl_vars["show_newscat"]->value = "+"; $_smarty_tpl->tpl_vars["show_newscat"]->nocache = null; $_smarty_tpl->tpl_vars["show_newscat"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_newscat"] = new Smarty_variable("+", null, 0);?><?php }?>
		
		<?php if (empty($_smarty_tpl->tpl_vars['show_footermenu']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_footermenu"])) {$_smarty_tpl->tpl_vars["show_footermenu"] = clone $_smarty_tpl->tpl_vars["show_footermenu"];
$_smarty_tpl->tpl_vars["show_footermenu"]->value = "+"; $_smarty_tpl->tpl_vars["show_footermenu"]->nocache = null; $_smarty_tpl->tpl_vars["show_footermenu"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_footermenu"] = new Smarty_variable("+", null, 0);?><?php }?>
	<!-- END TEMPLATE BUILDER -->	
		
	<!-- SIDEBAR -->
	<div class="col-two">
	
	<?php if ($_smarty_tpl->tpl_vars['show_sidebarmenu']->value=="+"){?>
	<!-- MENU -->	
	<h3>Explore...</h3>
    <div class="sidemenu">
	
    </div>
    <div class-"second menu">
      <!--<h3>Events</h3>-->
         
    </div>
	<!-- END MENU -->
	<?php }?>
			
	</div>
		
	<div class="col-three">
	
        
	
        <?php if ($_smarty_tpl->tpl_vars['show_news']->value=="+"){?>
	<!-- NEWS -->
	<div class="news">
	<?php echo smarty_function_cms_module(array('module'=>'News','detailpage'=>'news','number'=>'3'),$_smarty_tpl);?>

	</div>
	<!-- END NEWS -->
	<?php }?>				
		
	</div>	
	
	</div></div>

	<!-- FOOTER -->
	<div id="footer-wrapper">	
	<div id="footer"><div class="col-one">	
	
	<?php if ($_smarty_tpl->tpl_vars['show_newscat']->value=="+"){?>
	<!-- NEWS CATEGORIES -->
	<h3>News Categories</h3>
	<?php echo smarty_function_cms_module(array('module'=>'News','action'=>'browsecat','detailpage'=>'news'),$_smarty_tpl);?>

	<!-- END NEWS CATEGORIES -->
	<?php }?>	
						
	</div></div>
		
	<div class="col-two">
	
	<?php if ($_smarty_tpl->tpl_vars['show_recently']->value=="+"){?>
	<!-- RECENTLY UPDATED -->
	<h3>Recently Updated</h3>			
		
	<!-- END RECENTLY UPDATED -->
	<?php }?>	
				
	</div>		
	
	<div class="col-three">	
		<?php if ($_smarty_tpl->tpl_vars['show_footermenu']->value=="+"){?>
		<!-- FOOTER MENU -->
		<h3>Categories</h3>
		<?php echo smarty_function_cms_module(array('module'=>'menumanager','template'=>'minimal_menu.tpl','number_of_levels'=>'1','loadprops'=>'1'),$_smarty_tpl);?>

		<!-- END FOOTER MENU -->
		<?php }?>		
	</div>	
	
		<div id="footer-bottom">
		<div class="bottom-left">			
		<?php echo smarty_function_global_content(array('name'=>'footer'),$_smarty_tpl);?>

		<!-- 
		  @Template by [icms.info]
		  @Version: 2.1-20090805

		-->
<!-- <a href="http://www.icms.info/">Create Website with CMS Made Simple</a>	|| Design by : <a href="index.html">styleshout</a>	-->											
		</div>	
			
			<p class="bottom-right" >
				<?php echo smarty_function_cms_selflink(array('dir'=>"prev",'label'=>"◄◄ "),$_smarty_tpl);?>
 |
				<?php echo smarty_function_cms_selflink(array('dir'=>"next",'label'=>" ►►",'label_side'=>"right"),$_smarty_tpl);?>
 |					
				<a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | 
		   	<a href="http://validator.w3.org/check/referer">XHTML</a>

			</p>
	
		</div>	
			
	</div>
	<!-- footer ends here -->

</body>
</html><?php }} ?>