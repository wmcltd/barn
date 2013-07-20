<?php
$lang['friendlyname'] = 'Fotoalba';
$lang['postinstall'] = 'Album je nyn&iacute; nainstalov&aacute;no. Nezapomeňte pros&iacute;m přiřadit nov&yacute; styl &quot;Album (jako přednastaven&aacute; volba, ImageGallery a Thickbox jsou dal&scaron;&iacute;mi možnostmi)&quot; k &scaron;abloně str&aacute;nky, na kter&eacute; použ&iacute;v&aacute;te Album.

<p><b>Pozn&aacute;mka: Možn&aacute; budete muset změnit Masku pro vytv&aacute;řen&iacute; souborů (umask) z &quot;022&quot; na &quot;002&quot;, abyste zabr&aacute;nili chyb&aacute;m 403 Forbidden.</b></p>';
$lang['postuninstall'] = 'Album je nyn&iacute; odebr&aacute;no z datab&aacute;ze';
$lang['uninstalled'] = 'Modul odinstalov&aacute;n';
$lang['installed'] = 'Vyd&aacute;n&iacute; %s je nainstalov&aacute;no';
$lang['upgraded'] = 'Modul pov&yacute;&scaron;en na verzi %s.';
$lang['error_nofilesuploaded'] = 'Nastala chyba při nahr&aacute;v&aacute;n&iacute;. Pros&iacute;m zkontrolujte, že m&aacute;te nastavena dostatečn&aacute; opr&aacute;vněn&iacute; k z&aacute;pisu do adres&aacute;ře (777).';
$lang['error'] = 'Chyba!';
$lang['next_picture'] = 'Dal&scaron;&iacute; obr&aacute;zek';
$lang['admindescription'] = 'Modul Album v&aacute;m umožňuje snadno zobrazovat galerie obr&aacute;zků na webov&yacute;ch str&aacute;nk&aacute;ch.';
$lang['accessdenied'] = 'Př&iacute;stup zak&aacute;z&aacute;n';
$lang['query_failed'] = 'A query failed. Trying going to the &quot;Options&quot; tab and clicking the &quot;Run Upgrade Script&quot; link. If that does not fix the problem, then please file a bug.';
$lang['changelog'] = '<ul><li>Verze 0.0.1. 5 April 2006. Vstupn&iacute; vyd&aacute;n&iacute;.</li></ul>';
$lang['view_default_stylesheet'] = 'Zobrazit přednastaven&yacute; styl (CSS)';
$lang['help_albums'] = 'Seznam jednoho nebo v&iacute;ce ID alb, kter&aacute; maj&iacute; b&yacute;t zobrazena ( položky odděleny ';
$lang['max_image_size'] = '<b>Maximum image size:</b> Any images larger than this will automatically be scaled down (if the template is configured to do that.) using Javascript. Note: Currently only the &quot;Tables&quot; template uses this setting.';
$lang['help_sortdesc'] = 'Seřadit alba v sestupn&eacute;m pořad&iacute;.';
$lang['help_sortpicturesdesc'] = 'Sort pictures in descending order rather than ascending. This will make new pictues that are added to an album to be listed first.<p>Example to show pictures in reverse order:</p><pre>{cms_module module=&#039;album&#039; sortpicturesdesc=&#039;true&#039;}</pre>';
$lang['templatenameexists'] = 'Chyba: &Scaron;ablona s t&iacute;mto jm&eacute;nem již existuje. Pros&iacute;m zvolte jin&eacute; jm&eacute;no.';
$lang['templateimported'] = '&Scaron;ablona byla &uacute;spě&scaron;ně importov&aacute;na do datab&aacute;ze a nyn&iacute; je připravena k použit&iacute;.';
$lang['help'] = '<h3>What Does This Do?</h3>
<p>This module can be used to manage picture gallery</p>
<h3>How Do I Use It</h3>
<p>First go to Content -> Photo Albums and create Albums and add pictures to them.</p>
<p>To show all albums on a page, just put this code in your page content: </p>
<p><code>{cms_module module=&#039;album&#039;}</code></p>
<p>If you only want to show albums from a specific category then use use code like this:
<p><code>{cms_module module=&#039;album&#039; categories=&#039;1&#039;}</code></p>
<p>The code above allows you to show in a page albums who belong to a category whose ID is 1.</p>
<p>You can also show multiple categories like this:
<p><code>{cms_module module=&#039;album&#039; categories=&#039;1,3&#039;}</code></p>
<p>If you only want certain albums shown then use code like this:
<p><code>{cms_module module=&#039;album&#039; albums=&#039;1,3&#039;}</code></p>
<p>The code above allows you to show in a page albums whose IDs are 1 and 3 for example. If you do not provide paramater &quot;albums&quot;, it will show all the albums.</p>
<h3>Templates</h3>
<h4>How to change the links and text in the picture popup for the default Album template</h4>
<p>You can change the text in the default Album popup by editing: modules/Album/templates/db/js/thickbox.js (this is not ideal for upgradability, but it seems to work fine)</p>
<h4>How to remove border around thumbnails</h4>
<p>Add this to the end of modules/Album/css/stylesheet.css:</p>
<pre>.thumb a { background-color:transparent; border:0; }</pre>
<h4>Fix large gap problems caused by clear:both</h4>
<p>See: <a href="RE: Cannot seem to get categories working">RE: Cannot seem to get categories working</a></p>
<p>Short answer, add this to your Stylesheet:</p>
<pre>
#main {
float: left;
}
</pre>
<h3>Troubleshooting</h3>
<p>Talk to your developer about using ImageMagick instead of GD, it performs better.</p>
<h4>Thumbnails not working</h4>
<p><b>Note: You may have to change File Creation Mask (umask): from &quot;022&quot;
to &quot;002&quot;
to keep from getting 403 forbidden errors when trying to view
generated thumbnails
on your webhost.</b></p>
<a href="http://dev.cmsmadesimple.org/forum/message.php?msg_id=1181">A possible workaround to thumbnail problems</a>
<h4>Thumbnails will not increase height above 72px</h4>
<p>See <a href="http://forum.cmsmadesimple.org/index.php/topic,14125.msg69907.html#msg69907"> 	
Re: Album module and thumbnails in IE [SOLVED]</a>. Basically delete this part from your template:
{$onepicture->autothumbnailsize} and {$album->autothumbnailsize} to fix the album thumbnails size.</p>
<p>The &quot;autothumbnailsize&quot; feature was added to make all thumbnails stay at height=72. Perhaps this feature is more of a problem than a help.</p>

<h4>Thumbnails don&#039;t line up correctly</h4>
<p>You may need to shorten the titles of your Albums. Or try using the Tables template.</p>
<p>See <a href="http://forum.cmsmadesimple.org/index.php/topic,11996.0.html">Topic: Album Thumbnail layout [solved]</a>.</p>
<h4>Thumbnails stretched incorrectly</h4>
<p>An easy way to fix this is to just edit modules/Album/css/stylesheet.css</p>
<p>And replace this:</p>
<pre>
/* Thumb width*/ 
	height:72px;
</pre>
<p>with this:</p>
<pre>
/* Thumb width*/ 
	/* height:72px; */
</pre>
<h4>Fix: Javascript doesn&#039;t load when pretty urls with hierarchy enabled - big picture doesn&#039;t show</h4>
Everything should work if you put this tag in between your
&amp;lt;head&amp;gt; &amp;lt;/head&amp;gt; tags in your page template like this:
&amp;lt;head&amp;gt;
...
{metadata}
&amp;lt;/head&amp;gt;

<p>That will make CMSMS output a tag like this:
&amp;lt;base href=&quot;http://www.elijahlofgren.com/&quot; /&amp;gt;</p>

<p>which should make all relative links work fine, even if hierarchy
is enabled.</p>


<p>The other option would be for me to change the template to include
a full URL to the JS so that it should always work, even if the
metadata tag is not used.</p>
<h4>Increasing the size of the thumbnails</h4>
<p>See this post on the forums: <a href="http://forum.cmsmadesimple.org/index.php/topic,7844.0.html">Larger Thumbnails for Album</a>.</p>
<h4>Image Effects (Transparancy) not quite working</h4>
<p>Make sure all the files in the templates/db folder have chmod 755. See: <a href="http://forum.cmsmadesimple.org/index.php?topic=10466.msg52526#msg52526"> 	
Re: random_image in Album. Can it be a greybox thumbnail? {SOLVED!}</a>.</p>
<h3>Support</h3>
<p>As per the GPL, this software is provided as-is. Please read the text of the license for the full disclaimer.</p>
<h3>Copyright and License</h3>
<p>Copyright &amp;copy; 2006, dam. All Rights Are Reserved.</p>
<p>This module has been released under the <a href="http://www.gnu.org/licenses/licenses.html#GPL">GNU Public License</a>. You must agree to this license before using the module.</p>';
$lang['help_action'] = '<h4>Show list of recently added pictures</h4>
	 <p>You can show a list of added pictures calling Album like this:</p>
<pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039;}</pre>
<p>If you want to show recent pictures from a specific Album (e.g. album id 1) you can call Album like this:</p>
<pre>{cms_module module=&#039;album&#039; albums=&#039;1&#039; action=&#039;recently_updated&#039; number=&#039;2&#039;}</pre>
<p><b>Important</b>: You must choose a &quot;<b>Default page that contains Album.</b>&quot; in order to use this feature.</p>
<div style=&quot;border:1px solid black;&quot;>
<h4>Show random image</h4>
<p>First it counts all rows in the database (accounting the included Albums), finds a random number between &#039;0&#039; and the maximum number of rows. With this number the database pointer is being set to a specific row and the data is retrieved from the table and returned.</p>
<h5>How do I use it?</h5>
<p>Just insert the tag into your template/page like: <code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</code></p>
<p>To show a certain number of random images call it like this:</p>
<code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039; number=&#039;10&#039;}</code>
<h5>What parameters the random_image action take?</h5>
<p>
<ul>
	<li><em>(optional)</em> <tt>imagesurl</tt>   - Album directory, default is: &#039;root_url&#039;/uploads/images</li>
	<li><em>(optional)</em> <tt>albums</tt>      - comma, space, dash or semicolon separated list of albums to show images of.</li>
  <li><em>(optional)</em> <tt>border</tt>      - stylesheetstyled border ala border=&#039;5px&#039;</li>
  <li><em>(optional)</em> <tt>picturename</tt> - picturename = True/False, sets a title with the picture name</li>
</ul>
<p><b>Note: These parameters are only available when calling Album with {cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</b></p>
<p>so for example: {cms_module module=&#039;album&#039; action=&#039;random_image&#039; albums=&#039;1,3,4,6&#039; border=&#039;3px&#039; picturename=&#039;True&#039;}</p>
</p>
<h5>To Do</h5>
<p>
<ul>
	<li>arrange the classnames of the div tags, and specify the possible use in stylesheets.<br />
		(get rid of the border parameter)</li>
  <li>get the album name from the table album_albums, and make it possible to state it in the output.</li>
  <li>make it possible to link from the picture to the specific album? picture?</li>
  <li>usage of a maximum height/width parameter and size the thumbnail if necessary.</li>
</ul>
</p>
<p>Random Image Author: Frank Prins &amp;lt;<a href="mailto:webmaster@frank-fem.com">webmaster@frank-fem.com</a>&amp;gt;</p>
</div>
';
$lang['help_number'] = '<h4>Uk&aacute;zat určit&yacute; počet naposledy přidan&yacute;ch obr&aacute;zků</h4>
	 <p>Album nyn&iacute; umožňuje uk&aacute;zat určit&yacute; počet naposledy přidan&yacute;ch obr&aacute;zků pomoc&iacute;:</pre> <pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Přidat album';
$lang['error_nonamegiven'] = 'Nov&eacute; album je třeba pojmenovat.';
$lang['albumadded'] = 'Album bylo &uacute;spě&scaron;ně přid&aacute;no. Obr&aacute;zku můžete přidat dole.';
$lang['albumdeleted'] = 'Album bylo &uacute;spě&scaron;ně odebr&aacute;no z datab&aacute;ze.';
$lang['noalbumstext'] = 'Je&scaron;tě jste nevytvořili ž&aacute;dn&eacute; album.';
$lang['addpicture'] = 'Přidat obr&aacute;zky';
$lang['addtemplate'] = 'Přidat &scaron;ablonu';
$lang['albumidtext'] = 'IDs ';
$lang['albumnametext'] = 'Alba';
$lang['albumthumbtext'] = 'Miniatury';
$lang['albumnumpicturestext'] = 'Počet obr&aacute;zků';
$lang['albumreordertext'] = 'Změnit pořad&iacute;';
$lang['albumactionstext'] = 'Akce';
$lang['Albums'] = 'Alba';
$lang['areyousure'] = 'Jste si jist/a ?';
$lang['browsepictures'] = 'Změnit';
$lang['cancel'] = 'Zru&scaron;it';
$lang['changecomment'] = 'Editovat koment&aacute;ř';
$lang['changepicture'] = 'Změnit obr&aacute;zek';
$lang['changethumb'] = 'Změnit';
$lang['changethumbnail'] = 'Změnit miniaturu';
$lang['columns'] = 'Č&iacute;slo sloupce';
$lang['comment'] = 'Koment&aacute;ř';
$lang['currenttemplate'] = 'Současn&yacute; koment&aacute;ř';
$lang['currentpicture'] = 'Současn&yacute; obr&aacute;zek';
$lang['currentthumbnail'] = 'Současn&aacute; miniatura';
$lang['deletealbum'] = 'Smazat';
$lang['deletepicture'] = 'Smazat';
$lang['Help'] = 'Napověda';
$lang['modify'] = 'Změnit';
$lang['moveleft'] = 'Přesunout vlevo';
$lang['moveright'] = 'Přesunout vpravo';
$lang['multiplealbumtemplate'] = '&Scaron;ablona v&iacute;ce alb';
$lang['name'] = 'Jm&eacute;no';
$lang['nocomment'] = '(bez koment&aacute;ře)';
$lang['nothumbnail'] = '(bez miniatury)';
$lang['picture'] = 'Obr&aacute;zek';
$lang['parentdir'] = '(Rodičovsk&yacute; adres&aacute;ř)';
$lang['pictures'] = 'obr&aacute;zky';
$lang['nopicturetext'] = 'V albu nejsou ž&aacute;dn&eacute; obr&aacute;zky.';
$lang['Picture'] = 'Obr&aacute;zek';
$lang['Pictures'] = 'Obr&aacute;zek';
$lang['Properties'] = 'Vlastnosti';
$lang['propertiesupdated'] = 'Vlastnosti alba byly &uacute;spě&scaron;ně uloženy.';
$lang['resetthumb'] = 'Vynulovat miniaturu';
$lang['return'] = 'Zpět';
$lang['rows'] = 'Č&iacute;slo ř&aacute;dku';
$lang['useinlinelinks'] = '<b>Use Inline Links</b> - This will make the content of the page always be shown with the Album tag above all pictures. In addition <strong>this will make Album work correctly when placed in additional page content blocks</strong>. <strong>NOTE: Enabling this option will disable Album&#039;s use of pretty URLs.</strong>';
$lang['autolinkstylesheet'] = '<b>Auto Link Stylesheet</b>: Check this box to automatically insert the link to the Album stylesheet in head of your page. This should usually be left enabled.';
$lang['selectall'] = 'Vybrat v&scaron;e';
$lang['selectpicture'] = 'Použ&iacute;t tento obr&aacute;zek';
$lang['selectthumb'] = 'Použ&iacute;t miniaturu tohoto obr&aacute;zku';
$lang['submit'] = 'Uložit';
$lang['file_templates_help'] = '<b>Toto jsou &scaron;ablony, kter&eacute; mus&iacute;te před použit&iacute;m naistalovat do datab&aacute;ze.</b>';
$lang['template'] = '&Scaron;ablona';
$lang['deletetemplate'] = 'Smazat &scaron;ablonu';
$lang['Template'] = '&Scaron;ablona';
$lang['templatenametext'] = '&Scaron;ablony';
$lang['Templates'] = '&Scaron;ablony';
$lang['edittemplate'] = 'Upravit &scaron;ablonu';
$lang['templatesaved'] = '&Scaron;ablona byla &uacute;spě&scaron;ně uložena do datab&aacute;ze.';
$lang['errortemplatenameexists'] = '&Scaron;ablona s t&iacute;mto jm&eacute;nem již existuje, pros&iacute;m zvolte jin&eacute; jm&eacute;no.';
$lang['error_filenotfound_defaulttemplate'] = 'Soubor &scaron;ablony pro tuto &scaron;ablonu nebyl nalezen.';
$lang['thumbnail'] = 'Miniatura';
$lang['title'] = 'Titulek';
$lang['uploadpicture'] = 'Nahr&aacute;t obr&aacute;zek';
$lang['upload'] = 'Nahr&aacute;t';
$lang['view'] = 'Zobrazit';
$lang['options'] = 'Možnosti';
$lang['optionsupdated'] = 'Možnosti byly &uacute;spě&scaron;ně aktualizov&aacute;ny.';
$lang['defaultrows'] = 'Implicitn&iacute; č&iacute;slo ř&aacute;dku';
$lang['defaultcolumns'] = 'Implicitn&iacute; č&iacute;slo sloupce';
$lang['defaulttemplate'] = 'Přednastaven&aacute; &scaron;ablona';
$lang['file_templates'] = '&Scaron;ablony souboru';
$lang['filename'] = 'Jm&eacute;no souboru';
$lang['importtemplate'] = 'Importovat &scaron;ablonu';
$lang['newtemplate'] = 'Jm&eacute;no nov&eacute; &scaron;ablony';
$lang['defaultalbumpage'] = '&Uacute;vodn&iacute; str&aacute;nka, kter&aacute; obsahuje Album. Tato str&aacute;nka mus&iacute; m&iacute;t nastaven typ \&quot;Album\&quot;, nebo obsahovat př&iacute;slu&scaron;n&yacute; tag. Toto nastaven&iacute; je vyžadov&aacute;no, pokud chcete použ&iacute;vat funkci recently_updated.';
$lang['album_comment_updated'] = 'Koment&aacute;ř k albu byl &uacute;spě&scaron;ně změněn.';
$lang['picture_comment_updated'] = 'Koment&aacute;ř k obr&aacute;zku byl &uacute;spě&scaron;ně změněn.';
$lang['template_deleted'] = '&Scaron;ablona byla &uacute;spě&scaron;ně vymaz&aacute;na z datab&aacute;ze.';
$lang['error_empty_template'] = 'Chyba: &Scaron;ablona pojmenovan&aacute; &quot;%s&quot; , kterou použ&iacute;v&aacute; toto album neexistuje. Pros&iacute;m vyberte jinou &scaron;ablonu v administračn&iacute;m rozhran&iacute; Alba.';
$lang['run_upgrade_script'] = 'Provede skript uprgrade.';
$lang['addcategory'] = 'Přidat kategorii';
$lang['categories'] = 'Kategorie';
$lang['nocategories'] = 'Je&scaron;tě jste nepřidali ž&aacute;dn&eacute; kategorie.';
$lang['categorynametext'] = 'Jm&eacute;no kategorie';
$lang['categoryidtext'] = 'Id kategorie';
$lang['categoryreordertext'] = 'Znovuseřadit kategorie';
$lang['categoryactionstext'] = 'Akce';
$lang['categoryadded'] = 'Kategorie byla &uacute;spě&scaron;ně přid&aacute;na do datab&aacute;ze';
$lang['categorymoved'] = 'Kategorie byla &uacute;spě&scaron;ně přesunuta.';
$lang['categoryupdated'] = 'Kategorie byla &uacute;spě&scaron;ně aktualizov&aacute;na.';
$lang['editcategory'] = 'Editovat kategorii';
$lang['categorydeleted'] = 'Kategorie byla &uacute;spě&scaron;ně smaz&aacute;na.';
$lang['error_nocategorynamegiven'] = 'Va&scaron;i kategorii je třeba nějak pojmenovat.';
$lang['category_listings'] = 'V&yacute;pis kategori&iacute;';
$lang['album_updated'] = 'Album bylo &uacute;spě&scaron;ně aktualizov&aacute;no.';
$lang['uncategorized'] = 'Nezařazen&aacute; alba';
$lang['automatic_album_list_template'] = 'Automatic (use template assigned to each album)';
$lang['albummoved'] = 'Album bylo &uacute;spě&scaron;ně přesunuto.';
$lang['helpdetailpage'] = '<p>Page to display Albums in.  This can either be a page alias or an id. Used to allow Album pictures 
to be displayed in a different page from the album list.</p> <p>Example of use:</p><pre>{cms_module module=&#039;album&#039; detailpage=&#039;album&#039;}</pre>';
$lang['help_template'] = '<h3>Important tips for modifying templates</h3>
<h4>Enable debug mode!</h4>
<p>Unless you enable debug mode, important errors about undefined template variables will be hidden, making debugging templates very difficult!</p>
<p>You can enable debug mode by opening config.php and setting:</p>
<code>$config[&#039;debug&#039;] = true;<code>

<h3>Album list</h3>

<p>You can use smarty tag {$albums} which is an array. Each of its elements is one of the selected albums.
The structure of an album is described in next chapter.
To show the albums, use loop <code>{foreach from=$albums item=album}{/foreach}</code></p>
<h3>Album</h3>
<p>If there is only one album, or if a specific album is selected, you can use tag {$album}. It allows to access following items :</p>
<ul>
	<li>{$album->name} : name</li>
	<li>{$album->comment} : comment</li>
	<li>{$album->columns} : column number</li>
	<li>{$album->rows} : row number</li>
	<li>{$album->thumbnail} : adress (url) of thumbnail</li>
	<li>{$album->link} : link to album</li>
	<li>{$album->picturecount} : number of pictures of an album</li>
</ul>
<h3>Image list</h3>
<p>If an album is selected, you can use tag {$pictures} which is an array of arrays : it contains rows that contain pictures.
The structure of an image is described in following chapter.
To show image list, use the following loop :
<code>{foreach from=$pictures item=picturesrow}
	{foreach from=$picturesrow item=onepicture}
	{/foreach}
{/foreach}</code></p>
<h3>Picture</h3>
<p>If a picture is selected, you can use tag  {$picture}. It is automatically set to first picture of album if no picture is selected.</p>
<ul>
	<li>{$picture->name} : name</li>
	<li>{$picture->comment} : comment</li>
	<li>{$picture->comment2} : comment2</li>
	<li>{$picture->comment3} : comment3</li>
	<li>{$picture->thumbnail} : adress (url) of thumbnail</li>
	<li>{$picture->picture} : adress (url) of picture</li>
	<li>{$picture->link} : link to picture</li>
	<li>{$picture->number} : picture number</li>
	<li>{$picture->thumbnailwidth}: width of thumbnail</li>
	<li>{$picture->thumbnailheight}: height of thumbnail</li>
	<li>{$picture->autothumbnailsize}: outputs something like &#039;height=&quot;76&quot;&#039; to make tall thumbnails fit in a box</li>
	<li>{$max_image_size}: The value of the max_image_size preference. Used in the default template to automatically resize images that are too large.</li>
</ul>
<h3>Other</h3>
<p>You can also use following tags :</p>
<ul>
	<li>{$returnlink} : back to previous page</li>
	<li>{$albumnumber} : current album number</li>
	<li>{$albumcount} : album count</li>
	<li>{$picturenumber} : current picture number</li>
	<li>{$picturecount} : picture count</li>
	<li>{$pagenumber} : current page number</li>
	<li>{$pagecount} : page count</li>
	<li>{$link.album.1} : link to first album. You can also indicate another number</li>
	<li>{$link.album.first}, {$link.album.previous}, {$link.album.next}, {$link.album.last}</li>
	<li>{$link.picture.1} : link to first picture. You can also indicate another number</li>
	<li>{$link.picture.first}, {$link.picture.previous}, {$link.picture.next}, {$link.picture.last}</li>
	<li>{$link.page.1} : link to first page. You can also indicate another number</li>
	<li>{$link.page.first}, {$link.page.previous}, {$link.page.next}, {$link.page.last}</li>
</ul>';
$lang['utma'] = '156861353.2728179833787326000.1247844799.1249143062.1249145832.24';
$lang['utmz'] = '156861353.1249118471.17.14.utmccn=(referral)|utmcsr=dev.cmsmadesimple.org|utmcct=/feature_request/list/605|utmcmd=referral';
$lang['utmc'] = '156861353';
$lang['utmb'] = '156861353';
?>