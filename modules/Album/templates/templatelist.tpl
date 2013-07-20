{$formstart}
<div class="pageoverflow">  
	<p class="pagetext">{$templatetext}:</p>
	<p class="pageinput">{$templateinput}{$submit}</p> 
	<p class="pageoptions">{$addlink}</p>
</div>
{$formend}
<table cellspacing="0" class="pagetable">
	<thead>
		<tr>
			<th>{$templatenametext}</th>
			<th class="pageicon">Edit&nbsp;</th>
			<th class="pageicon">Delete</th>
			<th class="pageicon">Export&nbsp;</th>
		</tr>
	</thead>
	<tbody>
	{foreach from=$items item=entry}
		<tr class="{$entry->rowclass}" onmouseover="this.className='{$entry->rowclass}hover';" onmouseout="this.className='{$entry->rowclass}';">
			<td>{$entry->name}</td>
			<td>{$entry->editlink}</td>
			<td>&nbsp;&nbsp;{$entry->deletelink}</td>
			<td>&nbsp;{$entry->exportlink}</td>
		</tr>
	{/foreach}
	</tbody>
</table>

<div class="pageoptions">
  <p class="pageoptions">{$addlink}</p>
</div>

{if isset($formstart2)}
{$formstart2}
<fieldset>
<legend>{$lbl_import}</legend>
  <div class="pageoverflow">
    <p class="pagetext">{$lbl_select}</p>
    <p class="pageinput">{$input_import}</p>
  </div>
  <div class="pageoverflow">
    <p class="pagetext">{$lbl_newname}</p>
    <p class="pageinput">{$input_newname}<br/>{$info_newname}</p>
  </div>
  <div class="pageoverflow">
    <p class="pagetext"></p>
    <p class="pageinput">{$submit2}</p>
  </div>
</fieldset>
{$formend2}
{/if}
