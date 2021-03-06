<?php
$lang['friendlyname'] = 'Albums da fotografias';
$lang['postinstall'] = 'Album è uss installà. <p><b>Remartga: Ti stos midar la \'File Creation Mask\' (umask): da "022"
a "002" per evitar che ti survegns sbagls 403 sche ti emprobas da guardar thumbnails ch\'èn vegnids fatgs sin tes server.</b></p>';
$lang['postuninstall'] = 'Album è uss allontanà da la banca da datas';
$lang['uninstalled'] = 'Deninstallà modul';
$lang['installed'] = 'Release %s is installed';
$lang['upgraded'] = 'Module upgraded in release %s.';
$lang['error_nofilesuploaded'] = 'I ha dà in sbagl durant chargiar sin il server. Controllescha ch\'i dastga vegnir scrit en quest ordinatur';
$lang['error'] = 'Sbagl!';
$lang['next_picture'] = 'Proxima foto';
$lang['admindescription'] = 'Il modul album lubescha da mussar a moda simpla gallerias da fotografias sin tia pagina d\'internet.';
$lang['accessdenied'] = 'Scumandà l\'access';
$lang['query_failed'] = 'A query failed. Trying going to the "Options" tab and clicking the "Run Upgrade Script" link. If that does not fix the problem, then please file a bug.';
$lang['changelog'] = '<ul><li>Version 0.0.1. 5 April 2006. Initial Release.</li></ul>';
$lang['view_default_stylesheet'] = 'Guardar il stylesheet da standard';
$lang['help_albums'] = 'A list of one or more (separated by commas) IDs of Albums to be shown.';
$lang['max_image_size'] = '<b>Maximum image size:</b> Any images larger than this will automatically be scaled down (if the template is configured to do that.) using Javascript. Note: Currently only the "Tables" template uses this setting.';
$lang['help_sortdesc'] = 'Sortar ils albums a moda descendenta enstagl ascendenta.';
$lang['help_sortpicturesdesc'] = 'Sort pictures in descending order rather than ascending. This will make new pictues that are added to an album to be listed first.<p>Example to show pictures in reverse order:</p><pre>{cms_module module=\'album\' sortpicturesdesc=\'true\'}</pre>';
$lang['templatenameexists'] = 'Sbagl: I exista gia in template cun quest num. Tscherna per plaschair in auter.';
$lang['templateimported'] = 'Il template è vegnì importà cun success en la banca da datas ed è uss installà per utilisar.';
$lang['help'] = '<h3>Tge fa quest modul?</h3>
<p>Cun quest modul pos ti administrar ina gallaria da fotografias</p>
<h3>Sco utilisesch jau il modul?</h3>
<p>Tscherna sco prim Cuntegn -> Albums da fotografias e creescha albums ed als agiunta fotografias.</p>
<p>To show all albums on a page, just put this code in your page content: </p>
<p><code>{cms_module module=\'album\'}</code></p>
<p>If you only want to show albums from a specific category then use use code like this:
<p><code>{cms_module module=\'album\' categories=\'1\'}</code></p>
<p>The code above allows you to show in a page albums who belong to a category whose ID is 1.</p>
<p>You can also show multiple categories like this:
<p><code>{cms_module module=\'album\' categories=\'1,3\'}</code></p>
<p>If you only want certain albums shown then use code like this:
<p><code>{cms_module module=\'album\' albums=\'1,3\'}</code></p>
<p>The code above allows you to show in a page albums whose IDs are 1 and 3 for example. If you do not provide paramater "albums", it will show all the albums.</p>
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
<p><b>Note: You may have to change File Creation Mask (umask): from "022"
to "002"
to keep from getting 403 forbidden errors when trying to view
generated thumbnails
on your webhost.</b></p>
<a href="http://dev.cmsmadesimple.org/forum/message.php?msg_id=1181">A possible workaround to thumbnail problems</a>
<h4>Thumbnails will not increase height above 72px</h4>
<p>See <a href="http://forum.cmsmadesimple.org/index.php/topic,14125.msg69907.html#msg69907"> 	
Re: Album module and thumbnails in IE [SOLVED]</a>. Basically delete this part from your template:
{$onepicture->autothumbnailsize} and {$album->autothumbnailsize} to fix the album thumbnails size.</p>
<p>The "autothumbnailsize" feature was added to make all thumbnails stay at height=72. Perhaps this feature is more of a problem than a help.</p>

<h4>Thumbnails don\'t line up correctly</h4>
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
<h4>Fix: Javascript doesn\'t load when pretty urls with hierarchy enabled - big picture doesn\'t show</h4>
Everything should work if you put this tag in between your
<head> </head> tags in your page template like this:
<head>
...
{metadata}
</head>

<p>That will make CMSMS output a tag like this:
<base href="http://www.elijahlofgren.com/" /></p>

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
<p>Copyright © 2006, dam. All Rights Are Reserved.</p>
<p>This module has been released under the <a href="http://www.gnu.org/licenses/licenses.html#GPL">GNU Public License</a>. You must agree to this license before using the module.</p>';
$lang['help_action'] = '<h4>Show list of recently added pictures</h4>
	 <p>You can show a list of added pictures calling Album like this:</p>
<pre>{cms_module module=\'album\' action=\'recently_updated\'}</pre>
<p>If you want to show recent pictures from a specific Album (e.g. album id 1) you can call Album like this:</p>
<pre>{cms_module module=\'album\' albums=\'1\' action=\'recently_updated\' number=\'2\'}</pre>
<p><b>Important</b>: You must choose a "<b>Default page that contains Album.</b>" in order to use this feature.</p>
<div style="border:1px solid black;">
<h4>Show random image</h4>
<p>First it counts all rows in the database (accounting the included Albums), finds a random number between \'0\' and the maximum number of rows. With this number the database pointer is being set to a specific row and the data is retrieved from the table and returned.</p>
<h5>How do I use it?</h5>
<p>Just insert the tag into your template/page like: <code>{cms_module module=\'album\' action=\'random_image\'}</code></p>
<p>To show a certain number of random images call it like this:</p>
<code>{cms_module module=\'album\' action=\'random_image\' number=\'10\'}</code>
<h5>What parameters the random_image action take?</h5>
<p>
<ul>
	<li><em>(optional)</em> <tt>imagesurl</tt>   - Album directory, default is: \'root_url\'/uploads/images</li>
	<li><em>(optional)</em> <tt>albums</tt>      - comma, space, dash or semicolon separated list of albums to show images of.</li>
  <li><em>(optional)</em> <tt>border</tt>      - stylesheetstyled border ala border=\'5px\'</li>
  <li><em>(optional)</em> <tt>picturename</tt> - picturename = True/False, sets a title with the picture name</li>
</ul>
<p><b>Note: These parameters are only available when calling Album with {cms_module module=\'album\' action=\'random_image\'}</b></p>
<p>so for example: {cms_module module=\'album\' action=\'random_image\' albums=\'1,3,4,6\' border=\'3px\' picturename=\'True\'}</p>
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
<p>Random Image Author: Frank Prins <<a href="mailto:webmaster@frank-fem.com">webmaster@frank-fem.com</a>></p>
</div>
';
$lang['help_number'] = '<h4>Show a certain number of recently updated pictures</h4>
	 <p>You can show a list of a certain number of pictures by calling Album like this:</pre> <pre>{cms_module module=\'album\' action=\'recently_updated\' number=\'15\'}
';
$lang['addalbum'] = 'Agiuntar in album';
$lang['error_nonamegiven'] = 'Ti stos tscherner in num per tes nov album';
$lang['albumadded'] = 'L\'album è vegnì agiuntà cun success. Sutvart pos ti agiuntar fotografias.';
$lang['albumdeleted'] = 'L\'album è vegnì stizzà cun success da la banca da datas. ';
$lang['noalbumstext'] = 'Ti n\'has creà nagins albums da fotografias en questa categoria.';
$lang['addpicture'] = 'Agiuntar fotografias';
$lang['addtemplate'] = 'Agiuntar in template';
$lang['albumidtext'] = 'IDs ';
$lang['albumnametext'] = 'Albums ';
$lang['albumthumbtext'] = 'Thumbnails ';
$lang['albumnumpicturestext'] = 'Dumber da fotografias';
$lang['albumreordertext'] = 'Reorder';
$lang['albumactionstext'] = 'Actions';
$lang['Albums'] = 'Albums ';
$lang['areyousure'] = 'Ès ti segir?';
$lang['browsepictures'] = 'Midar';
$lang['cancel'] = 'Interrumper';
$lang['changecomment'] = 'Editar commentari';
$lang['changepicture'] = 'Midar fotografia';
$lang['changethumb'] = 'Midar thumbnail';
$lang['changethumbnail'] = 'Midar thumbnail';
$lang['columns'] = 'Dumber maximal da colonas da thumbnails (0 munta illimità. Be utilisà en templates da tabellas) ';
$lang['comment'] = 'Commentari';
$lang['currenttemplate'] = 'Album List Template';
$lang['currentpicture'] = 'Maletg actual';
$lang['currentthumbnail'] = 'Thumbnail actual';
$lang['deletealbum'] = 'Stidar';
$lang['deletepicture'] = 'Stidar';
$lang['Help'] = 'Agid';
$lang['modify'] = 'Midar';
$lang['moveleft'] = 'Spustar a sanestra';
$lang['moveright'] = 'Spustar a dretga';
$lang['multiplealbumtemplate'] = 'Multiple albums template';
$lang['name'] = 'Num';
$lang['nocomment'] = '(nagin commentari)';
$lang['nothumbnail'] = '(nagin thumbnail)';
$lang['picture'] = 'Maletg';
$lang['parentdir'] = '(Parent directory)';
$lang['pictures'] = 'maletgs';
$lang['nopicturetext'] = 'Actualmain sa chattan nagins maletgs en quest album.';
$lang['Picture'] = 'Maletg';
$lang['Pictures'] = 'Maletgs';
$lang['Properties'] = 'Caracteristicas';
$lang['propertiesupdated'] = 'Las caractaristicas da l\'album èn vegnidas memorisadas cun success';
$lang['resetthumb'] = 'Metter anavos il thumbnail';
$lang['return'] = 'Anavos';
$lang['rows'] = 'Dumber maximal da lingias da thumbnails (0 munta illimità. Be utilisà en templates da tabellas) ';
$lang['useinlinelinks'] = '<b>Use Inline Links</b> - This will make the content of the page always be shown with the Album tag above all pictures. In addition <strong>this will make Album work correctly when placed in additional page content blocks</strong>. <strong>NOTE: Enabling this option will disable Album\'s use of pretty URLs.</strong>';
$lang['autolinkstylesheet'] = '<b>Auto Link Stylesheet</b>: Check this box to automatically insert the link to the Album stylesheet in head of your page. This should usually be left enabled.';
$lang['selectall'] = 'Tscherner tuts';
$lang['selectpicture'] = 'Utilisar quest maletg';
$lang['selectthumb'] = 'Utilisar il thumbnail da quest maletg';
$lang['submit'] = 'Memorisar';
$lang['file_templates_help'] = '<b>These are templates that you must install to the database before you can use them.</b>';
$lang['template'] = 'Template ';
$lang['deletetemplate'] = 'Stidar Template';
$lang['Template'] = 'Template ';
$lang['templatenametext'] = 'Templates ';
$lang['Templates'] = 'Templates ';
$lang['edittemplate'] = 'Editar template';
$lang['templatesaved'] = 'Il template è vegnì memorisà cun success en la banca da datas.';
$lang['errortemplatenameexists'] = 'In template cun quest num exista gia, tscherna per plaschair in auter.';
$lang['error_filenotfound_defaulttemplate'] = 'La datoteca da template per quest template n\'è betg vegnì chattà. ';
$lang['thumbnail'] = 'Thumbnail ';
$lang['title'] = 'Titel';
$lang['uploadpicture'] = 'Chargiar sin in maletg';
$lang['upload'] = 'Chargiar si';
$lang['view'] = 'Guardar';
$lang['options'] = 'Opziuns';
$lang['optionsupdated'] = 'Las opziuns èn vegnidas actualisadas cun success. ';
$lang['defaultrows'] = 'Standard dal dumber maximal da lingias da thumbnails per novs albums (0 munta illimità. Be utilisà en templates da tabellas) ';
$lang['defaultcolumns'] = 'Standard dal dumber maximal da colonas da thumbnails per novs albums (0 munta illimità. Be utilisà en templates da tabellas) ';
$lang['defaulttemplate'] = 'Template da standard';
$lang['file_templates'] = 'Available Templates';
$lang['filename'] = 'Num da datoteca';
$lang['importtemplate'] = 'Importar template';
$lang['newtemplate'] = 'Num dal nov template';
$lang['defaultalbumpage'] = 'Pagina da standard che cuntegna l\'album. Questa pagina sto esser dal tip "album". Necessari per utilisar il feature \'recently_updated\'. ';
$lang['album_comment_updated'] = 'Il commentari da l\'album è vegnì actualisà cun success';
$lang['picture_comment_updated'] = 'Il commentari dal maletg è vegnì actualisà cun success';
$lang['template_deleted'] = 'Il template è vegnì stidà cun success';
$lang['error_empty_template'] = 'Sbagl: Il template cun il num "%s" che quest album duai utilisar n\'exista betg. Va per plaschair en il admin-panel da l\'album e tscherna in auter template per quest album.';
$lang['run_upgrade_script'] = 'Run Upgrade Script';
$lang['addcategory'] = 'Agiuntar categoria';
$lang['categories'] = 'Categorias';
$lang['nocategories'] = 'Ti n\'has anc agiuntà naginas categorias';
$lang['categorynametext'] = 'Num da categoria';
$lang['categoryidtext'] = 'Id da la categoria';
$lang['categoryreordertext'] = 'Reorder Category';
$lang['categoryactionstext'] = 'Actions';
$lang['categoryadded'] = 'La categoria è vegnida agiuntada cun success a la banca da datas.';
$lang['categorymoved'] = 'La categoria è vegnida spustada cun success.';
$lang['categoryupdated'] = 'La categoria è vegnida actualisada cun success';
$lang['editcategory'] = 'Editar categoria';
$lang['categorydeleted'] = 'La categoria è vegnida stidada cun success.';
$lang['error_nocategorynamegiven'] = 'La categoria sto avair in num.';
$lang['category_listings'] = 'Category Listings';
$lang['album_updated'] = 'L\'album è vegnì actualisà cun success';
$lang['uncategorized'] = 'Uncategorized Albums';
$lang['automatic_album_list_template'] = 'Automatic (use template assigned to each album)';
$lang['albummoved'] = 'L\'album è vegnì supstà cun success';
$lang['helpdetailpage'] = '<p>Page to display Albums in.  This can either be a page alias or an id. Used to allow Album pictures 
to be displayed in a different page from the album list.</p> <p>Example of use:</p><pre>{cms_module module=\'album\' detailpage=\'album\'}</pre>';
$lang['help_template'] = '<h3>Important tips for modifying templates</h3>
<h4>Enable debug mode!</h4>
<p>Unless you enable debug mode, important errors about undefined template variables will be hidden, making debugging templates very difficult!</p>
<p>You can enable debug mode by opening config.php and setting:</p>
<code>$config[\'debug\'] = true;<code>

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
	<li>{$picture->autothumbnailsize}: outputs something like \'height="76"\' to make tall thumbnails fit in a box</li>
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
</ul>
';
$lang['Submit_&_Edit_Next'] = 'Trametter & editar il proxim';
$lang['utmz'] = '156861353.1219008274.1.1.utmccn=(direct)|utmcsr=(direct)|utmcmd=(none)';
$lang['utma'] = '156861353.578823098.1219008274.1226160390.1226167582.15';
$lang['utmc'] = '156861353';
$lang['utmb'] = '156861353';
?>