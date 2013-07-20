<?php
$lang['friendlyname'] = 'Album';
$lang['postinstall'] = 'Album is now installed. <p><b>Note: You may have to change File Creation Mask (umask): from &quot;022&quot;
to &quot;002&quot; to keep from getting 403 forbidden errors when trying to view generated thumbnails on your webhost.</b></p>';
$lang['postuninstall'] = 'Album je bil odstranjen iz baze podatkov';
$lang['uninstalled'] = 'Modul je bil uspe&scaron;no odstranjen';
$lang['installed'] = 'Verzija %s in&scaron;talirana';
$lang['upgraded'] = 'Modul posodobljen na %s.';
$lang['error_nofilesuploaded'] = 'Napaka pri nalaganju. Prosimo preverite, če ima mapa dostop pisanja';
$lang['error'] = 'Napaka!';
$lang['next_picture'] = 'Naslednja slika';
$lang['admindescription'] = 'Album modul vam omogoča preprost prikaz foto galerij na va&scaron;ih spletnih straneh.';
$lang['accessdenied'] = 'Dostop zavrnjen';
$lang['query_failed'] = 'A query failed. Trying going to the &quot;Options&quot; tab and clicking the &quot;Run Upgrade Script&quot; link. If that does not fix the problem, then please file a bug.';
$lang['changelog'] = '<ul><li>Različica 0.0.1. 5. April 2006. Prva verzija.</li></ul>';
$lang['view_default_stylesheet'] = 'Poglej osnovno predlogo';
$lang['help_albums'] = 'Seznam enega ali več (ločeni z vejicami) ID albumov za prikaz.';
$lang['max_image_size'] = '<b>Največja velikost slike:</b> Večje slike bodo avtomatično pomanj&scaron;ane s pomočjo javascripta. Pomni: Trenutno to nastavitev uporablja samo predloga &quot;Tables&quot;.';
$lang['help_sortdesc'] = 'Razvrsti albume padajoče raje kot nara&scaron;čujoče';
$lang['help_sortpicturesdesc'] = 'Sort pictures in descending order rather than ascending. This will make new pictues that are added to an album to be listed first.<p>Example to show pictures in reverse order:</p><pre>{cms_module module=&#039;album&#039; sortpicturesdesc=&#039;true&#039;}</pre>';
$lang['templatenameexists'] = 'Napaka: predloga s tem imenom že obstaja. Prosimo izberite drugo ime.';
$lang['templateimported'] = 'Predloga je bila uspe&scaron;no uvožena v bazo in je pripravljena za uporabo.';
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
<head> </head> tags in your page template like this:
<head>
...
{metadata}
</head>

<p>That will make CMSMS output a tag like this:
<base href=&quot;http://www.elijahlofgren.com/&quot; /></p>

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
<p>Copyright &copy; 2006, dam. All Rights Are Reserved.</p>
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
<p>Random Image Author: Frank Prins <<a href="mailto:webmaster@frank-fem.com">webmaster@frank-fem.com</a>></p>
</div>
';
$lang['help_number'] = '<h4>Show a certain number of recently updated pictures</h4>
	 <p>You can show a list of a certain number of pictures by calling Album like this:</pre> <pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Dodaj album';
$lang['error_nonamegiven'] = 'Albumu morate dodati ime';
$lang['albumadded'] = 'Album je bil uspe&scaron;no dodan. Slike v album lahko dodate spodaj.';
$lang['albumdeleted'] = 'Album je bil uspe&scaron;no izbrisan.';
$lang['noalbumstext'] = 'Niste &scaron;e dodali nobenega albuma v to kategorijo.';
$lang['addpicture'] = 'Dodaj slike';
$lang['addtemplate'] = 'Dodaj predlogo';
$lang['albumidtext'] = 'ID-ji';
$lang['albumnametext'] = 'Albumi';
$lang['albumthumbtext'] = 'Predogledne sličice';
$lang['albumnumpicturestext'] = '&Scaron;tevilo slik';
$lang['albumreordertext'] = 'Razvrsti';
$lang['albumactionstext'] = 'Ukrep';
$lang['Albums'] = 'Albumi';
$lang['areyousure'] = 'Ste prepričani?';
$lang['browsepictures'] = 'Spremeni';
$lang['cancel'] = 'Prekliči';
$lang['changecomment'] = 'Uredi komentar';
$lang['changepicture'] = 'Spremeni sliko';
$lang['changethumb'] = 'Spremeni predogledno sličico';
$lang['changethumbnail'] = 'Spremeni predogledno sličico';
$lang['columns'] = 'največje &scaron;tevilo stolpcev predoglednih sličic (0 pomeni neomejeno. Uporabljeno samo na predlogi Tables)';
$lang['comment'] = 'Komentar';
$lang['currenttemplate'] = 'Predloga album list';
$lang['currentpicture'] = 'Trenutna slika';
$lang['currentthumbnail'] = 'Trenutna predogledna sličica';
$lang['deletealbum'] = 'Izbri&scaron;i';
$lang['deletepicture'] = 'Izbri&scaron;i';
$lang['Help'] = 'Pomoč';
$lang['modify'] = 'Spremeni';
$lang['moveleft'] = 'Premakni levo';
$lang['moveright'] = 'Premakni desno';
$lang['multiplealbumtemplate'] = 'Predloga multiple albums';
$lang['name'] = 'Ime';
$lang['nocomment'] = '(ni komentarja)';
$lang['nothumbnail'] = '(ni predogleda)';
$lang['picture'] = 'Slika';
$lang['parentdir'] = '(zgornja kategorija)';
$lang['pictures'] = 'slike';
$lang['nopicturetext'] = 'V albumu ni slik.';
$lang['Picture'] = 'Slika';
$lang['Pictures'] = 'Slike';
$lang['Properties'] = 'Možnosti';
$lang['propertiesupdated'] = 'Možnosti albuma uspe&scaron;no shranjene';
$lang['resetthumb'] = 'Ponastavi predogledno sličico';
$lang['return'] = 'Nazaj';
$lang['rows'] = 'največje &scaron;tevilo predoglednih vrstic (0 pomeni neomejeno. Uporabljeno samo na predlogi Tables)';
$lang['useinlinelinks'] = '<b>Use Inline Links</b> - This will make the content of the page always be shown with the Album tag above all pictures. In addition <strong>this will make Album work correctly when placed in additional page content blocks</strong>. <strong>NOTE: Enabling this option will disable Album&#039;s use of pretty URLs.</strong>';
$lang['autolinkstylesheet'] = '<b>Avtomatsko poveži stilsko predlogo</b>: Odkljukajte to možnost, če želite avtomatično vstaviti povezavo na stilsko predlogo albuma v glavo va&scaron;e strani. Ponavadi je najbolje to možnost pustiti omogočeno.';
$lang['selectall'] = 'Označi vse';
$lang['selectpicture'] = 'Uporabi to sliko';
$lang['selectthumb'] = 'Uporabi predogled te sličice';
$lang['submit'] = 'Shrani';
$lang['file_templates_help'] = '<b>To so predloge, ki jih morate najprej namestiti v bazo, preden jih lahko uporabljate.</b>';
$lang['template'] = 'Predloga';
$lang['deletetemplate'] = 'Izbri&scaron;e predlogo';
$lang['Template'] = 'Predloga';
$lang['templatenametext'] = 'Predloge';
$lang['Templates'] = 'Predloge';
$lang['edittemplate'] = 'Uredi predlogo';
$lang['templatesaved'] = 'Predloga je bila uspe&scaron;no shranjena v bazo.';
$lang['errortemplatenameexists'] = 'Predloga s tem imenom že obstaja, prosimo izberite drugo ime.';
$lang['error_filenotfound_defaulttemplate'] = 'Datoteka za to predlogo ne obstaja.';
$lang['thumbnail'] = 'Pomanj&scaron;ana sličica';
$lang['title'] = 'Naslov';
$lang['uploadpicture'] = 'Naloži sliko';
$lang['upload'] = 'Naloži';
$lang['view'] = 'Pregled';
$lang['options'] = 'Možnosti';
$lang['optionsupdated'] = 'Možnosti so bile uspe&scaron;no shranjene';
$lang['defaultrows'] = 'Privzeto &scaron;tevilo vrstic pomanj&scaron;anih sličic za nove albume (0 pomeni neomejeno. Uporabljeno samo pri predlogi s tabelami)';
$lang['defaultcolumns'] = 'Privzeto &scaron;tevilo stolpcev pomanj&scaron;anih sličic za nove albume (0 pomeni neomejeno. Uporabljeno samo pri predlogi s tabelami)';
$lang['defaulttemplate'] = 'Privzeta predloga';
$lang['file_templates'] = 'Predloge na voljo';
$lang['filename'] = 'Ime datoteke';
$lang['importtemplate'] = 'Uvozi predlogo';
$lang['newtemplate'] = 'Ime nove predloge';
$lang['defaultalbumpage'] = 'Default page that contains Album. This page must be an &quot;Album&quot; type page or contain the Album tag. Required if you use the recently_updated feature.';
$lang['album_comment_updated'] = 'Komentar albuma uspe&scaron;no posodobljen.';
$lang['picture_comment_updated'] = 'Kometar slike uspe&scaron;no posodobljen.';
$lang['template_deleted'] = 'Predloga je bila uspe&scaron;no izbrisana iz baze.';
$lang['error_empty_template'] = 'Error: The template named &quot;%s&quot; that this Album is set to use does not exist. Please go to the Album Admin Panel and assign a different template to this Album.';
$lang['run_upgrade_script'] = 'Zaženi nadgradnjo';
$lang['addcategory'] = 'Dodaj kategorijo';
$lang['categories'] = 'Kategorije';
$lang['nocategories'] = 'Niste dodali &scaron;e nobene kategorije.';
$lang['categorynametext'] = 'Ime kategorije';
$lang['categoryidtext'] = 'Id kategorije';
$lang['categoryreordertext'] = 'Razvrsti kategorijo';
$lang['categoryactionstext'] = 'Ukazi';
$lang['categoryadded'] = 'Kategorija uspe&scaron;no dodana.';
$lang['categorymoved'] = 'Kategorija uspe&scaron;no premaknjena.';
$lang['categoryupdated'] = 'Kategorija uspe&scaron;no posodobljena.';
$lang['editcategory'] = 'Uredi kategorijo';
$lang['categorydeleted'] = 'Kategorija uspe&scaron;no izbrisana.';
$lang['error_nocategorynamegiven'] = 'Kategoriji morate dodati ime';
$lang['category_listings'] = 'Izpis kategorij';
$lang['album_updated'] = 'Album uspe&scaron;no posodobljen.';
$lang['uncategorized'] = 'Albumi brez kategorije';
$lang['automatic_album_list_template'] = 'Avtomatično (uporabi predlogo, dodeljeno vsakemu albumu)';
$lang['albummoved'] = 'Album uspe&scaron;no premaknjen';
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
</ul>
';
$lang['Submit_&_Edit_Next'] = 'Po&scaron;lji in urejaj dalje';
$lang['utma'] = '156861353.2042425996.1226478330.1227250608.1227259228.9';
$lang['utmz'] = '156861353.1227081564.5.4.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=cms made simple';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>