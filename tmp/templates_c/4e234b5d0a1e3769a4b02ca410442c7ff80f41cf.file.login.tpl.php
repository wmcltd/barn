<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 19:59:47
         compiled from "/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:136065500251f8618335b7d0-66838328%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4e234b5d0a1e3769a4b02ca410442c7ff80f41cf' => 
    array (
      0 => '/Users/darfine/Sites/barn/admin/themes/OneEleven/templates/login.tpl',
      1 => 1352918725,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '136065500251f8618335b7d0-66838328',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'encoding' => 0,
    'config' => 0,
    'error' => 0,
    'usernamefld' => 0,
    'changepwhash' => 0,
    'warninglogin' => 0,
    'acceptlogin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f8618352d3f6_75862415',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f8618352d3f6_75862415')) {function content_51f8618352d3f6_75862415($_smarty_tpl) {?><?php if (!is_callable('smarty_function_sitename')) include '/Users/darfine/Sites/barn/plugins/function.sitename.php';
if (!is_callable('smarty_function_cms_jquery')) include '/Users/darfine/Sites/barn/plugins/function.cms_jquery.php';
if (!is_callable('smarty_function_root_url')) include '/Users/darfine/Sites/barn/plugins/function.root_url.php';
?><!doctype html>
<html>
	<head>
		<meta charset="<?php echo $_smarty_tpl->tpl_vars['encoding']->value;?>
" />
		<title><?php echo lang('logintitle');?>
 - <?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
</title>
		<base href="<?php echo $_smarty_tpl->tpl_vars['config']->value['admin_url'];?>
/" />
		<meta name="generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />
		<meta name="robots" content="noindex, nofollow" />
		<meta name="viewport" content="initial-scale=1.0 maximum-scale=1.0 user-scalable=no" />
		<meta name="HandheldFriendly" content="True"/>
		<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['config']->value['admin_url'];?>
/themes/OneEleven/images/favicon/cmsms-favicon.ico"/>
		<link rel="stylesheet" href="loginstyle.php" />
		<!-- learn IE html5 -->
		<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<?php echo smarty_function_cms_jquery(array('exclude'=>"jquery.ui.nestedSortable-1.3.4.js,jquery.json-2.2.js",'append'=>((string)$_smarty_tpl->tpl_vars['config']->value['admin_url'])."/themes/OneEleven/includes/login.js"),$_smarty_tpl);?>

	</head>
	<body id="login">
		<div id="wrapper">
			<div class="login-container">
				<div class="login-box cf"<?php if (isset($_smarty_tpl->tpl_vars['error']->value)){?> id="error"<?php }?>>
					<div class="logo">
						<img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['admin_url'];?>
/themes/OneEleven/images/layout/cmsms_login_logo.png" width="180" height="36" alt="CMS Made Simple&trade;" />
					</div>
					<div class="info-wrapper open">
					<aside class="info">
					<h2><?php echo lang('login_info_title');?>
</h2>
						<p><?php echo lang('login_info');?>
</p>
							<?php echo lang('login_info_params');?>

							<p><strong>(<?php echo $_SERVER['HTTP_HOST'];?>
)</strong></p>					
						<p class="warning"><?php echo lang('warn_admin_ipandcookies');?>
</p>
					</aside>
					<a href="#" title="<?php echo lang('open');?>
/<?php echo lang('close');?>
" class="toggle-info"><?php echo lang('open');?>
/<?php echo lang('close');?>
</a>
					</div>					
					<header>
						<h1><?php echo lang('logintitle');?>
</h1>
					</header>
					<form method="post" action="login.php">
						<fieldset>
                                                        <?php if (isset($_smarty_tpl->tpl_vars['usernamefld'])) {$_smarty_tpl->tpl_vars['usernamefld'] = clone $_smarty_tpl->tpl_vars['usernamefld'];
$_smarty_tpl->tpl_vars['usernamefld']->value = 'username'; $_smarty_tpl->tpl_vars['usernamefld']->nocache = null; $_smarty_tpl->tpl_vars['usernamefld']->scope = 0;
} else $_smarty_tpl->tpl_vars['usernamefld'] = new Smarty_variable('username', null, 0);?>
							<?php if (isset($_GET['forgotpw'])){?><?php if (isset($_smarty_tpl->tpl_vars['usernamefld'])) {$_smarty_tpl->tpl_vars['usernamefld'] = clone $_smarty_tpl->tpl_vars['usernamefld'];
$_smarty_tpl->tpl_vars['usernamefld']->value = 'forgottenusername'; $_smarty_tpl->tpl_vars['usernamefld']->nocache = null; $_smarty_tpl->tpl_vars['usernamefld']->scope = 0;
} else $_smarty_tpl->tpl_vars['usernamefld'] = new Smarty_variable('forgottenusername', null, 0);?><?php }?>
							<label for="lbusername"><?php echo lang('username');?>
</label>
							<input id="lbusername"<?php if (!isset($_POST['lbusername'])){?> class="focus"<?php }?> placeholder="<?php echo lang('username');?>
" name="<?php echo $_smarty_tpl->tpl_vars['usernamefld']->value;?>
" type="text" size="15" value="" autofocus="autofocus" />
						<?php if (isset($_GET['forgotpw'])&&!empty($_GET['forgotpw'])){?>
							<input type="hidden" name="forgotpwform" value="1" />
						<?php }?>
						<?php if (!isset($_GET['forgotpw'])&&empty($_GET['forgotpw'])){?>
							<label for="lbpassword"><?php echo lang('password');?>
</label>
							<input id="lbpassword"<?php if (!isset($_POST['lbpassword'])||isset($_smarty_tpl->tpl_vars['error']->value)){?> class="focus"<?php }?> placeholder="<?php echo lang('password');?>
" name="password" type="password" size="15" />
						<?php }?>
						<?php if (isset($_smarty_tpl->tpl_vars['changepwhash']->value)&&!empty($_smarty_tpl->tpl_vars['changepwhash']->value)){?> 
							<label for="lbpasswordagain"><?php echo lang('passwordagain');?>
</label>
							<input id="lbpasswordagain"  name="passwordagain" type="password" size="15" placeholder="<?php echo lang('passwordagain');?>
" />
							<input type="hidden" name="forgotpwchangeform" value="1" />
							<input type="hidden" name="changepwhash" value="<?php echo $_smarty_tpl->tpl_vars['changepwhash']->value;?>
" />
						<?php }?>
							<input class="loginsubmit" name="loginsubmit" type="submit" value="<?php echo lang('submit');?>
" />
							<input class="loginsubmit" name="logincancel" type="submit" value="<?php echo lang('cancel');?>
" />
						</fieldset>
					</form>
					<?php if (isset($_GET['forgotpw'])&&!empty($_GET['forgotpw'])){?>
						<div class="message warning">
							<?php echo lang('forgotpwprompt');?>

						</div>
					<?php }?>
					<?php if (isset($_smarty_tpl->tpl_vars['error']->value)){?>
						<div class="message error">
							<?php echo $_smarty_tpl->tpl_vars['error']->value;?>

						</div>
					<?php }?>
					<?php if (isset($_smarty_tpl->tpl_vars['warninglogin']->value)){?>
						<div class="message warning">
							<?php echo $_smarty_tpl->tpl_vars['warninglogin']->value;?>

						</div>
					<?php }?>
					<?php if (isset($_smarty_tpl->tpl_vars['acceptlogin']->value)){?>
						<div class="message success">
							<?php echo $_smarty_tpl->tpl_vars['acceptlogin']->value;?>

						</div>
					<?php }?>
					<?php if (isset($_smarty_tpl->tpl_vars['changepwhash']->value)&&!empty($_smarty_tpl->tpl_vars['changepwhash']->value)){?>
						<div class="warning message">
							<?php echo lang('passwordchange');?>

						</div>
					<?php }?> <a href="<?php echo smarty_function_root_url(array(),$_smarty_tpl);?>
" title="<?php echo lang('goto');?>
 <?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
"> <img class="goback" width="16" height="16" src="<?php echo $_smarty_tpl->tpl_vars['config']->value['admin_url'];?>
/themes/OneEleven/images/layout/goback.png" alt="<?php echo lang('goto');?>
 <?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
" /> </a>
					<p class="forgotpw">
						<a href="login.php?forgotpw=1"><?php echo lang('lostpw');?>
</a>
					</p>
				</div>			
				<footer>
					<small class="copyright">Copyright &copy; <a rel="external" href="http://www.cmsmadesimple.org">CMS Made Simple&trade;</a></small>
				</footer>
			</div>
		</div>
	</body>
</html><?php }} ?>