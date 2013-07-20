{* Album List *}
{if !$album}
<ul class="picturelist">
{foreach from=$albums item=album}
 <li class="thumb">
  <p class="albumname">{$album->name|strip_tags}</p>
   <a href="{$album->link}"><img src="{$album->thumbnail}" alt="{$album->name}" title="{$album->name}"{$album->autothumbnailsize} /></a></a>
    <p><span class="albumpicturecount">({$album->picturecount} images)</span></p>
     <p><span class="albumcomment">{$album->comment|truncate:75|strip_tags}&nbsp;</span></p>
 </li>
{/foreach}
</ul>

{if $pagecount>1}
<p class="albumnav">
<a href="{$link.page.first}" title="first page">&lt;&lt;&nbsp;</a>
{if $link.page.previous}<a href="{$link.page.previous}" title="previous page">&lt;&nbsp;</a>{/if}
 page {$pagenumber}/{$pagecount}
 {if $link.page.next}<a href="{$link.page.next}" title="next page">&nbsp;&gt;</a>{/if}
<a href="{$link.page.last}" title="last page">&nbsp;&gt;&gt;</a>
</p>
{/if}
{else}
{* Photo List *}
<p><strong>{$album->name}</strong><br />
{$album->comment|strip_tags}<br />
<span class="instructiontext">Click on a thumbnail to view a larger image. Click on the close button to close it. {if $returnlink}<a href="{$returnlink}">Return to the album index page</a>{/if}</span></p>

<ul class="picturelist">
{foreach from=$pictures item=picturesrow}
{foreach from=$picturesrow item=onepicture}
 <li class="thumb"><a href="{$onepicture->picture}" rel="gb_imageset[{$album->name|escape:'html'}]" title="{$onepicture->name|escape:'html'}{if ($onepicture->comment != "")} - {$onepicture->comment|strip_tags}{/if}" alt="{$onepicture->name|escape:'html'}{if ($onepicture->comment != "")} - {$onepicture->comment|strip_tags}{/if}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:'html'}{if ($onepicture->comment != "")} - {$onepicture->comment|strip_tags}{/if}" title="{$onepicture->name|escape:'html'}{if ($onepicture->comment != "")} - {$onepicture->comment|strip_tags}{/if}"{$onepicture->autothumbnailsize} /></a></li>
{if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}
{/foreach}
{/foreach}
</ul>
{if $picturecount==0}No image{/if}
{/if}
<div style="width:100px">&nbsp;</div> 