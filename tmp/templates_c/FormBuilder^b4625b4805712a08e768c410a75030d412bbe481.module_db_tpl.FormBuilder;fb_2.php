<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 17:30:20
         compiled from "module_db_tpl:FormBuilder;fb_2" */ ?>
<?php /*%%SmartyHeaderCode:141595238651f83e7c97f1d1-48813757%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b4625b4805712a08e768c410a75030d412bbe481' => 
    array (
      0 => 'module_db_tpl:FormBuilder;fb_2',
      1 => 1373770728,
      2 => 'module_db_tpl',
    ),
  ),
  'nocache_hash' => '141595238651f83e7c97f1d1-48813757',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'fb_form_header' => 0,
    'fb_form_done' => 0,
    'fb_submission_error' => 0,
    'fb_show_submission_errors' => 0,
    'fb_submission_error_list' => 0,
    'thisErr' => 0,
    'fb_form_has_validation_errors' => 0,
    'fb_form_validation_errors' => 0,
    'captcha_error' => 0,
    'fb_form_start' => 0,
    'fb_hidden' => 0,
    'css_class' => 0,
    'total_pages' => 0,
    'title_page_x_of_y' => 0,
    'fields' => 0,
    'entry' => 0,
    'has_captcha' => 0,
    'graphic_captcha' => 0,
    'title_captcha' => 0,
    'input_captcha' => 0,
    'prev' => 0,
    'submit' => 0,
    'fb_form_end' => 0,
    'fb_form_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f83e7caf00b6_52489795',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f83e7caf00b6_52489795')) {function content_51f83e7caf00b6_52489795($_smarty_tpl) {?>
<?php echo $_smarty_tpl->tpl_vars['fb_form_header']->value;?>

<?php if ($_smarty_tpl->tpl_vars['fb_form_done']->value==1){?>
	
	<?php if (isset($_smarty_tpl->tpl_vars['fb_submission_error']->value)&&$_smarty_tpl->tpl_vars['fb_submission_error']->value){?>
		<div class="error_message"><?php echo $_smarty_tpl->tpl_vars['fb_submission_error']->value;?>
</div>
		<?php if (isset($_smarty_tpl->tpl_vars['fb_show_submission_errors']->value)&&$_smarty_tpl->tpl_vars['fb_show_submission_errors']->value){?>
			<div class="error">
			<ul>
			<?php  $_smarty_tpl->tpl_vars['thisErr'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['thisErr']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['fb_submission_error_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['thisErr']->key => $_smarty_tpl->tpl_vars['thisErr']->value){
$_smarty_tpl->tpl_vars['thisErr']->_loop = true;
?>
				<li><?php echo $_smarty_tpl->tpl_vars['thisErr']->value;?>
</li>
			<?php } ?>
			</ul>
		</div>
		<?php }?>
	<?php }?>
<?php }else{ ?>
	
	
	<?php if (isset($_smarty_tpl->tpl_vars['fb_form_has_validation_errors']->value)&&$_smarty_tpl->tpl_vars['fb_form_has_validation_errors']->value){?>
		<div class="error_message">
		<ul>
		<?php  $_smarty_tpl->tpl_vars['thisErr'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['thisErr']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['fb_form_validation_errors']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['thisErr']->key => $_smarty_tpl->tpl_vars['thisErr']->value){
$_smarty_tpl->tpl_vars['thisErr']->_loop = true;
?>
			<li><?php echo $_smarty_tpl->tpl_vars['thisErr']->value;?>
</li>
		<?php } ?>
		</ul>
		</div>
	<?php }?>
	<?php if (isset($_smarty_tpl->tpl_vars['captcha_error']->value)&&$_smarty_tpl->tpl_vars['captcha_error']->value){?>
		<div class="error_message"><?php echo $_smarty_tpl->tpl_vars['captcha_error']->value;?>
</div>
	<?php }?>

	
	<?php echo $_smarty_tpl->tpl_vars['fb_form_start']->value;?>

	<div><?php echo $_smarty_tpl->tpl_vars['fb_hidden']->value;?>
</div>
	<div<?php if ($_smarty_tpl->tpl_vars['css_class']->value!=''){?> class="<?php echo $_smarty_tpl->tpl_vars['css_class']->value;?>
"<?php }?>>
	<?php if ($_smarty_tpl->tpl_vars['total_pages']->value>1){?><span><?php echo $_smarty_tpl->tpl_vars['title_page_x_of_y']->value;?>
</span><?php }?>
	<?php  $_smarty_tpl->tpl_vars['entry'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['entry']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['entry']->key => $_smarty_tpl->tpl_vars['entry']->value){
$_smarty_tpl->tpl_vars['entry']->_loop = true;
?>
		<?php if ($_smarty_tpl->tpl_vars['entry']->value->display==1){?>
        	<?php if ($_smarty_tpl->tpl_vars['entry']->value->needs_div==1){?><div<?php if ($_smarty_tpl->tpl_vars['entry']->value->required==1||$_smarty_tpl->tpl_vars['entry']->value->css_class!=''||$_smarty_tpl->tpl_vars['entry']->value->valid==0){?> class="<?php if ($_smarty_tpl->tpl_vars['entry']->value->required==1){?>required<?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->css_class!=''){?> <?php echo $_smarty_tpl->tpl_vars['entry']->value->css_class;?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->valid==0){?> fb_invalid<?php }?>"<?php }?>><?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->hide_name==0){?><label<?php if ($_smarty_tpl->tpl_vars['entry']->value->multiple_parts!=1){?> for="<?php echo $_smarty_tpl->tpl_vars['entry']->value->input_id;?>
"<?php }?>><?php echo $_smarty_tpl->tpl_vars['entry']->value->name;?>
<?php if ($_smarty_tpl->tpl_vars['entry']->value->required_symbol!=''){?><?php echo $_smarty_tpl->tpl_vars['entry']->value->required_symbol;?>
<?php }?></label><?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->multiple_parts==1){?><?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['name'] = 'numloop';
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['entry']->value->input) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['numloop']['total']);
?><?php if ($_smarty_tpl->tpl_vars['entry']->value->label_parts==1){?><div><?php echo $_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty')->value['section']['numloop']['index']]->input;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty')->value['section']['numloop']['index']]->name;?>
</div><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty')->value['section']['numloop']['index']]->input;?>
<?php }?><?php if (isset($_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty',null,true,false)->value['section']['numloop']['index']]->op)&&$_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty')->value['section']['numloop']['index']]->op){?><?php echo $_smarty_tpl->tpl_vars['entry']->value->input[$_smarty_tpl->getVariable('smarty')->value['section']['numloop']['index']]->op;?>
<?php }?><?php endfor; endif; ?><?php }else{ ?><?php if ($_smarty_tpl->tpl_vars['entry']->value->smarty_eval=='1'){?><?php $_template = new Smarty_Internal_Template('eval:'.$_smarty_tpl->tpl_vars['entry']->value->input, $_smarty_tpl->smarty, $_smarty_tpl);echo $_template->fetch(); ?><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['entry']->value->input;?>
<?php }?><?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->valid==0){?> &lt;--- <?php echo $_smarty_tpl->tpl_vars['entry']->value->error;?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['entry']->value->needs_div==1){?></div><?php }?>
     	<?php }?>
	<?php } ?>
	<?php if ($_smarty_tpl->tpl_vars['has_captcha']->value==1){?>
		<div class="captcha"><?php echo $_smarty_tpl->tpl_vars['graphic_captcha']->value;?>
<?php echo $_smarty_tpl->tpl_vars['title_captcha']->value;?>
<br /><?php echo $_smarty_tpl->tpl_vars['input_captcha']->value;?>
</div>
	<?php }?>
	<div class="submit"><?php echo $_smarty_tpl->tpl_vars['prev']->value;?>
<?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
</div>
	</div>
	<?php echo $_smarty_tpl->tpl_vars['fb_form_end']->value;?>

<?php }?>
<?php echo $_smarty_tpl->tpl_vars['fb_form_footer']->value;?>
<?php }} ?>