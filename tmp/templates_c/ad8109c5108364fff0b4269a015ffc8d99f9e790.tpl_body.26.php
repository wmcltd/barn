<?php /* Smarty version Smarty-3.1.12, created on 2013-07-19 20:56:35
         compiled from "tpl_body:26" */ ?>
<?php /*%%SmartyHeaderCode:163047976751e9ee538338c6-11351767%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ad8109c5108364fff0b4269a015ffc8d99f9e790' => 
    array (
      0 => 'tpl_body:26',
      1 => 1374238451,
      2 => 'tpl_body',
    ),
  ),
  'nocache_hash' => '163047976751e9ee538338c6-11351767',
  'function' => 
  array (
  ),
  'variables' => 
  array (
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
  'unifunc' => 'content_51e9ee53a01966_92727337',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51e9ee53a01966_92727337')) {function content_51e9ee53a01966_92727337($_smarty_tpl) {?><?php if (!is_callable('smarty_function_root_url')) include '/Users/darfine/Sites/barn/plugins/function.root_url.php';
if (!is_callable('smarty_function_sitename')) include '/Users/darfine/Sites/barn/plugins/function.sitename.php';
if (!is_callable('smarty_function_page_attr')) include '/Users/darfine/Sites/barn/plugins/function.page_attr.php';
if (!is_callable('smarty_function_cms_module')) include '/Users/darfine/Sites/barn/plugins/function.cms_module.php';
if (!is_callable('smarty_function_title')) include '/Users/darfine/Sites/barn/plugins/function.title.php';
if (!is_callable('smarty_function_recently_updated')) include '/Users/darfine/Sites/barn/plugins/function.recently_updated.php';
if (!is_callable('smarty_function_global_content')) include '/Users/darfine/Sites/barn/plugins/function.global_content.php';
if (!is_callable('smarty_function_cms_selflink')) include '/Users/darfine/Sites/barn/plugins/function.cms_selflink.php';
?>
<body>

<!-- TEMPLATE BUILDER -->
<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display Extra Page Data",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_extra"),$_smarty_tpl); ?>
<?php if (empty($_smarty_tpl->tpl_vars['show_extra']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_extra"])) {$_smarty_tpl->tpl_vars["show_extra"] = clone $_smarty_tpl->tpl_vars["show_extra"];
$_smarty_tpl->tpl_vars["show_extra"]->value = "+"; $_smarty_tpl->tpl_vars["show_extra"]->nocache = null; $_smarty_tpl->tpl_vars["show_extra"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_extra"] = new Smarty_variable("+", null, 0);?><?php }?>
<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display Search",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_search"),$_smarty_tpl); ?>
<?php if (empty($_smarty_tpl->tpl_vars['show_search']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_search"])) {$_smarty_tpl->tpl_vars["show_search"] = clone $_smarty_tpl->tpl_vars["show_search"];
$_smarty_tpl->tpl_vars["show_search"]->value = "+"; $_smarty_tpl->tpl_vars["show_search"]->nocache = null; $_smarty_tpl->tpl_vars["show_search"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_search"] = new Smarty_variable("+", null, 0);?><?php }?>
<!-- END TEMPLATE BUILDER -->
	
<a name="main"></a>

	<!-- HEADER -->
	<div id="header-wrap">			
		<div id="header-photo">
		<!--<img alt="header photo" src="/barn/uploads/unbound/header-photo.jpg" width="890" height="290" />-->
<?php echo Showtime::function_plugin(array('show'=>'1'),$_smarty_tpl);?>

	</div>
		
	<!--<h1 id="logo-text"><a href="<?php echo smarty_function_root_url(array(),$_smarty_tpl);?>
" title="<?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
"><?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
</a></h1>-->	
	<p id="intro"><?php echo smarty_function_page_attr(array('key'=>"extra1"),$_smarty_tpl);?>
</p>		
	
	<!-- TOP-NAVIGATION -->	
	<div  id="nav">
		<?php echo MenuManager::function_plugin(array('template'=>"unbound // minimal_menu",'number_of_levels'=>"1"),$_smarty_tpl);?>

	        
	</div>		
		
	<?php if ($_smarty_tpl->tpl_vars['show_search']->value=="+"){?>
	<!-- SEARCH -->		
    <div id="quick-search">
        <?php echo smarty_function_cms_module(array('module'=>'Search','resultpage'=>'search','search_method'=>'post'),$_smarty_tpl);?>

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
	
	<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array(),$_smarty_tpl); ?>

	</div>
	</div>
	<!-- END CONTENT -->
	
	<!-- TEMPLATE BUILDER -->
		<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display News",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_news"),$_smarty_tpl); ?>
		<?php if (empty($_smarty_tpl->tpl_vars['show_news']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_news"])) {$_smarty_tpl->tpl_vars["show_news"] = clone $_smarty_tpl->tpl_vars["show_news"];
$_smarty_tpl->tpl_vars["show_news"]->value = "+"; $_smarty_tpl->tpl_vars["show_news"]->nocache = null; $_smarty_tpl->tpl_vars["show_news"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_news"] = new Smarty_variable("+", null, 0);?><?php }?>
		<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display Sidebar Menu",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_sidebarmenu"),$_smarty_tpl); ?>
		<?php if (empty($_smarty_tpl->tpl_vars['show_sidebarmenu']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_sidebarmenu"])) {$_smarty_tpl->tpl_vars["show_sidebarmenu"] = clone $_smarty_tpl->tpl_vars["show_sidebarmenu"];
$_smarty_tpl->tpl_vars["show_sidebarmenu"]->value = "+"; $_smarty_tpl->tpl_vars["show_sidebarmenu"]->nocache = null; $_smarty_tpl->tpl_vars["show_sidebarmenu"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_sidebarmenu"] = new Smarty_variable("+", null, 0);?><?php }?>
		<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display Recently Updated",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_recently"),$_smarty_tpl); ?>
		<?php if (empty($_smarty_tpl->tpl_vars['show_recently']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_recently"])) {$_smarty_tpl->tpl_vars["show_recently"] = clone $_smarty_tpl->tpl_vars["show_recently"];
$_smarty_tpl->tpl_vars["show_recently"]->value = "+"; $_smarty_tpl->tpl_vars["show_recently"]->nocache = null; $_smarty_tpl->tpl_vars["show_recently"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_recently"] = new Smarty_variable("+", null, 0);?><?php }?>
		<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display News Categories",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_newscat"),$_smarty_tpl); ?>
		<?php if (empty($_smarty_tpl->tpl_vars['show_newscat']->value)){?><?php if (isset($_smarty_tpl->tpl_vars["show_newscat"])) {$_smarty_tpl->tpl_vars["show_newscat"] = clone $_smarty_tpl->tpl_vars["show_newscat"];
$_smarty_tpl->tpl_vars["show_newscat"]->value = "+"; $_smarty_tpl->tpl_vars["show_newscat"]->nocache = null; $_smarty_tpl->tpl_vars["show_newscat"]->scope = 0;
} else $_smarty_tpl->tpl_vars["show_newscat"] = new Smarty_variable("+", null, 0);?><?php }?>
		<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>"Display Footer Menu",'oneline'=>"true",'size'=>"1",'default'=>"+",'assign'=>"show_footermenu"),$_smarty_tpl); ?>
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
	<?php echo MenuManager::function_plugin(array('template'=>"unbound // minimal_menu",'start_level'=>"2"),$_smarty_tpl);?>

    </div>
    <div class-"second menu">
      <h3>Events</h3>
         <?php echo MenuManager::function_plugin(array('template'=>"EventMenu",'start_level'=>"1"),$_smarty_tpl);?>

    </div>
	<!-- END MENU -->
	<?php }?>
			
	</div>
		
	<div class="col-three">
	<?php echo cms_user_tag_photoblock1(array(),$_smarty_tpl);?>

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
		<?php echo smarty_function_recently_updated(array('number'=>'3','leadin'=>'Updated: ','dateformat'=>'D d M Y G:i'),$_smarty_tpl);?>

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