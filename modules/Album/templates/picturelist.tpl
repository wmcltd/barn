<div class="pageoptions">   <div class="reordermessage pagemcontainer" style="display:none"><p class="pagemessage">You must click the "save" button to make your new field order permanent.</p></div>
	<p class="pageoptions">{$addlink}</p>
</div>
{if $itemcount > 0}       
<script type="text/javascript">{literal}
$(document).ready(function(){
  $.getScript('{/literal}{root_url}{literal}/modules/Album/lib/jquery.tablednd.js',function(){
    $('#picturetable').tableDnD({
      onDrop: function(table, row) {
	var rows = table.tBodies[0].rows;
	var tmp = '';
        for( var i = 0; i < rows.length; i++ )
        { 
	  tmp += rows[i].id + ' ';
        }
        $('#m1_pictureorder').val(tmp); $('.reordermessage').show();
      }
    });
  }); 
});
{/literal}</script>
	<table id="picturetable" class="pagetable" style="display:block;border-collapse:collapse;">
			<thead>
			<tr class="nodrag nodrop">
				<th class="nodrag nodrop" style="text-align:center">Image</th>
				<th class="nodrag nodrop" style="text-align:center">Title, image name</th>
				<th class="nodrag nodrop" style="text-align:center">Add/Edit Comment(s)</th>
				<th class="nodrag nodrop" style="text-align:center">Change Image</th>
				<th class="nodrag nodrop" style="text-align:center">Change Thumbnail</th>
				<th class="nodrag nodrop" style="text-align:center">Delete Image</th>
				<noscript><th class="nodrag nodrop" style="text-align:center">Move</th></noscript>
			</tr>
		</thead>
	{foreach from=$items item=entry} {cycle values="row1,row2" assign=rowclass}
		<tr id="{$entry->id}" style="height : 100px;" class="{$rowclass}" onmouseover="this.className='{$rowclass}hover';" onmouseout="this.className='{$rowclass}';">
			<td style="width:100px;text-align:center;">{$entry->thumblink}</td>
			<td style="border:none;width:300px;text-align:center">{$entry->name}</td>
			<td style="border:none;width:10%;text-align:center">{$entry->changecommentlink}</td>
			<td style="border:none;width:10%;text-align:center">{$entry->changepicturelink}</td>
			<td style="border:none;width:10%;text-align:center">{$entry->changethumblink}</td>
			<td style="border:none;width:10%;text-align:center">{$entry->deletelink}</td>
			<noscript><td style="border:none;width:44px;text-align:left">{$entry->uplink}<br /> {$entry->downlink}</td></noscript>
		</tr>
	{/foreach}
	</table>
<div style="clear:both"></div>
{else}
<h4>{$nopicturetext}</h4>
{/if}

<div class="pageoptions"> <div class="reordermessage pagemcontainer" style="display:none"><p class="pagemessage">You must click the "save" or "submit" button to make your new field order permanent.</p></div>
	<p class="pageoptions">{$addlink}</p>
</div>
