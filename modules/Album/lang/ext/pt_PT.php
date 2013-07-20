<?php
$lang['friendlyname'] = '&Aacute;lbum de Fotos';
$lang['postinstall'] = 'O &Aacute;lbum est&aacute; agora instalado. <p><b> Nota: Voc&ecirc; poder&aacute; ter que mudar o CMD (umask): a partir de &quot;022&quot;
A &quot;002&quot; &eacute; para evitar os erros 403, ao tentar visualizar as miniaturas geradas no seu webhost. </ b> </ p>';
$lang['postuninstall'] = 'O &Aacute;lbum est&aacute; agora removido da base de dados.';
$lang['uninstalled'] = 'M&oacute;dulo Desinstalado';
$lang['installed'] = '&Uacute;ltima vers&atilde;o %s est&aacute; instalada';
$lang['upgraded'] = 'M&oacute;dulo actualizado para a vers&atilde;o %s.';
$lang['error_nofilesuploaded'] = 'Houve um erro ao fazer o upload. Por Favor verifique e certifique-se de que a pasta tem premiss&otilde;es.';
$lang['error'] = 'Erro!';
$lang['next_picture'] = 'Pr&oacute;xima Foto';
$lang['admindescription'] = 'O &Aacute;lbum de Fotos permite a f&aacute;cil visualiza&ccedil;&atilde;o de galeria de fotos no seu site.';
$lang['accessdenied'] = 'Acesso negado';
$lang['query_failed'] = 'Uma consulta falhou. Tente ir &agrave;s &quot;Op&ccedil;&otilde;es&quot; e clicar no bot&atilde;o &quot;Actualizar&quot;.';
$lang['changelog'] = '<ul><li>Version 0.0.1. 5 Abril 2006. Initial Release.</li></ul>';
$lang['view_default_stylesheet'] = 'Ver Folha de estilo padr&atilde;o';
$lang['help_albums'] = 'Uma lista de um ou mais (separados por v&iacute;rgulas) IDs dos &aacute;lbuns a serem mostrados.';
$lang['max_image_size'] = '<b>Tamanho M&aacute;ximo da imagem: </ b> Todas as imagens maiores do que esta ser&aacute; automaticamente reduzida (se o modelo for configurado para o fazer.) usando Javascript. Nota: Actualmente, somente os  modelo &quot;Tabelas&quot;utilizam esta defini&ccedil;&atilde;o.';
$lang['help_sortdesc'] = 'Ordenar &aacute;lbuns por ordem decrescente, em vez de ascendente.';
$lang['help_sortpicturesdesc'] = 'Ordenar imagens em ordem decrescente, em vez de ascendente. Isso far&aacute; com que as novas Fotos que s&atilde;o adicionadas em um &aacute;lbum possam ser listadas em primeiro. <p> Exemplo para mostrar imagens em ordem inversa: </ p> <pre> (cms_module m&oacute;dulo = &#039;album&#039; sortpicturesdesc = &#039;true&#039;) </ pre >';
$lang['templatenameexists'] = 'Erro: O template com este nome j&aacute; existe. Por Favor d&ecirc; um nome diferente';
$lang['templateimported'] = 'O modelo foi importado para o banco de dados e agora est&aacute; instalado para uso.';
$lang['help'] = '<h3>What Does This Do?</h3>
<p>This module can be used to manage picture gallery</p>
<h3>How Do I Use It</h3>
<p>First go to Content -> Photo Albums and create Albums and add pictures to them.</p>
<p>To show all albums on a page, just put this code in your page content: </p>
<p><code>{cms_module module=&#039;album&#039;}</code></p>
<p>If you only want to show albums from a specific category then use use code like this:</p>
<p><code>{cms_module module=&#039;album&#039; categories=&#039;1&#039;}</code></p>
<p>The code above allows you to show in a page albums who belong to a category whose ID is 1.</p>
<p>You can also show multiple categories like this:</p>
<p><code>{cms_module module=&#039;album&#039; categories=&#039;1,3&#039;}</code></p>
<p>If you only want certain albums shown then use code like this:</p>
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
<p>Everything should work if you put this tag in between your
<pre><head> </head></pre> tags in your page template like this:</p>
<p><pre>
<head>
...
{metadata}
</head>
</pre>
</p>
<p>That will make CMSMS output a tag like this:</p>
<pre><base href=&quot;http://www.elijahlofgren.com/&quot; /></pre></p>

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
<p>This module has been released under the <a href="http://www.gnu.org/licenses/licenses.html#GPL">GNU Public License</a>. You must agree to this license before using the module.</p>
<h3>Tradu&ccedil;&atilde;o Portuguesa</h3>
<p>Copyright &copy; 2008, Nuno Costa <nuno.mfcosta@sapo.pt>.</p>';
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
$lang['help_number'] = '<h4> Mostre a um certo n&uacute;mero de fotos actualizadas recentemente</ h4>
<p> P&ocirc;de exibir uma lista de um determinado n&uacute;mero de imagens por convoca&ccedil;&atilde;o, como este: </ pre> <pre> {cms_module module=&#039;album&#039; action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Adicionar um &Aacute;lbum';
$lang['error_nonamegiven'] = 'Deve dar um nome para o seu novo &aacute;lbum.';
$lang['albumadded'] = 'O &aacute;lbum foi adicionado com sucesso. As imagens podem ser adicionados  abaixo.';
$lang['albumdeleted'] = 'O &aacute;lbum foi removido com &ecirc;xito da base de dados.';
$lang['noalbumstext'] = 'Ainda n&atilde;o criou qualquer &aacute;lbuns nesta categoria.';
$lang['addpicture'] = 'Adicionar fotos';
$lang['addtemplate'] = 'Adicionar um template';
$lang['albumidtext'] = 'ID&#039;s';
$lang['albumnametext'] = '&Aacute;lbums';
$lang['albumthumbtext'] = 'Miniaturas';
$lang['albumnumpicturestext'] = 'N&uacute;mero de fotos';
$lang['albumreordertext'] = 'Reordenar';
$lang['albumactionstext'] = 'Ac&ccedil;&otilde;es';
$lang['Albums'] = '&Aacute;lbums';
$lang['areyousure'] = 'Tem a Certeza ?';
$lang['browsepictures'] = 'Alterar';
$lang['cancel'] = 'Cancelar';
$lang['changecomment'] = 'Editar coment&aacute;rio';
$lang['changepicture'] = 'Alterar foto';
$lang['changethumb'] = 'Alterar miniatura';
$lang['changethumbnail'] = 'Alterar miniatura';
$lang['columns'] = 'O n&uacute;mero m&aacute;ximo de colunas nas miniatura (0 significa ilimitado. Apenas usado nos templates de Tabelas)';
$lang['comment'] = 'Coment&aacute;rios';
$lang['currenttemplate'] = '&Aacute;lbum Lista de Templates';
$lang['currentpicture'] = 'Foto Actual';
$lang['currentthumbnail'] = 'Miniatura Actual';
$lang['deletealbum'] = 'Eliminar';
$lang['deletepicture'] = 'Eliminar';
$lang['Help'] = 'Ajuda';
$lang['modify'] = 'Alterar';
$lang['moveleft'] = 'Mover &agrave; esquerda';
$lang['moveright'] = 'Mover &agrave; direita';
$lang['multiplealbumtemplate'] = 'Multiplos &aacute;lbums template';
$lang['name'] = 'Nome';
$lang['nocomment'] = '(sem coment&aacute;rio)';
$lang['nothumbnail'] = '(sem miniatura)';
$lang['picture'] = 'Foto';
$lang['parentdir'] = '(Parent direct&oacute;ria)';
$lang['pictures'] = 'fotos';
$lang['nopicturetext'] = 'N&atilde;o h&aacute; foto neste &aacute;lbum.';
$lang['Picture'] = 'Foto';
$lang['Pictures'] = 'Fotos';
$lang['Properties'] = 'Propriedades';
$lang['propertiesupdated'] = 'As propriedades do &aacute;lbum foram salvas com sucesso.';
$lang['resetthumb'] = 'Reset miniatura';
$lang['return'] = 'Voltar';
$lang['rows'] = 'O n&uacute;mero m&aacute;ximo de linhas na miniatura (0 significa ilimitado. Apenas usado nos templates de Tabelas)';
$lang['useinlinelinks'] = '<b> Use Inline Links </ b> - Isto far&aacute; com que o conte&uacute;do da p&aacute;gina seja sempre visualizado com o &aacute;lbum tag sobretudo imagens. Al&eacute;m <strong> disto far&aacute; com que o &Aacute;lbum funcione correctamente quando colocado na p&aacute;gina suplementar blocos de conte&uacute;do </ strong>. <strong> NOTA: Activando esta op&ccedil;&atilde;o ir&aacute; desativar no &Aacute;lbum o uso de URLs bonitas. </ Strong>';
$lang['autolinkstylesheet'] = '<b> Auto Stylesheet Link </ b>: Marque esta caixa para inserir automaticamente o link do estilo para o &aacute;lbum, na sec&ccedil;&atilde;o HEAD da p&aacute;gina. Isto deveria normalmente ser deixado activo.';
$lang['selectall'] = 'Seleccionar tudo';
$lang['selectpicture'] = 'usar esta foto';
$lang['selectthumb'] = 'Use a miniatura desta imagem';
$lang['submit'] = 'Guardar';
$lang['file_templates_help'] = '<b> Estes s&atilde;o os modelos que deve instalar na base de dados antes de os poder utilizar. </ b>';
$lang['template'] = 'Template ';
$lang['deletetemplate'] = 'Eliminar Template';
$lang['Template'] = 'Template ';
$lang['templatenametext'] = 'Templates ';
$lang['Templates'] = 'Templates ';
$lang['edittemplate'] = 'Editar Template';
$lang['templatesaved'] = 'O Template foi salvo com &ecirc;xito no banco de dados.';
$lang['errortemplatenameexists'] = 'Um Template com esse nome j&aacute; existe, por favor escolha um nome diferente.';
$lang['error_filenotfound_defaulttemplate'] = 'O ficheiro do Template para este modelo n&atilde;o foi encontrado.';
$lang['thumbnail'] = 'Miniatura';
$lang['title'] = 'Titulo';
$lang['uploadpicture'] = 'Carregar uma foto';
$lang['upload'] = 'Carregar';
$lang['view'] = 'Visualizar';
$lang['options'] = 'Op&ccedil;&otilde;es';
$lang['optionsupdated'] = 'As op&ccedil;&otilde;es foram actualizadas com sucesso.';
$lang['defaultrows'] = 'Max n&uacute;mero Padr&atilde;o de miniatura em linhas para novos &aacute;lbuns (0 significa ilimitado. Apenas usado nos Templates de tabelas)';
$lang['defaultcolumns'] = 'Max n&uacute;mero Padr&atilde;o de miniatura em colunas para novos &aacute;lbuns (0 significa ilimitado. Apenas usado nos Templates de tabelas)';
$lang['defaulttemplate'] = 'Template Padr&atilde;o';
$lang['file_templates'] = 'Templates Dispon&iacute;veis';
$lang['filename'] = 'Nome do ficheiro';
$lang['importtemplate'] = 'Importar Template';
$lang['newtemplate'] = 'Nome para o novo template';
$lang['defaultalbumpage'] = 'P&aacute;gina Padr&atilde;o que cont&eacute;m o &Aacute;lbum. Esta p&aacute;gina deve ser um &quot;&aacute;lbum&quot; tipo de p&aacute;gina ou conter a tag do &aacute;lbum . Necess&aacute;rio se usa o recurso recently_updated.';
$lang['album_comment_updated'] = 'O coment&aacute;rio do &aacute;lbum foi actualizado.';
$lang['picture_comment_updated'] = 'O coment&aacute;rio da foto foi actualizado.';
$lang['template_deleted'] = 'O template foi exclu&iacute;do com &ecirc;xito da base de dados';
$lang['error_empty_template'] = 'Erro: O template denominado &quot;%s&quot;, que este &aacute;lbum foi configurado para o usar, n&atilde;o existe. Por favor, v&aacute; para o &aacute;lbum Admin Panel e atribua um template diferente para este &aacute;lbum.';
$lang['run_upgrade_script'] = 'Corra o  Upgrade Script';
$lang['addcategory'] = 'Adicionar Categoria';
$lang['categories'] = 'Categorias';
$lang['nocategories'] = 'Ainda n&atilde;o adicionou nenhuma categoria.';
$lang['categorynametext'] = 'Categoria Nome';
$lang['categoryidtext'] = 'Categoria id';
$lang['categoryreordertext'] = 'Reordenar Categoria';
$lang['categoryactionstext'] = 'Ac&ccedil;&otilde;es';
$lang['categoryadded'] = 'A categoria foi adicionado &agrave; base de dados.';
$lang['categorymoved'] = 'A categoria foi movida com sucesso.';
$lang['categoryupdated'] = 'A categoria foi actualizada com sucesso.';
$lang['editcategory'] = 'Editar Categoria';
$lang['categorydeleted'] = 'A categoria foi eliminada com sucesso.';
$lang['error_nocategorynamegiven'] = 'Deve dar um nome &agrave; sua categoria.';
$lang['category_listings'] = 'Listas de Categorias';
$lang['album_updated'] = 'O &aacute;lbum foi actualizado.';
$lang['uncategorized'] = 'Albums sem Categorias';
$lang['automatic_album_list_template'] = 'Autom&aacute;tico (utilizar template atribu&iacute;do a cada &aacute;lbum)';
$lang['albummoved'] = 'O &aacute;lbum foi movido com sucesso.';
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
$lang['utma'] = '156861353.2337628963718702600.1216609238.1217102113.1217108098.24';
$lang['utmz'] = '156861353.1216915631.16.7.utmcsr=forum.cmsmadesimple.org|utmccn=(referral)|utmcmd=referral|utmcct=/index.php';
$lang['utmc'] = '156861353';
$lang['utmb'] = '156861353';
?>