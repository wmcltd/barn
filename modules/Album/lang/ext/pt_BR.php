<?php
$lang['friendlyname'] = '&Aacute;lbum de Fotos';
$lang['postinstall'] = 'O album foi instalado. N&atilde;o esque&ccedil;a de adicionar a nova folha de estilos &quot;Album (para os modelos visuais padr&atilde;o, ImageGallery e Thickbox)&quot; ao modelo visual da p&aacute;gina na qual utilizar&aacute; o Album.';
$lang['postuninstall'] = 'o m&oacute;dulo Album foi removido da base de dados.';
$lang['uninstalled'] = 'M&oacute;dulo desinstalado';
$lang['installed'] = 'Vers&atilde;o %s est&aacute; instalada';
$lang['upgraded'] = 'M&oacute;dulo atualizado para a vers&atilde;o %s';
$lang['error_nofilesuploaded'] = 'Ocorreu um erro ao enviar. Por favor certifique-se que a pasta tem permiss&atilde;o de grava&ccedil;&atilde;o.';
$lang['error'] = 'Erro!';
$lang['next_picture'] = 'Pr&oacute;xima Imagem';
$lang['admindescription'] = 'O m&oacute;dulo Album permite que voc&ecirc; exiba galerias de fotos em seu website';
$lang['accessdenied'] = 'Acesso negado';
$lang['query_failed'] = 'Um comando falhou. Tente ir em &quot;Op&ccedil;&otilde;es&quot; e clique em &quot;Rodar Scrip de Atualiza&ccedil;&atilde;o&quot;. Caso isso n&atilde;o funcione por favor reporte um bug.';
$lang['changelog'] = '<ul><li>Vers&atilde;o 0.0.1. 5 de Abril de 2006. Primeiro lan&ccedil;amento.</li></ul>';
$lang['view_default_stylesheet'] = 'Visualizar Stylesheet Padr&atilde;o';
$lang['help_albums'] = 'Uma lista de um ou mais (separados por v&iacute;rgula) ID&#039;s de &Aacute;lbuns a serem exibidos.';
$lang['max_image_size'] = '<b>Tamanho m&aacute;ximo da imagem:</b> Quaisquer imagens cujo tamanho excedam o espec&iacute;ficado ser&atilde;o dimensionadas para este valor (caso o template esteja configurado para fazer isso.) usando Javascript. Nota: Atualmente apenas o template &quot;Tables&quot; utiliza esta configura&ccedil;&atilde;o.';
$lang['help_sortdesc'] = 'Organiza os &aacute;lbuns em ordem descentente.';
$lang['help_sortpicturesdesc'] = 'Organiza as imagens em ordem descendente<p>Exemplo para mostrar as imagens na ordem reversa:</p><pre>{cms_module module=&#039;album&#039; sortpicturesdesc=&#039;true&#039;}</pre>';
$lang['templatenameexists'] = 'Erro: um template com este nome j&aacute; existe. Por favor escolha um nome diferente.';
$lang['templateimported'] = 'O template foi importado com sucesso para a base de dados e est&aacute; pronto para ser usado.';
$lang['help'] = '<h3>O que isso faz?</h3>
<p>Este m&oacute;dulo pode ser usado para gerenciar uma galeria de fotos</p>
<h3>Como usar?</h3>
<p>Para exibir albums numa p&aacute;gina, simplesmente coloque este c&oacute;digo: </p>
<p><code>{cms_module module=&quot;album&quot; albums=&quot;1,3&quot;}</code></p>
<p>O c&oacute;digo acima lhe permite mostrar numa p&aacute;gina albums com os IDs 1 e 3 por exemplo. Se voc&ecirc; n&atilde;o entrar o parametro &quot;albums&quot;, ser&aacute; exibido todos os albums.</p>
<h3>Suporte</h3>
<p>Como descrito na GPL (Licen&ccedil;a P&uacute;blica Geral), este software &eacute; provudo como est&aacute;. Por favor leia o texto da licen&ccedil;a para a descri&ccedil;&atilde;o completa.</p>
<h3>Copyright e Licen&ccedil;a</h3>
<p>Copyright &copy; 2006, dam. Todos os direitos reservados.</p>
<p>Este m&oacute;dulo foi lan&ccedil;ado sobre a <a href="http://www.gnu.org/licenses/licenses.html#GPL">Licen&ccedil;a P&uacute;blica GNU</a>. Voc&ecirc; deve concordar com esta licen&ccedil;a antes de usar o m&oacute;dulo.</p>

<p>Traduzido por: Jos&eacute; Diogenes Silva - diogenescmsms@gmail.com</p>';
$lang['help_action'] = '<h4>Mostra a lista de imagens adicionadas recentemente</h4>
	 <p>Voc&ecirc; pode exibir uma lista com as figuras adicionadas com a seguinte tag:</p>
<pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039;}</pre>
<p>Caso voc&ecirc; queira mostrar as figuras recentes de um &aacute;lbum espec&iacute;fico (ex: album id 1) pode usar a tag da seguinte forma:</p>
<pre>{cms_module module=&#039;album&#039; albums=&#039;1&#039; action=&#039;recently_updated&#039; number=&#039;2&#039;}</pre>
<p><b>Importante</b>: Voc&ecirc; precisa escolher uma &quot;<b>P&aacute;gina padr&atilde;o que conter&aacute; o &aacute;lbum.</b>&quot; para que possa usar este recurso.</p>
<div style=&quot;border:1px solid black;&quot;>
<h4>Mostrar uma imagem aleat&oacute;ria</h4>
<p>Primeiro conta-se todas as colunas da base de dados (para contabilizar os &aacute;lbuns), pega-se um n&uacute;mero aleat&oacute;rio entre &quot;0&quot; e o n&uacute;mero de colunas. Com este n&uacute;mero o pointer da base de dados &eacute; apontado para uma coluna espec&iacute;fica e os dados da tabela s&atilde;o obtidos.</p>
<h5>Como eu uso?</h5>
<p>Apenas insira  a tag em seu template/p&aacute;gina como o seguinte: <code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</code></p>
<p>Para mostrar um certo n&uacute;mero de imagens coloque a tag da seguinte forma:</p>
<code>{cms_module module=&#039;album&#039; action=&#039;random_image&#039; number=&#039;10&#039;}</code>
<h5>Quais par&acirc;metros random_image aceita?</h5>
<p>
<ul>
	<li><em>(opcional)</em> <tt>imagesurl</tt>   - Diret&oacute;rio do &aacute;lbum, o padr&atilde;o &eacute;: &#039;root_url&#039;/uploads/images</li>
	<li><em>(opcional)</em> <tt>albums</tt>      - use v&iacute;gula, espa&ccedil;o, tra&ccedil;o ou ponto-e-v&iacute;rgula apara mostrar imagens dos &aacute;lbuns espec&iacute;ficados</li>
  <li><em>(opcional)</em> <tt>border</tt>      - borda com stylesheet como em: border=&#039;5px&#039;</li>
  <li><em>(opcional)</em> <tt>picturename</tt> - picturename = True/False, define um t&iacute;tulo com o nome da figura</li>
</ul>
<p><b>Nota: Estes par&acirc;metros apenas est&atilde;o dispon&iacute;veis quando o o m&oacute;dulo Album &eacute; chamado com a tag {cms_module module=&#039;album&#039; action=&#039;random_image&#039;}</b></p>
<p>ent&atilde;o, por exemplo: {cms_module module=&#039;album&#039; action=&#039;random_image&#039; albums=&#039;1,3,4,6&#039; border=&#039;3px&#039; picturename=&#039;True&#039;}</p>
</p>
<h5>A fazer:</h5>
<p>
<ul>
	<li>arranjar os nomes das divs de tags e especificar o poss&iacute;vel uso de stylesheets.<br />
		(se livrar do par&acirc;metro border)</li>
  <li>obter o nome do &aacute;lbum da tabela album_albums, e tornar poss&iacute;vel a refer&ecirc;ncia na sa&iacute;da.</li>
  <li>tornar poss&iacute;vel o link entre uma figura e um &aacute;lbum espec&iacute;fico?</li>
  <li>uso de altura/largura m&aacute;xima de uma figura em uma miniatura quando necess&aacute;rio</li>
</ul>
</p>
<p>Autor do Ramdom Image: Frank Prins <<a href="mailto:webmaster@frank-fem.com">webmaster@frank-fem.com</a>></p>
</div>
';
$lang['help_number'] = '<h4>Mostra um determinado n&uacute;mero de imagens recentemente enviadas</h4>
	 <p>Voc&ecirc; pode mostrar uma lista de um determinado n&uacute;mero de imagens chamando o m&oacute;dulo Album da seguinte forma:</pre> <pre>{cms_module module=&#039;album&#039; action=&#039;recently_updated&#039; number=&#039;15&#039;}
';
$lang['addalbum'] = 'Adicionar um &aacute;lbum';
$lang['error_nonamegiven'] = 'Voc&ecirc; deve dar um nome ao seu novo album.';
$lang['albumadded'] = 'O album foi adicionado com sucesso. Fotos podem ser adicionadas a ele abaixo.';
$lang['albumdeleted'] = 'O album foi removido com sucesso da base de dados.';
$lang['noalbumstext'] = 'Voc&ecirc; ainda n&atilde;o criou nenhum &aacute;lbum de fotos.';
$lang['addpicture'] = 'Adicionar fotos';
$lang['addtemplate'] = 'Adicionar um modelo visual';
$lang['albumidtext'] = 'IDS';
$lang['albumnametext'] = '&Aacute;lbums';
$lang['albumthumbtext'] = 'Miniaturas';
$lang['albumnumpicturestext'] = 'N&uacute;mero de fotos';
$lang['albumreordertext'] = 'Reordenar';
$lang['albumactionstext'] = 'A&ccedil;&otilde;es';
$lang['Albums'] = '&Aacute;lbums';
$lang['areyousure'] = 'Voc&ecirc; tem certeza ?';
$lang['browsepictures'] = 'Mudar';
$lang['cancel'] = 'Cancelar';
$lang['changecomment'] = 'Editar coment&aacute;rio';
$lang['changepicture'] = 'Mudar foto';
$lang['changethumb'] = 'Mudar';
$lang['changethumbnail'] = 'Mudar miniatura';
$lang['columns'] = 'N&uacute;mero de colunas';
$lang['comment'] = 'Coment&aacute;rio';
$lang['currenttemplate'] = 'Modelo visual atual';
$lang['currentpicture'] = 'Foto atual';
$lang['currentthumbnail'] = 'Miniatura atual';
$lang['deletealbum'] = 'Deletar';
$lang['deletepicture'] = 'Deletar';
$lang['Help'] = 'Ajuda';
$lang['modify'] = 'Mudar';
$lang['moveleft'] = 'Mover para a esquerda';
$lang['moveright'] = 'Mover para a direita';
$lang['multiplealbumtemplate'] = 'Modelo visual de m&uacute;ltiplos &aacute;lbuns.';
$lang['name'] = 'Nome';
$lang['nocomment'] = '(sem coment&aacute;rio)';
$lang['nothumbnail'] = '(sem miniatura)';
$lang['picture'] = 'Foto';
$lang['parentdir'] = '(Diret&oacute;rio Pai)';
$lang['pictures'] = 'fotos';
$lang['nopicturetext'] = 'N&atilde;o existem fotos neste &aacute;lbum.';
$lang['Picture'] = 'Foto';
$lang['Pictures'] = 'fotos';
$lang['Properties'] = 'Propriedades';
$lang['propertiesupdated'] = 'As propriedades do Album foram salvas com sucesso.';
$lang['resetthumb'] = 'Limpar miniatura';
$lang['return'] = 'Voltar';
$lang['rows'] = 'N&uacute;mero de linhas';
$lang['useinlinelinks'] = '<b>Use infinitos links</b> - Isto far&aacute; com que o conte&uacute;do da p&aacute;gina sempre seja exibido com a tag do Album sobre todas as figuras. Adicionalmente <strong>isto far&aacute; com que o Album funcione corretamente quando colocado em blocos de conte&uacute;do adicionais</strong>. <strong>NOTA: Habilitar esta op&ccedil;&atilde;o ir&aacute; desabilitar o use de pretty URLs pelo m&oacute;dulo Album.</strong>';
$lang['autolinkstylesheet'] = '<b>Auto Link Stylesheet</b>: Marqu esta caixa para colocar o link ao Album stylesheet no cabe&ccedil;alho da p&aacute;gina automaticamente. Esta op&ccedil;&atilde;o geralmente deve estar habilitada.';
$lang['selectall'] = 'Selecionar tudo';
$lang['selectpicture'] = 'Use esta foto';
$lang['selectthumb'] = 'Use a miniatura desta foto';
$lang['submit'] = 'Salvar';
$lang['file_templates_help'] = '<b>Estes s&atilde;o tempates que voc&ecirc; deve instalar &agrave; base de dados antes de poder us&aacute;-los.</b>';
$lang['template'] = 'Modelo Visual';
$lang['deletetemplate'] = 'Excluir Modelo Visual';
$lang['Template'] = 'Modelo Visual';
$lang['templatenametext'] = 'Modelos Visuais';
$lang['Templates'] = 'Modelos Visuais';
$lang['edittemplate'] = 'Editar Modelo Visual';
$lang['templatesaved'] = 'O modelo visual foi salvo com sucesso na base de dados.';
$lang['errortemplatenameexists'] = 'Um modelo visual com esse nome j&aacute; existe, por favor escolha outro nome.';
$lang['error_filenotfound_defaulttemplate'] = 'O arquivo de modelo visual para este modelo visual n&atilde;o foi encontrado.';
$lang['thumbnail'] = 'Miniatura';
$lang['title'] = 'T&iacute;tulo';
$lang['uploadpicture'] = 'Enviar uma foto';
$lang['upload'] = 'Enviar';
$lang['view'] = 'Visualizar';
$lang['options'] = 'Op&ccedil;&otilde;es';
$lang['optionsupdated'] = 'As op&ccedil;&otilde;es foram atualizadas com sucesso.';
$lang['defaultrows'] = 'N&uacute;mero de linhas padr&atilde;o';
$lang['defaultcolumns'] = 'N&uacute;mero de colunas padr&atilde;o';
$lang['defaulttemplate'] = 'Modelo Visual Padr&atilde;o';
$lang['file_templates'] = 'Templates dispon&iacute;veis';
$lang['filename'] = 'Nome do Arquivo';
$lang['importtemplate'] = 'Importar Template';
$lang['newtemplate'] = 'Nome para o novo template';
$lang['defaultalbumpage'] = 'P&aacute;gina padr&atilde;o que cont&eacute;m o Album. Esta p&aacute;gina precisa ser do tipo &quot;Album&quot; ou conter a tag Album. Isto &eacute; requerido para usar o par&acirc;metro recently_updated.';
$lang['album_comment_updated'] = 'O coment&aacute;rio do &aacute;lbum foi atualizado com sucesso.';
$lang['picture_comment_updated'] = 'O coment&aacute;rio da figura foi atualizado com sucesso.';
$lang['template_deleted'] = 'O template foi deletado com sucesso da base de dados.';
$lang['error_empty_template'] = 'Error: The template named &quot;%s&quot; that this Album is set to use does not exist. Please go to the Album Admin Panel and assign a different template to this Album.';
$lang['run_upgrade_script'] = 'Executar Script de upgrade';
$lang['addcategory'] = 'Adicionar Categoria';
$lang['categories'] = 'Categorias';
$lang['nocategories'] = 'Voc&ecirc; ainda n&atilde;o adicionou nenhuma categoria';
$lang['categorynametext'] = 'Nome da Categoria';
$lang['categoryidtext'] = 'Id da Categoria';
$lang['categoryreordertext'] = 'Reordenar Categoria';
$lang['categoryactionstext'] = 'A&ccedil;&otilde;es';
$lang['categoryadded'] = 'A categoria foi adicionada com sucesso &agrave; base de dados.';
$lang['categorymoved'] = 'A categoria foi movida com sucesso';
$lang['categoryupdated'] = 'A categoria foi atualizada com sucesso';
$lang['editcategory'] = 'Editar Categoria';
$lang['categorydeleted'] = 'A categoria foi deletada com sucesso';
$lang['error_nocategorynamegiven'] = 'Voc&ecirc; precisa dar um nome &agrave; categoria';
$lang['category_listings'] = 'Listas de Categorias';
$lang['album_updated'] = 'O &aacute;lbum foi atualizado com sucesso';
$lang['uncategorized'] = '&Aacute;lbuns sem categorias';
$lang['automatic_album_list_template'] = 'Autom&aacute;tico (usa o template definido a cada &aacute;lbum)';
$lang['albummoved'] = 'O &aacute;lbum foi movido com sucesso';
$lang['helpdetailpage'] = '<p>P&aacute;gina para exibir os &aacute;lbuns. Este pode ser o nome de uma p&aacute;gina ou um ID. &Eacute; usado para permitir que as figuras do Album possam ser exibidas em uma p&aacute;gina diferente da lista do &aacute;lbum..</p> <p>Exemplo de uso:</p><pre>{cms_module module=&#039;album&#039; detailpage=&#039;album&#039;}</pre>';
$lang['help_template'] = '<h3>Lista de &Aacute;bums</h3>
<p>Voc&ecirc; pode usar a tag inteligente {$albums} que &eacute; um vetor. Cada um dos seus elementos &eacute; um dos albums selecionados.
A estrutura de um &aacute;lbum est&aacute; descrita no pr&oacute;ximo cap&iacute;tulo.
Para exibir os albums, use o loop <code> {foreach from=$albums item=album}{/foreach}</code></p>
<h3>&Aacute;lbum</h3>
<p>Se s&oacute; existir um album, ou se um album espec&iacute;fico for selecionado, voc&ecirc; pode usar a tag {$album}. Ela permite o acesso aos seguintes itens:</p>
<ul>
	<li>{$album->name} : nome </li>
	<li>{$album->comment} : coment&aacute;rio</li>
	<li>{$album->columns} : n&uacute;mero de colunas</li>
	<li>{$album->rows} : numero de linhas</li>
	<li>{$album->thumbnail} : endere&ccedil;o (url) da miniatura</li>
	<li>{$album->link} : link do album</li>
	<li>{$album->picturecount} : numero de fotos de um album</li>
</ul>
<h3>Lista de imagens</h3>
<p>Se um &aacute;lbum estiver selecionado, voc&ecirc; pode usar a tag {$pictures} que &eacute; um vetor de vetores :  cont&eacute;m linhas que cont&eacute;m fotos.
A estrutura de uma imagem est&aacute; descrita no cap&iacute;tulo seguinte.
Para exibir uma lista de imagens, use o seguinte loop :
<code>{foreach from=$pictures item=picturesrow}
	{foreach from=$picturesrow item=onepicture}
	{/foreach}
{/foreach}</code></p>
<h3>Foto</h3>
<p>Se uma foto estiver selecionada, voc&ecirc; pode usar a tag {$picture}. Ser&aacute; definida a primeira foto do &aacute;lbum se nenhuma foto estiver selecionada.</p>
<ul>
	<li>{$picture->name} : nome</li>
	<li>{$picture->comment} : coment&aacute;rio</li>
	<li>{$picture->thumbnail} : endere&ccedil;o (url) da miniatura</li>
	<li>{$picture->picture} : endere&ccedil;o (url) da foto</li>
	<li>{$picture->link} : link da foto</li>
	<li>{$picture->number} : n&uacute;mero da foto</li>
</ul>
<h3>Outros</h3>
<p>Voc&ecirc; tamb&eacute;m pode usar as seguintes tags :</p>
<ul>
	<li>{$returnlink} : volta para a p&aacute;gina anterior </li>
	<li>{$albumnumber} : n&uacute;mero do &aacute;lbum atual</li>
	<li>{$albumcount} : n&uacute;mero de &aacute;lbums</li>
	<li>{$picturenumber} : n&uacute;mero da foto atual</li>
	<li>{$picturecount} : n&uacute;mero de fotos</li>
	<li>{$pagenumber} : n&uacute;mero da p&aacute;gina atual</li>
	<li>{$pagecount} : n&uacute;mero de p&aacute;ginas</li>
	<li>{$link.album.1} : link para o primeiro &aacute;lbum. Voc&ecirc; tamb&eacute;m pode indicar outro n&uacute;mero.</li>
	<li>{$link.album.first}, {$link.album.previous}, {$link.album.next}, {$link.album.last}</li>
	<li>{$link.picture.1} : link para a primeira foto. Voc&ecirc; tamb&eacute;m pode indicar outro n&uacute;mero.</li>
	<li>{$link.picture.first}, {$link.picture.previous}, {$link.picture.next}, {$link.picture.last}</li>
	<li>{$link.page.1} : link para a p&aacute;gina inicial. Voc&ecirc; tamb&eacute;m pode indicar outro n&uacute;mero.</li>
	<li>{$link.page.first}, {$link.page.previous}, {$link.page.next}, {$link.page.last}</li>
</ul>
';
$lang['utma'] = '156861353.1317187875.1224010000.1225388288.1225471771.19';
$lang['utmz'] = '156861353.1225471771.19.12.utmccn=(referral)|utmcsr=dev.cmsmadesimple.org|utmcct=/forum/forum.php|utmcmd=referral';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>