<?php /* Smarty version Smarty-3.1.12, created on 2013-07-30 12:36:50
         compiled from "/Users/darfine/Sites/barn/admin/templates/systemmaintenance.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99670574351f7f9b2c575e7-00979442%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bdf87f000cb9912b5f13fe3691f96c155a5bffe9' => 
    array (
      0 => '/Users/darfine/Sites/barn/admin/templates/systemmaintenance.tpl',
      1 => 1340556282,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99670574351f7f9b2c575e7-00979442',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'theme' => 0,
    'active_database' => 0,
    'active_content' => 0,
    'active_changelog' => 0,
    'formurl' => 0,
    'tablecount' => 0,
    'nonseqcount' => 0,
    'errorcount' => 0,
    'errortables' => 0,
    'pagecount' => 0,
    'withoutaliascount' => 0,
    'pagesmissingalias' => 0,
    'page' => 0,
    'invalidtypescount' => 0,
    'pageswithinvalidtype' => 0,
    'changelogfilename' => 0,
    'changelog' => 0,
    'backurl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_51f7f9b2d69d07_54088961',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51f7f9b2d69d07_54088961')) {function content_51f7f9b2d69d07_54088961($_smarty_tpl) {?><div class="pagecontainer">
<?php echo $_smarty_tpl->tpl_vars['theme']->value->StartTabHeaders();?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->SetTabHeader('database',lang('sysmaintab_database'),isset($_smarty_tpl->tpl_vars['active_database']->value));?>

<?php echo $_smarty_tpl->tpl_vars['theme']->value->SetTabHeader('content',lang('sysmaintab_content'),isset($_smarty_tpl->tpl_vars['active_content']->value));?>

<?php echo $_smarty_tpl->tpl_vars['theme']->value->SetTabHeader('changelog',lang('sysmaintab_changelog'),isset($_smarty_tpl->tpl_vars['active_changelog']->value));?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->EndTabHeaders();?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->StartTabContent();?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->StartTab('database');?>

    <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post">
      <fieldset>
        <legend><?php echo lang('sysmain_database_status');?>
:&nbsp;</legend>
        <p><?php echo $_smarty_tpl->tpl_vars['tablecount']->value;?>
 <?php echo lang('sysmain_tablesfound',$_smarty_tpl->tpl_vars['nonseqcount']->value);?>
</p>
        
        <?php if ($_smarty_tpl->tpl_vars['errorcount']->value==0){?>
        <p class='green'><strong><?php echo lang('sysmain_nostr_errors');?>
</strong></p>
        <?php }else{ ?>
        <p class='red'><strong><?php echo $_smarty_tpl->tpl_vars['errorcount']->value;?>
 <?php if ($_smarty_tpl->tpl_vars['errorcount']->value>1){?><?php echo lang('sysmain_str_errors');?>
<?php }else{ ?><?php echo lang('sysmain_str_error');?>
<?php }?>:  <?php echo $_smarty_tpl->tpl_vars['errortables']->value;?>
</strong></p>
        <?php }?>

        <div class="pageoverflow">
          <p class="pagetext"><?php echo lang('sysmain_optimizetables');?>
:</p>

          <p class="pageinput">
            <input class="pagebutton" type="submit" name="optimizeall" value="<?php echo lang('sysmain_optimize');?>
"/>
          </p>
        </div>
        <div class="pageoverflow">
          <p class="pagetext"><?php echo lang('sysmain_repairtables');?>
:</p>

          <p class="pageinput">
            <input class="pagebutton" type="submit" name="repairall" value="<?php echo lang('sysmain_repair');?>
"/>
          </p>
        </div>


      </fieldset>
        </form>


  </form>

<?php echo $_smarty_tpl->tpl_vars['theme']->value->EndTab();?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->StartTab('content');?>

  <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post" onsubmit="return confirm('<?php echo lang('sysmain_confirmclearcache');?>
')" >
  <fieldset>
    <legend><?php echo lang('sysmain_cache_status');?>
&nbsp;</legend>
    <div class="pageoverflow">
      <p class="pagetext"><?php echo lang('clearcache');?>
:</p>

      <p class="pageinput">
        <input class="pagebutton" type="submit" name="clearcache" value="<?php echo lang('clear');?>
"/>
      </p>
    </div>
  </fieldset>
    </form>
  <fieldset>
    <legend><?php echo lang('sysmain_content_status');?>
&nbsp;</legend>
    <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post" onsubmit="return confirm('<?php echo lang('sysmain_confirmupdatehierarchy');?>
')" >
    <?php echo $_smarty_tpl->tpl_vars['pagecount']->value;?>
 <?php echo lang('sysmain_pagesfound');?>


    <div class="pageoverflow">
      <p class="pagetext"><?php echo lang('sysmain_updatehierarchy');?>
:</p>

      <p class="pageinput">
        <input class="pagebutton" type="submit" name="updatehierarchy" value="<?php echo lang('sysmain_update');?>
"/>
      </p>
    </div>
    </form>

    <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post" onsubmit="return confirm('<?php echo lang('sysmain_confirmupdateurls');?>
')" >
    <div class="pageoverflow">
      <p class="pagetext"><?php echo lang('sysmain_updateurls');?>
:</p>

      <p class="pageinput">
        <input class="pagebutton" type="submit" name="updateurls" value="<?php echo lang('sysmain_update');?>
"/>
      </p>
    </div>
    </form>

    <?php if ($_smarty_tpl->tpl_vars['withoutaliascount']->value!="0"){?>
    <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post" onsubmit="return confirm('<?php echo lang('sysmain_confirmfixaliases');?>
')" >
    <div class="pageoverflow">
       <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['withoutaliascount']->value;?>
 <?php echo lang('sysmain_pagesmissinalias');?>
:</p>

       <p class="pageinput">
            <?php  $_smarty_tpl->tpl_vars['page'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['page']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pagesmissingalias']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['page']->key => $_smarty_tpl->tpl_vars['page']->value){
$_smarty_tpl->tpl_vars['page']->_loop = true;
?>
               <?php echo $_smarty_tpl->tpl_vars['page']->value['content_name'];?>
<br/>
            <?php } ?>
            <br/>
            <input class="pagebutton" type="submit" name="addaliases" value="<?php echo lang('sysmain_fixaliases');?>
"/>
          </p>
        </div>
    </form>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['invalidtypescount']->value!="0"){?>
    <form action="<?php echo $_smarty_tpl->tpl_vars['formurl']->value;?>
" method="post" onsubmit="return confirm('<?php echo lang('sysmain_confirmfixtypes');?>
')" >
    <div class="pageoverflow">
          <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['invalidtypescount']->value;?>
 <?php echo lang('sysmain_pagesinvalidtypes');?>
:</p>

          <p class="pageinput">
            <?php  $_smarty_tpl->tpl_vars['page'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['page']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pageswithinvalidtype']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['page']->key => $_smarty_tpl->tpl_vars['page']->value){
$_smarty_tpl->tpl_vars['page']->_loop = true;
?>
              <?php echo $_smarty_tpl->tpl_vars['page']->value['content_name'];?>
 <em>(<?php echo $_smarty_tpl->tpl_vars['page']->value['content_alias'];?>
) - <?php echo $_smarty_tpl->tpl_vars['page']->value['type'];?>
</em><br/>
            <?php } ?>
            <br/>
            <input class="pagebutton" type="submit" name="fixtypes" value="<?php echo lang('sysmain_fixtypes');?>
"/>
          </p>
        </div>
    </form>
    <?php }?>

  <?php if ($_smarty_tpl->tpl_vars['invalidtypescount']->value=="0"&&$_smarty_tpl->tpl_vars['withoutaliascount']->value==''){?>
   <p class='green'><strong><?php echo lang('sysmain_nocontenterrors');?>
</strong></p>
  <?php }?>

  </fieldset>
    </form>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->EndTab();?>




<?php echo $_smarty_tpl->tpl_vars['theme']->value->StartTab('changelog');?>


<p class='file'><?php echo $_smarty_tpl->tpl_vars['changelogfilename']->value;?>
</p>

  <div class="changelog"><?php echo $_smarty_tpl->tpl_vars['changelog']->value;?>
</div>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->EndTab();?>


<?php echo $_smarty_tpl->tpl_vars['theme']->value->EndTabContent();?>

</form>

<p class="pageback"><a class="pageback" href="<?php echo $_smarty_tpl->tpl_vars['backurl']->value;?>
">&#171; <?php echo lang('back');?>
</a></p>

</div> 

<?php }} ?>