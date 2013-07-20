<?php
$lang['msg_import_good'] = 'XML datoteka uspe&scaron;no uvežena';
$lang['info_newname'] = '<em>(opcionalno)</em> specificirajte naziv novog &scaron;ablona';
$lang['lbl_newname'] = 'Naziv novog &scaron;ablona';
$lang['error_templateexists'] = '&Scaron;ablon albuma sa ovim nazivom već postoji';
$lang['error_badpermissions'] = 'Dozvole koje imate nad odredi&scaron;nim direktorijumom su nedovoljne za uvoz XML &scaron;ablona';
$lang['error_badxmlformat'] = 'Otpremljena XML datoteka nije u odgovarajućem formatu (ili je u pitanju neki drugi problem vezan za nju)';
$lang['error_badupload'] = 'Do&scaron;lo je do gre&scaron;ke prilikom otpremanja datoteke';
$lang['error_baduploadtype'] = 'Otpremljena datoteka je nedozvoljenog tipa';
$lang['error_noupload'] = 'Nije otpremljena nijedna datoteka';
$lang['error_param'] = 'Nedostaje parametar';
$lang['lbl_select_file'] = 'Izaberite XML datoteku';
$lang['lbl_import'] = 'Uvezite &scaron;ablon albuma pomoću XML datoteke';
$lang['exporttemplate'] = 'Izvezi u XML';
$lang['template_metadata'] = 'Meta-podaci &scaron;ablona albuma';
$lang['Metadata'] = 'Meta-podaci';
$lang['canceled'] = 'Operacija otkazana';
$lang['submit_edit_next'] = 'Po&scaron;alji &amp; Izmeni sledeću';
$lang['friendlyname'] = 'Foto albumi';
$lang['postinstall'] = 'Modul Album je instaliran. <p><b>Napomena: Morate promeniti masku za kreiranje datoteka (umask) sa &quot;022&quot;
na &quot;002&quot; da biste sprečili dobijanje 403 <em>forbidden</em> gre&scaron;aka prilikom poku&scaron;aja pregledanja generisanih umanjenih prikaza.</b><br /><br />Instaliran je i novi Stil, pod nazivom &#039;Album Module&#039; koji ćete morati da povežete sa &Scaron;ablonom stranice.</p>';
$lang['postuninstall'] = 'Album je obrisan iz baze podataka.';
$lang['uninstalled'] = 'Modul je deinstaliran.';
$lang['installed'] = 'Modul verzije %s je instaliran.';
$lang['upgraded'] = 'Modul je uspe&scaron;no nadograđen na verziju %s.';
$lang['error_nofilesuploaded'] = 'Do&scaron;lo je do gre&scaron;ke prilikom otpremanja datoteke. Molimo postarajte se da je moguće upisivanje u odredi&scaron;ni direktorijum.';
$lang['error'] = 'Gre&scaron;ka.';
$lang['next_picture'] = 'Sledeća slika';
$lang['admindescription'] = 'Modul Albumi omogućuje Vam da na jednostavan način na svom sajtu prikazujete galerije fotografija.';
$lang['accessdenied'] = 'Pristup odbijen';
$lang['query_failed'] = 'Upit je bio neuspe&scaron;an. Poku&scaron;ajte otići na tab &quot;Opcije&quot;, pa kliknut na link &quot;Pokreni skript za nadogradnju&quot;. Ukoliko to ne re&scaron;i problem, molimo prijavite gre&scaron;ku.';
$lang['changelog'] = '<ul><li>Verzija 0.0.1. 5 April 2006. Inicijalna verzija.</li></ul>';
$lang['help_albums'] = 'Lista jednog ili vi&scaron;e (zarezom razdvojenih) ID oznaka albuma koje treba prikazati.';
$lang['max_image_size'] = '<b>Maksimalna veličina slike:</b> Sve slike koje su veće od ovdje navedene vrijednosti će automatski biti skalirane (ukoliko je &scaron;ablon tako pode&scaron;en) kori&scaron;ćenjem <em>JavaScript-a</em>. Napomena: Ovaj parametar trenutno koristi samo &scaron;ablon &quot;Tables&quot;.';
$lang['help_sortdesc'] = 'Sortiraj albume u opadajućem, radije nego u rastućem redosledu.';
$lang['help_sortpicturesdesc'] = 'Sortiraj albume u opadajućem, radije nego u rastućem redosledu. Ovim će slike koje su poslednje dodate u album biti prikazane prve.<p>Primer koda kojim ćete prikazati slike u obrnutom redosledu:</p><pre>{Album sortpicturesdesc=&#039;true&#039;}</pre>';
$lang['templatenameexists'] = 'Gre&scaron;ka: &Scaron;ablon pod tim nazivom već postoji. Molimo izaberite drugi naziv.';
$lang['templateimported'] = '&Scaron;ablon je uspe&scaron;no uvežen u bazu podataka i spreman je za kori&scaron;ćenje.';
$lang['help'] = '<h3>What Does This Do?</h3>
<p>This module can be used to manage picture gallery</p>
<h3>How Do I Use It</h3>
<p>First go to Content -> Photo Albums and create Albums and add pictures to them.</p>
<p>To show all albums on a page, just put this code in your page content: </p>
<p><code>{Album}</code></p>
<p>If you only want to show albums from a specific category then use use code like this:
<p><code>{Album categories=&#039;1&#039;}</code></p>
<p>The code above allows you to show in a page albums who belong to a category whose ID is 1.</p>
<p>You can also show multiple categories like this:
<p><code>{Album categories=&#039;1,3&#039;}</code></p>
<p>If you only want certain albums shown then use code like this:
<p><code>{Album albums=&#039;1,3&#039;}</code></p>
<p>The code above allows you to show in a page albums whose IDs are 1 and 3 for example. If you do not provide paramater &quot;albums&quot;, it will show all the albums.</p>
<h3>Templates</h3>
<h4>How to change the links and text in the picture popup for the default Album template</h4>
<p>You can change the text in the default Album popup by editing: modules/Album/templates/db/js/thickbox.js (this is not ideal for upgradability, but it seems to work fine)</p>
<h4>How to remove border around thumbnails</h4>
<p>Add this to the style sheet &#039;Album Module&#039; in Layout > Stylesheets</p>
<pre>.thumb a { background-color:transparent; border:0; }</pre>
<h4>Fix large gap problems caused by clear:both</h4>
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

<h4>Thumbnails don&#039;t line up correctly</h4>
<p>You may need to add a height: parameter to the style sheet, find the tallest one and set &#039;.thumb&#039; to that height then they should all float correctly.</p>

<h4>Thumbnails stretched incorrectly</h4>
<p>An easy way to fix this is to just edit the style sheet Album Module in Layout > Stylesheets</p>
<p>And replace this, or remove the height call:</p>
<pre>
/* Thumb height*/ 
	height:72px;
</pre>
<p>with this:</p>
<pre>
/* Thumb height*/ 
	/* height:72px; */
</pre>

<h4>Increasing the size of the thumbnails</h4>
<p>Look in Site Admin > Global Settings for Thumbnail Width, Thumbnail Height this will find the biggest number between the 2 and set it to your size, if you generate any thumbnails before setting this you need to delete those thumbnails and make them again.</p>
<h4>Image Effects (Transparancy) not quite working</h4>
<p>Make sure all the files in the templates/db folder have chmod 755. See: <a target="_blank" href="http://forum.cmsmadesimple.org/index.php?topic=10466.msg52526#msg52526"> 	
Re: random_image in Album. Can it be a greybox thumbnail? {SOLVED!}</a>.</p> ';
$lang['help_action'] = '<h4>Show list of recently added pictures</h4>
	 <p>You can show a list of added pictures calling Album like this:</p>
<pre>{Album action=&#039;recently_updated&#039;}</pre>
<p>If you want to show recent pictures from a specific Album (e.g. album id 1) you can call Album like this:</p>
<pre>{Album albums=&#039;1&#039; action=&#039;recently_updated&#039; number=&#039;2&#039;}</pre>
<p><b>Important</b>: You must choose a &quot;<b>Default page that contains Album.</b>&quot; in order to use this feature.</p>
<h4>Show random image</h4>
<p>First it counts all rows in the database (accounting the included Albums), finds a random number between &#039;0&#039; and the maximum number of rows. With this number the database pointer is being set to a specific row and the data is retrieved from the table and returned.</p>
<h5>How do I use it?</h5>
<p>Just insert the tag into your template/page like: <code>{Album action=&#039;random_image&#039;}</code></p>
<p>To show a certain number of random images call it like this:</p>
<code>{Album action=&#039;random_image&#039; number=&#039;10&#039;}</code>
<h5>What parameters the random_image action take?</h5>
<p>
<ul>
	<li><em>(optional)</em> <tt>imagesurl</tt>   - Album directory, default is: &#039;root_url&#039;/uploads/images</li>
	<li><em>(optional)</em> <tt>albums</tt>      - comma, space, dash or semicolon separated list of albums to show images of.</li>
  <li><em>(optional)</em> <tt>border</tt>      - stylesheetstyled border ala border=&#039;5px&#039;</li>
  <li><em>(optional)</em> <tt>picturename</tt> - picturename = True/False, sets a title with the picture name</li>
</ul>
<p><b>Note: These parameters are only available when calling Album with {Album action=&#039;random_image&#039;}</b></p>
<p>so for example: {Album action=&#039;random_image&#039; albums=&#039;1,3,4,6&#039; border=&#039;3px&#039; picturename=&#039;True&#039;}</p>
</p>
<p>Random Image Author: Frank Prins <<a target="_blank" href="mailto:webmaster@frank-fem.com">webmaster@frank-fem.com</a>></p>
';
$lang['help_number'] = '<h4>Prikaži određeni broj nedavno izmenjenih slika</h4>
	 <p>Možete prikazati listu nedavno izmenjenih slika kori&scaron;ćenjem koda sličnog ovom:</pre> <pre>{Album action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Dodaj album';
$lang['error_nonamegiven'] = 'Novom albumu mora biti određen naziv.';
$lang['albumadded'] = 'Album je uspe&scaron;no dodat. Dole možete u njega dodati slike.';
$lang['albumdeleted'] = 'Album je uspe&scaron;no obrisan iz baze podataka.';
$lang['noalbumstext'] = 'U ovoj kategoriji nema kreiranih albuma.';
$lang['addpicture'] = 'Dodaj slike';
$lang['addpicturew'] = 'Add pictures<br />If this is the first time this folder has been opened for/by Album, please wait till all thumbs are created to select them, else you will get large images instead';
$lang['addtemplate'] = 'Dodaj &scaron;ablon';
$lang['albumidtext'] = 'ID oznake';
$lang['albumnametext'] = 'Albumi';
$lang['albumthumbtext'] = 'Umanjeni prikazi';
$lang['albumnumpicturestext'] = 'Broj slika';
$lang['albumreordertext'] = 'Promeni redosled';
$lang['albumactionstext'] = 'Akcije';
$lang['Albums'] = 'Albumi';
$lang['areyousure'] = 'Da li ste sigurni?';
$lang['browsepictures'] = 'Promeni';
$lang['cancel'] = 'Otkaži';
$lang['changecomment'] = 'Uredi komentar';
$lang['changepicture'] = 'Promeni sliku';
$lang['changethumb'] = 'Promeni umanjeni prikaz';
$lang['changethumbnail'] = 'Promeni umanjeni prikaz';
$lang['columns'] = 'Maksimalan broj kolona u kojima će se prikazivati umanjeni prikazi (0 znači da ograničenja nema. Koristi se samo u &scaron;ablonu &#039;Tables&#039;)';
$lang['comment'] = 'Komentar';
$lang['currenttemplate'] = 'Lista &scaron;ablona albuma';
$lang['currentpicture'] = 'Tekuća slika';
$lang['currentthumbnail'] = 'Tekući umanjeni prikaz';
$lang['deletealbum'] = 'Obri&scaron;i';
$lang['deletepicture'] = 'Obri&scaron;i';
$lang['Help'] = 'Pomoć';
$lang['modify'] = 'Promeni';
$lang['moveleft'] = 'Pomeri gore';
$lang['moveright'] = 'Pomeri dole';
$lang['multiplealbumtemplate'] = 'Multiple albums template';
$lang['name'] = 'Naziv';
$lang['nocomment'] = '(nema komentara)';
$lang['nothumbnail'] = '(nema umanjenog prikaza)';
$lang['picture'] = 'Slika';
$lang['parentdir'] = '(Direktorijum-roditelj)';
$lang['pictures'] = 'slika';
$lang['nopicturetext'] = 'U ovom albumu nema slika.';
$lang['Picture'] = 'Slika';
$lang['Pictures'] = 'Slika';
$lang['Properties'] = 'Svojstva';
$lang['propertiesupdated'] = 'Svojstva albuma su uspe&scaron;no memorisana.';
$lang['resetthumb'] = 'Resetuj umanjeni prikaz';
$lang['return'] = 'Po&scaron;alji';
$lang['rows'] = 'Maksimalan broj redova u kojima će se prikazivati umanjeni prikazi (0 znači da ograničenja nema. Koristi se samo u &scaron;ablonu &#039;Tables&#039;)';
$lang['useinlinelinks'] = '-<b>Use Inline Links</b> - This will make the content of the page always be shown with the Album tag above all pictures. In addition <strong>this will make Album work correctly when placed in additional page content blocks</strong>. <strong>NOTE: Enabling this option will disable Album&#039;s use of pretty URLs.</strong>';
$lang['selectall'] = 'Selektuj sve';
$lang['selectpicture'] = 'Upotrebi ovu sliku';
$lang['selectthumb'] = 'Upotrebi umanjeni prikaz ove slike';
$lang['submit'] = 'Sačuvaj';
$lang['file_templates_help'] = '<b>Ovo su &scaron;abloni koje morate instalirati u bazu podataka pre kori&scaron;ćenja.</b>';
$lang['template'] = '&Scaron;ablon';
$lang['deletetemplate'] = 'Obri&scaron;i &scaron;ablon';
$lang['Template'] = '&Scaron;ablon';
$lang['templatenametext'] = '&Scaron;abloni';
$lang['Templates'] = '&Scaron;abloni';
$lang['edittemplate'] = 'Izmeni &scaron;ablon';
$lang['templatesaved'] = '&Scaron;ablon je uspe&scaron;no memorisan u bazu podataka.';
$lang['errortemplatenameexists'] = '&Scaron;ablon pod tim nazivom već postoji. Molimo izaberite drugi naziv.';
$lang['error_filenotfound_defaulttemplate'] = 'Datoteka koja sadrži ovaj &scaron;ablon nije pronađena.';
$lang['thumbnail'] = 'Umanjeni prikaz';
$lang['title'] = 'Naslov';
$lang['uploadpicture'] = 'Otpremi sliku';
$lang['upload'] = 'Otpremi';
$lang['view'] = 'Pogledaj';
$lang['options'] = 'Opcije';
$lang['optionsupdated'] = 'Opcije su uspe&scaron;no izmenjene.';
$lang['defaultrows'] = 'Podrazumevani maksimalan broj redova u kojima će se prikazivati umanjeni prikazi za novokreirane albume (0 znači da ograničenja nema. Koristi se samo u &scaron;ablonu &#039;Tables&#039;)';
$lang['defaultcolumns'] = 'Podrazumevani maksimalan broj kolona u kojima će se prikazivati umanjeni prikazi za novokreirane albume (0 znači da ograničenja nema. Koristi se samo u &scaron;ablonu &#039;Tables&#039;)';
$lang['defaulttemplate'] = 'Podrazumevani &scaron;ablon';
$lang['file_templates'] = 'Dostupni &scaron;abloni';
$lang['filename'] = 'Naziv datoteke';
$lang['importtemplate'] = 'Uvezi &scaron;ablon';
$lang['newtemplate'] = 'Naziv novog &scaron;ablona';
$lang['defaultalbumpage'] = 'Podrazumevana stranica koja sadrži Album. Ova stranica mora biti tipa &#039;Album&#039; ili sadržavati odgovarajući tag. Parametar je neophodan samo ukoliko koristite <em>recently_updated</em> mogućnost.';
$lang['album_comment_updated'] = 'Komentar na album je uspe&scaron;no izmenjen.';
$lang['picture_comment_updated'] = 'Komentar na sliku je uspe&scaron;no izmenjen.';
$lang['template_deleted'] = '&Scaron;ablon je uspe&scaron;no obrisan iz baze podataka';
$lang['error_empty_template'] = 'Gre&scaron;ka: &Scaron;ablon pod nazivom &quot;%s&quot;, koji je dodeljen ovom Albumu, ne postoji. Potrebno je izabrati drugi &scaron;ablon (u administratorskom delu sajta).';
$lang['run_upgrade_script'] = 'Pokreni skript za nadogradnju';
$lang['addcategory'] = 'Dodaj kategoriju';
$lang['categories'] = 'Kategorije';
$lang['nocategories'] = 'Jo&scaron; uvek niste definisali nijednu kategoriju.';
$lang['categorynametext'] = 'Naziv kategorije';
$lang['categoryidtext'] = 'ID oznaka kategorije';
$lang['categoryreordertext'] = 'Promeni redosled kategorije';
$lang['categoryactionstext'] = 'Akcije';
$lang['categoryadded'] = 'Kategorija je uspe&scaron;no dodata u bazu podataka.';
$lang['categorymoved'] = 'Kategorija je uspe&scaron;no preme&scaron;tena.';
$lang['categoryupdated'] = 'Kategorija je uspe&scaron;no izmenjena.';
$lang['editcategory'] = 'Izmeni kategoriju';
$lang['categorydeleted'] = 'Kategorija je uspe&scaron;no obrisana.';
$lang['error_nocategorynamegiven'] = 'Kategorija mora imati naziv';
$lang['category_listings'] = 'Liste kategorija';
$lang['album_updated'] = 'Album je uspe&scaron;no izmenjen.';
$lang['uncategorized'] = 'Nekategorisani albumi';
$lang['albummoved'] = 'Album je uspe&scaron;no preme&scaron;ten.';
$lang['helpdetailpage'] = '<p>Page to display Albums in.  This can either be a page alias or an id. Used to allow Album pictures 
to be displayed in a different page from the album list.</p> <p>Example of use:</p><pre>{Album detailpage=&#039;album&#039;}</pre><br />
<h3>Support</h3>
<p>As per the GPL, this software is provided as-is. Please read the text of the license for the full disclaimer.</p>
<h3>Copyright and License</h3>
<p>Copyright &copy; 2006, dam. All Rights Are Reserved.</p>
<p>This module has been released under the <a target="_blank" href="http://www.gnu.org/licenses/licenses.html#GPL">GNU Public License</a>. You must agree to this license before using the module.</p>';
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
$lang['utma'] = '156861353.859572476.1320599493.1320952024.1321039555.3';
$lang['utmz'] = '156861353.1320952024.2.2.utmccn=(referral)|utmcsr=dev.cmsmadesimple.org|utmcct=/|utmcmd=referral';
$lang['qca'] = 'P0-91463818-1318971343774';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>