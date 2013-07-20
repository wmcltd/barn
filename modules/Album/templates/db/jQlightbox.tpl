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
<div id="jQligallery">
  <ul class="picturelist">
{foreach from=$pictures item=picturesrow}{foreach from=$picturesrow item=onepicture}
    <li class="thumb">
      <a href="{$onepicture->picture}" rel="lightbox[{$album->name|escape:'html'}]" title="{$onepicture->name|escape:'html'}{if ($onepicture->comment != "")} - {$onepicture->comment|strip_tags}{/if}">
        <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:'html'}" title="{$onepicture->name|escape:'html'}"{$onepicture->autothumbnailsize} /></a> 
    </li>
{if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}
{/foreach}
{/foreach}
  </ul>
  <div style="width:100px">&nbsp;</div>{if $picturecount==0}No image{/if}
</div>
{/if}