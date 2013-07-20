<ul class="picturelist">
	{foreach from=$albums item=album}
	<li class="thumb">
<p class="albumname">{$album->name}</p>
 	<a href="{$album->link}">
<img src="{$album->thumbnail}" alt="{$album->name}" title="{$album->name} - {$album->comment}"{$album->autothumbnailsize} /></a>
<p><span class="albumpicturecount">({$album->picturecount} images)</span></p>
<p><span class="albumcomment">{$album->comment|truncate:75}&nbsp;</span></p>
</li>
	{/foreach}
</ul>
<div style="width:100px">&nbsp;</div>