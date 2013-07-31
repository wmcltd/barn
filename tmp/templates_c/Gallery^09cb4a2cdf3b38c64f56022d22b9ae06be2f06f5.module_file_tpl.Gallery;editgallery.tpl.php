<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 17:02:26
         compiled from "module_file_tpl:Gallery;editgallery.tpl" */ ?>
<?php /*%%SmartyHeaderCode:208660806951f837f2b83c67-95865417%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '09cb4a2cdf3b38c64f56022d22b9ae06be2f06f5' => 
    array (
      0 => 'module_file_tpl:Gallery;editgallery.tpl',
      1 => 1375151951,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '208660806951f837f2b83c67-95865417',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'addimages' => 0,
    'upload_url' => 0,
    'sessionid' => 0,
    'file_size_limit' => 0,
    'file_types' => 0,
    'file_types_description' => 0,
    'maximageheight' => 0,
    'maximagewidth' => 0,
    'imagejpgquality' => 0,
    'msg_complete' => 0,
    'pagetitle' => 0,
    'formstart' => 0,
    'hidden' => 0,
    'directoryname' => 0,
    'prompt_directoryname' => 0,
    'prompt_parent' => 0,
    'moveto' => 0,
    'prompt_gallerytitle' => 0,
    'gallerytitle' => 0,
    'prompt_comment' => 0,
    'gallerycomment' => 0,
    'gallerydate' => 0,
    'prompt_date' => 0,
    'customfields' => 0,
    'field' => 0,
    'prompt_template' => 0,
    'template' => 0,
    'prompt_editors' => 0,
    'editors' => 0,
    'prompt_hideparentlink' => 0,
    'hideparentlink' => 0,
    'submit' => 0,
    'cancel' => 0,
    'unsort' => 0,
    'updatethumbs' => 0,
    'addgallery' => 0,
    'item' => 0,
    'title' => 0,
    'comment' => 0,
    'filedate' => 0,
    'cover' => 0,
    'active' => 0,
    'items' => 0,
    'entry' => 0,
    'rowclass' => 0,
    'itemcount' => 0,
    'prompt_multiaction' => 0,
    'multiaction' => 0,
    'multiactionsubmit' => 0,
    'nofilestext' => 0,
    'formend' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f837f2cd9976_31805864',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f837f2cd9976_31805864')) {function content_51f837f2cd9976_31805864($_smarty_tpl) {?><?php if (!is_callable('smarty_function_cycle')) include '/Users/darfine/Sites/barn/lib/smarty/plugins/function.cycle.php';
?><?php if (!empty($_smarty_tpl->tpl_vars['addimages']->value)){?>
<script type="text/javascript" src="../modules/Gallery/lib/swfupload/swfupload.js"></script>
<script type="text/javascript" src="../modules/Gallery/lib/swfupload/handlers.js"></script>
<?php }?>
<script type="text/javascript">
<?php if (!empty($_smarty_tpl->tpl_vars['addimages']->value)){?>

		var swfu;
		window.onload = function () {
			swfu = new SWFUpload({
				// Backend Settings
				upload_url: "<?php echo $_smarty_tpl->tpl_vars['upload_url']->value;?>
",
				post_params: {"PHPSESSID": "<?php echo $_smarty_tpl->tpl_vars['sessionid']->value;?>
"},

				// File Upload Settings
				file_size_limit : "<?php echo $_smarty_tpl->tpl_vars['file_size_limit']->value;?>
",
				file_types : "<?php echo $_smarty_tpl->tpl_vars['file_types']->value;?>
",
				file_types_description : "<?php echo $_smarty_tpl->tpl_vars['file_types_description']->value;?>
",
				file_upload_limit : 0,

				// Event Handler Settings
				swfupload_preload_handler : preLoad,
				swfupload_load_failed_handler : loadFailed,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,

				// Button Settings
				//button_image_url : "../modules/Gallery/images/SmallSpyGlassWithTransperancy_17x18.png",
				button_placeholder_id : "spanButtonPlaceholder",
				button_width: 200,
				button_height: 32,
				//button_text : '<span class="button">Select Images <span class="buttonSmall">(<?php echo $_smarty_tpl->tpl_vars['file_size_limit']->value;?>
 Max)</span></span>',
				//button_text_style : '.button { font-family: Helvetica, Arial, sans-serif; font-size: 12pt; } .buttonSmall { font-size: 10pt; }',
				//button_text_top_padding: 0,
				//button_text_left_padding: 18,
				button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
				button_cursor: SWFUpload.CURSOR.HAND,

				// Flash Settings
				flash_url : "../modules/Gallery/lib/swfupload/swfupload.swf",
				flash9_url : "../modules/Gallery/lib/swfupload/swfupload_fp9.swf",

				custom_settings : {
					upload_target : "divFileProgressContainer",
					thumbnail_height: <?php echo $_smarty_tpl->tpl_vars['maximageheight']->value;?>
,
					thumbnail_width: <?php echo $_smarty_tpl->tpl_vars['maximagewidth']->value;?>
,
					thumbnail_quality: <?php echo $_smarty_tpl->tpl_vars['imagejpgquality']->value;?>
,
					msg_complete: "<?php echo $_smarty_tpl->tpl_vars['msg_complete']->value;?>
"
				},

				// Debug Settings
				debug: false
			});
		};

<?php }?>
		$(function() {
			$( ".datepicker input" ).datepicker({
				dateFormat: 'yy-mm-dd',
				showOtherMonths: true,
				selectOtherMonths: true
			});
		});
</script>


<div class="pageoverflow">
<h3><?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
</h3>
</div>
<?php echo $_smarty_tpl->tpl_vars['formstart']->value;?>
<div class="hidden" id="sort"><?php echo $_smarty_tpl->tpl_vars['hidden']->value;?>
</div>
<?php if (!empty($_smarty_tpl->tpl_vars['directoryname']->value)){?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_directoryname']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['directoryname']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_parent']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['moveto']->value;?>
</p>
</div>
<?php }?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_gallerytitle']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['gallerytitle']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_comment']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['gallerycomment']->value;?>
</p>
</div>

<?php if (!empty($_smarty_tpl->tpl_vars['gallerydate']->value)){?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_date']->value;?>
:</p>
  <p class="pageinput datepicker"><?php echo $_smarty_tpl->tpl_vars['gallerydate']->value;?>
</p>
</div>
<?php }?>

<?php if (!empty($_smarty_tpl->tpl_vars['customfields']->value)){?>
<?php  $_smarty_tpl->tpl_vars['field'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['field']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['customfields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['field']->key => $_smarty_tpl->tpl_vars['field']->value){
$_smarty_tpl->tpl_vars['field']->_loop = true;
?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['field']->value['fieldhtml'];?>
</p>
</div>
<?php } ?>
<?php }?>

<?php if (!empty($_smarty_tpl->tpl_vars['prompt_template']->value)){?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_template']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['template']->value;?>
</p>
</div>
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['template']->value;?>

<?php }?>

<?php if (!empty($_smarty_tpl->tpl_vars['prompt_editors']->value)){?>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_editors']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['editors']->value;?>
</p>
</div>
<?php }else{ ?>
<?php echo $_smarty_tpl->tpl_vars['editors']->value;?>

<?php }?>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['prompt_hideparentlink']->value;?>
:</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['hideparentlink']->value;?>
</p>
</div>

<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
<?php echo $_smarty_tpl->tpl_vars['cancel']->value;?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['unsort']->value;?>
<?php echo $_smarty_tpl->tpl_vars['updatethumbs']->value;?>
</p>
	<p>&nbsp;</p>
</div>

<?php if (!empty($_smarty_tpl->tpl_vars['addimages']->value)){?>
<div class="pageoverflow">



  <?php echo $_smarty_tpl->tpl_vars['addgallery']->value;?>
 <span id="spanButtonPlaceholder"></span><?php echo $_smarty_tpl->tpl_vars['addimages']->value;?>


</div>
<div class="pageoverflow">
	<div id="divFileProgressContainer"></div>
	<div id="thumbnails">
	</div>
</div>
<?php }?>

	<table id="gtable" cellspacing="0" class="pagetable">
		<thead>
		<tr>
			<th class="pageicon">#</th>
			<th><?php echo $_smarty_tpl->tpl_vars['item']->value;?>
</th>
			<th><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</th>
			<th><?php echo $_smarty_tpl->tpl_vars['comment']->value;?>
</th>
			<th><?php echo $_smarty_tpl->tpl_vars['filedate']->value;?>
</th>
			<th class="pageicon"><?php echo $_smarty_tpl->tpl_vars['cover']->value;?>
</th>
			<th class="pageicon"><?php echo $_smarty_tpl->tpl_vars['active']->value;?>
</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon"><input id="selectall" type="checkbox" /></th>
		</tr>
		</thead>
		<tbody>
	<?php  $_smarty_tpl->tpl_vars['entry'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['entry']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['entry']->key => $_smarty_tpl->tpl_vars['entry']->value){
$_smarty_tpl->tpl_vars['entry']->_loop = true;
?>
		<?php echo smarty_function_cycle(array('values'=>"row1,row2",'assign'=>'rowclass'),$_smarty_tpl);?>

		<tr id="<?php echo $_smarty_tpl->tpl_vars['entry']->value->fileid;?>
" class="<?php echo $_smarty_tpl->tpl_vars['rowclass']->value;?>
">
			<td><?php echo $_smarty_tpl->tpl_vars['entry']->value->fileid;?>
</td>
			<td><?php if (!empty($_smarty_tpl->tpl_vars['entry']->value->editurl)){?><a href="<?php echo $_smarty_tpl->tpl_vars['entry']->value->editurl;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['entry']->value->edittext;?>
" title="<?php echo $_smarty_tpl->tpl_vars['entry']->value->edittext;?>
"><?php }?><span style="display: block; width:96px; height:72px; background: url(<?php echo $_smarty_tpl->tpl_vars['entry']->value->thumburl;?>
) no-repeat center; overflow:hidden;">&nbsp;</span><?php if (!empty($_smarty_tpl->tpl_vars['entry']->value->editurl)){?></a><?php }?></td>
			<td<?php if ($_smarty_tpl->tpl_vars['entry']->value->isdir){?> colspan="2"<?php }?>><?php echo $_smarty_tpl->tpl_vars['entry']->value->filename_input;?>
<br /><?php echo $_smarty_tpl->tpl_vars['entry']->value->title_input;?>
</td>
			<?php if (!$_smarty_tpl->tpl_vars['entry']->value->isdir){?><td><?php echo $_smarty_tpl->tpl_vars['entry']->value->comment_input;?>
</td><?php }?>
			<td class="datepicker"><?php echo $_smarty_tpl->tpl_vars['entry']->value->filedate_input;?>
</td>
			<td class="pagepos" style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['entry']->value->defaultlink;?>
</td>
			<td class="pagepos" style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['entry']->value->activelink;?>
<?php echo $_smarty_tpl->tpl_vars['entry']->value->active;?>
</td>
			<td class="pagepos" style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['entry']->value->editlink;?>
</td>
			<td class="pagepos" style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['entry']->value->deletelink;?>
</td>
			<td class="checkbox"><?php echo $_smarty_tpl->tpl_vars['entry']->value->imgselect;?>
</td>
		</tr>
	<?php } ?>
		</tbody>
	</table>

<?php if ($_smarty_tpl->tpl_vars['itemcount']->value>0){?>
<div class="pageoptions">
	<div style="margin-top: 0; float: right; text-align: right">
		<?php echo $_smarty_tpl->tpl_vars['prompt_multiaction']->value;?>
: <?php echo $_smarty_tpl->tpl_vars['multiaction']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['multiactionsubmit']->value;?>
<br /><div style="margin-top:6px;"><?php echo $_smarty_tpl->tpl_vars['moveto']->value;?>
</div>
	</div>

	<div class="pageoverflow">
		<p class="pageinput"><?php echo $_smarty_tpl->tpl_vars['submit']->value;?>
<?php echo $_smarty_tpl->tpl_vars['cancel']->value;?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['unsort']->value;?>
<?php echo $_smarty_tpl->tpl_vars['updatethumbs']->value;?>
</p>
	</div>
</div>
<?php }elseif($_smarty_tpl->tpl_vars['itemcount']->value==0){?>
	<h4><?php echo $_smarty_tpl->tpl_vars['nofilestext']->value;?>
</h4>
<?php }?>

<?php echo $_smarty_tpl->tpl_vars['formend']->value;?>
<?php }} ?>