
{literal}
<link rel="stylesheet" href="../modules/Showtime/jq_upload/bootstrap.css">
<!--[if lt IE 7]><link rel="stylesheet" href="../modules/Showtime/jq_upload/bootstrap-ie6.min.css"><![endif]-->

<link rel="stylesheet" href="/modules/Showtime/jq_upload/jquery.fileupload-ui.css">
    <form id="fileupload" action="../modules/Showtime/jq_upload/php/index.php" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="span16 fileupload-buttonbar">
                <div class="progressbar fileupload-progressbar fade"><div style="width:0%;"></div></div>
                <span class="btn success fileinput-button">
                    <span>{/literal}{$add_files}{literal}</span>
                    <input type="file" name="files[]" multiple>
                </span>
                    
                <input type="hidden" name="curdir" value="{/literal}{$curdir}{literal}" />
                <input type="hidden" name="image_uploads_path" value="{/literal}{$image_uploads_path}{literal}" />
                <input type="hidden" name="image_uploads_url" value="{/literal}{$image_uploads_url}{literal}" />
                
                <button type="submit" class="btn primary start">{/literal}{$start_upload}{literal}</button>
                <button type="reset" class="btn info cancel">{/literal}{$cancel_upload}{literal}</button>
                <button type="button" class="btn danger delete">{/literal}{$delete_upload}{literal}</button>
                <input type="checkbox" class="toggle">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="span16">
                <table class="zebra-striped"><tbody class="files"></tbody></table>
            </div>
        </div>
    </form>
    <div class="well">
        <ul> 
        {/literal}
            <li>{$drag_and_drop}</li>
            
            
            <li>{$press_button}
            
   
    	{$FormStart}{$hidden}{$submit}{$FormEnd}
    {literal}
            
            </li>
            
        </ul>
    </div>
    
    
    
    
<!-- gallery-loader is the loading animation container -->
<div id="gallery-loader"></div>
<!-- gallery-modal is the modal dialog used for the image gallery -->
<div id="gallery-modal" class="modal hide fade">
    <div class="modal-header">
        <a href="#" class="close">&times;</a>
        <h3 class="title"></h3>
    </div>
    <div class="modal-body"></div>
    <div class="modal-footer">
        <a class="btn primary next">Next</a>
        <a class="btn info prev">Previous</a>
        <a class="btn success download" target="_blank">Download</a>
    </div>
</div>
<script>
var fileUploadErrors = {
    maxFileSize: 'File is too big',
    minFileSize: 'File is too small',
    acceptFileTypes: 'Filetype not allowed',
    maxNumberOfFiles: 'Max number of files exceeded',
    uploadedBytes: 'Uploaded bytes exceed file size',
    emptyResult: 'Empty file upload result'
};
$('#fileupload').bind('fileuploadstart', function (e, data) {
   console.debug('ster');
});

</script>
<script id="template-upload" type="text/html">
{% for (var i=0, files=o.files, l=files.length, file=files[0]; i<l; file=files[++i]) { %}
    <tr class="template-upload fade">
        <td class="preview"><span class="fade"></span></td>
        <td class="name">{%=file.name%}</td>
        <td class="size">{%=o.formatFileSize(file.size)%}</td>
        {% if (file.error) { %}
            <td class="error" colspan="2"><span class="label important">Error</span> {%=fileUploadErrors[file.error] || file.error%}</td>
        {% } else if (o.files.valid && !i) { %}
            <td class="progress"><div class="progressbar"><div style="width:0%;"></div></div></td>
            <td class="start">{% if (!o.options.autoUpload) { %}<button class="btn primary">Start</button>{% } %}</td>
        {% } else { %}
            <td colspan="2"></td>
        {% } %}
        <td class="cancel">{% if (!i) { %}<button class="btn info">{/literal}{$cancel_upload}{literal}</button>{% } %}</td>
    </tr>
{% } %}
</script>
<script id="template-download" type="text/html">
{% for (var i=0, files=o.files, l=files.length, file=files[0]; i<l; file=files[++i]) { %}
    <tr class="template-download fade">
        {% if (file.error) { %}
            <td></td>
            <td class="name">{%=file.name%}</td>
            <td class="size">{%=o.formatFileSize(file.size)%}</td>
            <td class="error" colspan="2"><span class="label important">Error</span> {%=fileUploadErrors[file.error] || file.error%}</td>
        {% } else { %}
            <td class="preview">{% if (file.thumbnail_url) { %}
                <img src="{%=file.thumbnail_url%}">
            {% } %}</td>
            <td class="name">
                {%=file.name%}
            </td>
            <td class="size">{%=o.formatFileSize(file.size)%}</td>
            <td colspan="2"></td>
        {% } %}
        <td class="delete">
            <button class="btn danger" data-type="{%=file.delete_type%}" data-url="{%=file.delete_url%}">{/literal}{$delete}{literal}</button>
            <input type="checkbox" name="delete" value="1">
        </td>
    </tr>
{% } %}
</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="../modules/Showtime/jq_upload/vendor/jquery.ui.widget.js"></script>
<!-- The Templates and Load Image plugins are included for the FileUpload user interface -->
<script src="../modules/Showtime/jq_upload/tmpl.min.js"></script>
<script src="../modules/Showtime/jq_upload/load-image.min.js"></script>

<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="../modules/Showtime/jq_upload/jquery.iframe-transport.js"></script>
<script src="../modules/Showtime/jq_upload/jquery.fileupload.js"></script>
<script src="../modules/Showtime/jq_upload/jquery.fileupload-ui.js"></script>
<script src="../modules/Showtime/jq_upload/application.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE8+ -->
<script src="../modules/Showtime/jq_upload/cors/jquery.xdr-transport.js"></script>
{/literal}