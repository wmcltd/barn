{* If you want to change the color/speed/etc. go to modules/Album/templates/db/lytebox/lytebox.js *}
{* Lytetbox 3.2  (Lyteshow is active) *}
{* Album List *}
{if !$album}
<ul class="picturelist">
	{foreach from=$albums item=album}
	<li class="thumb">
 	<a href="{$album->link}">
<img src="{$album->thumbnail}" alt="{$album->name|escape:'html'}" title="{$album->name|escape:'html'} - {$album->comment|escape:'html'}"{$album->autothumbnailsize} /></a>

<p class="albumname">{$album->name}<br />
<span class="albumpicturecount">({$album->picturecount} images)</span><br />
<span class="albumcomment">{$album->comment}</span></p>
</li>
	{/foreach}
</ul>

{else}
  	{if $pagecount>1}
	<p class="albumnav">
		<a href="{$link.page.first}" title="first page">&lt;&lt;&nbsp;</a>
		{if $link.page.previous}<a href="{$link.page.previous}" title="previous page">&lt;&nbsp;</a>{/if}
		page {$pagenumber}/{$pagecount}
		{if $link.page.next}<a href="{$link.page.next}" title="next page">&nbsp;&gt;</a>{/if}
		<a href="{$link.page.last}" title="last page">&nbsp;&gt;&gt;</a>
	</p>
	{/if}
{* Photo List *}
<p><strong>{$album->name}</strong><br />
{$album->comment}<br />
<span class="instructiontext">Click on a thumbnail to view a larger image. Click on the close button to close it. {if $returnlink}<a href="{$returnlink}">Return to the album index page</a>{/if}</span></p>



<ul class="picturelist">
	{foreach from=$pictures item=picturesrow}
	    {foreach from=$picturesrow item=onepicture}
	    <li class="thumb"><a href="{$onepicture->picture}" rel="lyteshow[{$album->name|escape:'html'}]" title="{$onepicture->name|escape:'html'} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:'html'}{/if}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:'html'} - {$onepicture->comment|escape:'html'}" title="{$onepicture->name|escape:'html'} - {$onepicture->comment|escape:'html'}" /></a>
   	   </li>

      {if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}
	    {/foreach}
	{/foreach}
</ul>
<div style="width:100px">&nbsp;</div>
{if $picturecount==0}No image{/if}
{/if}