<?php
$lang['friendlyname'] = 'Kuva-albumit';
$lang['postinstall'] = 'Album-moduuli on asennettu. <p><b>Huomaa: Saatat joutua muuttamaan tiedoston luontimaskin (umask): arvosta &quot;022&quot; arvoon &quot;002&quot; v&auml;ltty&auml;ksesi 403 forbidden -virheilt&auml;, kun yrit&auml;t katsella luotuja pienoiskuvia web-sivustoltasi</b></p>';
$lang['postuninstall'] = 'Album-moduuli on nyt poistettu tietokannasta.';
$lang['uninstalled'] = 'Moduuli poistettu';
$lang['installed'] = 'Julkaisu %s asennettu';
$lang['upgraded'] = 'P&auml;ivitetty julkaisuun %s.';
$lang['error_nofilesuploaded'] = 'P&auml;ivityksess&auml; tapahtui virhe! Tarkista kohdekansion k&auml;ytt&ouml;oikeudet.';
$lang['error'] = 'Virhe!';
$lang['next_picture'] = 'Seuraava kuva';
$lang['admindescription'] = 'Album-moduuli mahdollistaa kuvagallerioiden helpon n&auml;ytt&auml;misen web-sivullasi.';
$lang['accessdenied'] = 'P&auml;&auml;sy kielletty';
$lang['query_failed'] = 'Kysely ep&auml;onnistui. Kokeile klikata &quot;Asetukset&quot;-v&auml;lilehdelt&auml; linkki&auml; &quot;Run Upgrade Script&quot;. Jos ongelma ei korjaannu sill&auml;, raportoi ohjelmistovirhe.';
$lang['changelog'] = '<ul><li>Versio 0.0.1. 5 Huhtikuu 2006. ensimm&auml;inen versio.</li></ul>';
$lang['view_default_stylesheet'] = 'N&auml;yt&auml; oletustyylisivu';
$lang['help_albums'] = 'Lista n&auml;ytett&auml;vist&auml; ID:eist&auml; tai albumeista (erotettuna pilkulla).';
$lang['max_image_size'] = '<b>Kuvan enimm&auml;iskoko:</b> Kaikki t&auml;t&auml; suuremmat kuvat pienennet&auml;&auml;n automaattisesti (jos pohja on asetettu tekem&auml;&auml;n niin) k&auml;ytt&auml;en Javascripti&auml;.';
$lang['help_sortdesc'] = 'J&auml;rjest&auml; albumit laskevassa j&auml;rjestyksess&auml;';
$lang['help_sortpicturesdesc'] = 'Sort pictures in descending order rather than ascending. This will make new pictues that are added to an album to be listed first.<p>Example to show pictures in reverse order:</p><pre>{cms_module module=&#039;album&#039; sortpicturesdesc=&#039;true&#039;}</pre>';
$lang['templatenameexists'] = 'Virhe: Samanniminen sivupohja on jo olemassa. Valitse toinen nimi.';
$lang['templateimported'] = 'Sivupohja tuotiin tietokantaan ja on nyt asennettu k&auml;ytt&ouml;&auml; varten';
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
$lang['help_action'] = '<h4>N&auml;yt&auml; lista &auml;skett&auml;in lis&auml;tyist&auml; kuvista</h4>
	 <p>Voit n&auml;ytt&auml;&auml; listan lis&auml;tyist&auml; kuvista kutsumalla Albumia n&auml;in:</pre>
<pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039;}</pre>
<div style=&quot;border:1px solid black;&quot;>
<h4>N&auml;yt&auml; satunnainen kuva</h4>
<p>Ensin lasketaan kaikki tietokannan rivit (albumit), sitten otetaan satunnainen luku v&auml;lilt&auml; 0 - rivien enimm&auml;ism&auml;&auml;r&auml;. T&auml;ll&auml; numerolla haetaan jonkun rivin data.</p>
<h5>Kuinka sit&auml; k&auml;ytet&auml;&auml;n?</h5>
<p>Lis&auml;&auml; tagi pohjaan/sivulle t&auml;h&auml;n tapaan: <code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</code></p>
<p>N&auml;ytt&auml;&auml;ksesi tietyn m&auml;&auml;r&auml;n satunnaisia kuvia kutsu moduulia t&auml;h&auml;n tapaan:</p>
<code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039; number=&#039;10&#039;}</code>
<h5>Mit&auml; parametreja random_image -toiminto ottaa?</h5>
<p>
<ul>
	<li><em>(valinnainenl)</em> <tt>imagesurl</tt>   - Albumihakemisto, oletus on: &#039;root_url&#039;/uploads/images</li>
	<li><em>(optional)</em> <tt>albums</tt>      - pilkulla, v&auml;lily&ouml;nnill&auml;, viivalla tai puolipisteell&auml; erotettu luettelo albumeista, joiden kuvia n&auml;ytet&auml;&auml;n.</li>
  <li><em>(optional)</em> <tt>border</tt>      -tyylitiedostotyylinen raja, kuten border=&#039;5px&#039;</li>
  <li><em>(optional)</em> <tt>picturename</tt> - picturename = True/False, asettaa otsikon, joka on kuvanimi</li>
</ul>
<p><b>Huomaa: N&auml;m&auml; parametrit ovat k&auml;ytett&auml;viss&auml; vain, kun Albumia kutsutaan tyyliin {cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</b></p>
<p>esimerkiksi: {cms_module module=&#039;album&#039; action=&#039;random_image&#039; albums=&#039;1,3,4,6&#039; border=&#039;3px&#039; picturename=&#039;True&#039;}</p>
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
</div>';
$lang['help_number'] = '<h4>N&auml;yt&auml; tietty m&auml;&auml;r&auml; &auml;skett&auml;in p&auml;ivitettyj&auml; kuvia</h4>
	 <p>Voit n&auml;ytt&auml;&auml; tietyn m&auml;&auml;r&auml;n kuvia kutsumalla Albumia n&auml;in:</pre> <pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Lis&auml;&auml; albumi';
$lang['error_nonamegiven'] = 'Anna nimi uudelle albumille';
$lang['albumadded'] = 'Albumi lis&auml;ttiin onnistuneesti, voit lis&auml;t&auml; kuvia t&auml;h&auml;n albumiin alempaa.';
$lang['albumdeleted'] = 'Albumi poistettiin tietokannasta.';
$lang['noalbumstext'] = 'Et ole viel&auml; luonut yht&auml;&auml;n albumia.';
$lang['addpicture'] = 'Lis&auml;&auml; kuvia';
$lang['addtemplate'] = 'Lis&auml;&auml; pohja';
$lang['albumidtext'] = 'ID:t';
$lang['albumnametext'] = 'Albumit';
$lang['albumthumbtext'] = 'Pienoiskuvat';
$lang['albumnumpicturestext'] = 'Kuvien m&auml;&auml;r&auml;';
$lang['albumreordertext'] = 'J&auml;rjest&auml; uudelleen';
$lang['albumactionstext'] = 'Toiminnot';
$lang['Albums'] = 'Albumit';
$lang['areyousure'] = 'Oletko varma?';
$lang['browsepictures'] = 'Muuta';
$lang['cancel'] = 'Peruuta';
$lang['changecomment'] = 'Muokkaa kommenttia';
$lang['changepicture'] = 'Vaihda kuva';
$lang['changethumb'] = 'Vaihda';
$lang['changethumbnail'] = 'Vaihda pienoiskuva';
$lang['columns'] = 'Pienoiskuvasarakkeiden enimm&auml;ism&auml;&auml;r&auml; (0 = rajoittamaton. K&auml;ytet&auml;&auml;n vain taulukkopohjassa)';
$lang['comment'] = 'Kommentti';
$lang['currenttemplate'] = 'Albumilistan pohja';
$lang['currentpicture'] = 'Nykyinen kuva';
$lang['currentthumbnail'] = 'Nykyinen pienoiskuva';
$lang['deletealbum'] = 'Poista';
$lang['deletepicture'] = 'Poista';
$lang['Help'] = 'Ohje';
$lang['modify'] = 'Muuta';
$lang['moveleft'] = 'Siirr&auml; vasemmalle';
$lang['moveright'] = 'Siirr&auml; oikealle';
$lang['multiplealbumtemplate'] = 'Useamman albumin pohja';
$lang['name'] = 'Nimi';
$lang['nocomment'] = '(Ei kommenttia)';
$lang['nothumbnail'] = '(Ei pienoiskuvaa)';
$lang['picture'] = 'Kuva';
$lang['parentdir'] = '(Yl&auml;kansio)';
$lang['pictures'] = 'Kuvat';
$lang['nopicturetext'] = 'T&auml;ss&auml; albumissa ei ole kuvia.';
$lang['Picture'] = 'Kuva';
$lang['Pictures'] = 'Kuvat';
$lang['Properties'] = 'Asetukset';
$lang['propertiesupdated'] = 'Albumin asetukset tallennettu';
$lang['resetthumb'] = 'Nollaa pienoiskuva';
$lang['return'] = 'Takaisin';
$lang['rows'] = 'Pienoiskuvarivien enimm&auml;ism&auml;&auml;r&auml; (0 = rajoittamaton. K&auml;ytet&auml;&auml;n vain taulukkopohjassa)';
$lang['useinlinelinks'] = '<b>Use Inline Links</b> - This will make the content of the page always be shown with the Album tag above all pictures. In addition <strong>this will make Album work correctly when placed in additional page content blocks</strong>. <strong>NOTE: Enabling this option will disable Album&#039;s use of pretty URLs.</strong>';
$lang['autolinkstylesheet'] = '<b>Automaattinen tyylisivu</b>: Valitse t&auml;m&auml; jos haluat ett&auml; tyylisivut lis&auml;t&auml;&auml;n automaattisesti. T&auml;m&auml; tulisi yleens&auml; j&auml;tt&auml;&auml; valituksi.';
$lang['selectall'] = 'Valitse kaikki';
$lang['selectpicture'] = 'K&auml;yt&auml; t&auml;t&auml; kuvaa';
$lang['selectthumb'] = 'K&auml;yt&auml; t&auml;m&auml;n kuvan pienoiskuvaa';
$lang['submit'] = 'Tallenna';
$lang['file_templates_help'] = '<b>N&auml;m&auml; mallit t&auml;ytyy asentaa tietokantaan ennen kuin niit&auml; voi k&auml;ytt&auml;&auml;.</b>';
$lang['template'] = 'Pohja';
$lang['deletetemplate'] = 'Poista pohja';
$lang['Template'] = 'Pohja';
$lang['templatenametext'] = 'Pohjat';
$lang['Templates'] = 'Asennetut pohjat';
$lang['edittemplate'] = 'Muokkaa pohjaa';
$lang['templatesaved'] = 'Pohja tallennettu tietokantaan.';
$lang['errortemplatenameexists'] = 'Samalla nimell&auml; oleva pohja on jo olemassa, valitse toinen nimi.';
$lang['error_filenotfound_defaulttemplate'] = 'T&auml;lle pohjalle ei l&ouml;ydy tiedostoa.';
$lang['thumbnail'] = 'Pienoiskuva';
$lang['title'] = 'Otsikko';
$lang['uploadpicture'] = 'Lataa kuva';
$lang['upload'] = 'Lataa';
$lang['view'] = 'N&auml;yt&auml;';
$lang['options'] = 'Asetukset';
$lang['optionsupdated'] = 'Asetukset p&auml;ivitetty';
$lang['defaultrows'] = 'Pienoiskuvien oletusmaksimirivim&auml;&auml;r&auml; uusille albumeille (0=rajoittamaton)';
$lang['defaultcolumns'] = 'Pienoiskuvien oletusmaksimisarakem&auml;&auml;r&auml; uusille albumeille (0=rajoittamaton)';
$lang['defaulttemplate'] = 'Oletusmalli';
$lang['file_templates'] = 'Tiedostopohjat';
$lang['filename'] = 'Tiedostonimi';
$lang['importtemplate'] = 'Tuo pohja';
$lang['newtemplate'] = 'Uuden pohjan nimi';
$lang['defaultalbumpage'] = 'Oletussivu, joka sis&auml;lt&auml;&auml; Albumin. T&auml;m&auml;n sivun on oltava &quot;Album&quot;-tyyppi&auml; tai sis&auml;llett&auml;v&auml; Album-tagi. Pakollinen, jos k&auml;yt&auml;t recently_updated-ominaisuutta';
$lang['album_comment_updated'] = 'Albumin kommentti p&auml;ivitetty';
$lang['picture_comment_updated'] = 'Kuvan kommentti p&auml;ivitetty';
$lang['template_deleted'] = 'Pohja poistettu tietokannasta';
$lang['error_empty_template'] = 'Virhe: Pohjaa nimelt&auml; &quot;%s&quot;, jota t&auml;m&auml; albumi on asetettu k&auml;ytt&auml;m&auml;&auml;n, ei ole olemassa. Mene Albumin hallintapaneeliin ja aseta toinen pohja t&auml;lle albumille.';
$lang['run_upgrade_script'] = 'Suorita p&auml;ivitys-skripti';
$lang['addcategory'] = 'Lis&auml;&auml; kategoria';
$lang['categories'] = 'Kategoriat';
$lang['nocategories'] = 'Et ole viel&auml; lis&auml;nnyt yht&auml;&auml;n kategoriaa.';
$lang['categorynametext'] = 'Kategorian nimi';
$lang['categoryidtext'] = 'Kategorian id';
$lang['categoryreordertext'] = 'J&auml;rjest&auml; kategoriat uudelleen';
$lang['categoryactionstext'] = 'Toiminnot';
$lang['categoryadded'] = 'Kategorian lis&auml;&auml;minen tietokantaan onnistui.';
$lang['categorymoved'] = 'Kategorian siirt&auml;minen onnistui.';
$lang['categoryupdated'] = 'Kategorian p&auml;ivitt&auml;minen onnistui.';
$lang['editcategory'] = 'Muokkaa kategoriaa';
$lang['categorydeleted'] = 'Kategorian poistaminen onnistui.';
$lang['error_nocategorynamegiven'] = 'Kategorialle on nimett&auml;v&auml;.';
$lang['category_listings'] = 'Kategorioiden listaus';
$lang['album_updated'] = 'Albumin p&auml;ivitt&auml;minen onnistui.';
$lang['uncategorized'] = 'Albumit ilman kategoriaa';
$lang['automatic_album_list_template'] = 'Automaattinen (k&auml;yt&auml; pohjaa jokaisella albumilla)';
$lang['albummoved'] = 'Albumin siirt&auml;minen onnistui.';
$lang['helpdetailpage'] = '<p>Sivu, jolla albumit n&auml;ytet&auml;&auml;n.  T&auml;m&auml; voi olla sivun alias tai id. K&auml;yt&auml;, kun haluat n&auml;ytt&auml;&auml; albumin kuvat eri sivulla kuin albumien listaus</p> <p>Esimerkki:</p><pre>{cms_module module=&#039;album&#039; detailpage=&#039;album&#039;}</pre>';
$lang['help_template'] = '<h3>Important tips for modifying templates</h3>
<h4>Enable debug mode!</h4>
<p>Unless you enabled debug mode, important errors about undefined template variables will be hidden, making debugging templates very difficult!</p>
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
$lang['utma'] = '156861353.1524739552.1203768231.1216710884.1216716414.20';
$lang['utmz'] = '156861353.1204486725.2.2.utmccn=(organic)|utmcsr=google|utmctr=cmsmadesimple wiki language|utmcmd=organic';
$lang['utmc'] = '156861353';
$lang['utmb'] = '156861353';
?>