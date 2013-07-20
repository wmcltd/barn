			{literal}
			<style type="text/css">
				.urlinput{
					float: left;
					margin: 20px 0 10px 0;
                                        padding: 10px !important;
					width: 508px;
					border: 1px solid #ddd;
					-webkit-border-radius: 4px;
					-moz-border-radius: 4px;
					border-radius: 4px;
					-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
					-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
					box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);					
					}
			</style>
            {/literal}

			<script type="text/javascript">
            {literal}
				$(document).ready(function(){
				
				function hideshowinput(nature){
					switch (nature){
						case "none":
                                                        $("[id$='external_edit_input']").val('');
							$('#internalurl').hide();
							$('#externalurl').hide();
							$('#imageurl').hide();
							$('#none').show(500);
							break;
						case "internal page":
                                                        $("[id$='external_edit_input']").val('');
							$('#internalurl').show(500);
							$('#externalurl').hide();
							$('#imageurl').hide();
							$('#none').hide();
							break;
						case "external page":
                                                        var exturl = $("[id$='external_edit_input']").val();
                                                        if (exturl==""){
                                                            $("[id$='external_edit_input']").val('http://');
                                                        }
							$('#internalurl').hide();
							$('#externalurl').show(500);
							$('#imageurl').hide();
							$('#none').hide();
							break;
						case "image":
                                                        $("[id$='external_edit_input']").val('');
							$('#internalurl').hide();
							$('#externalurl').hide();
							$('#imageurl').show(500);
							$('#none').hide();
							break;
					}
				}
				
				hideshowinput('{/literal}{$cur_url_nature}{literal}');

				 $('#dropdown_url_nature').change(function () {
					var nature = $("#dropdown_url_nature").val();
					hideshowinput(nature);
				  })
					.change();
				{/literal}
			{literal}});{/literal}
            </script>



{$FormStart}
	<div class="pageoverflow">
	    <p class="pagetext">{$thumbnail}</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">{$texttitle}:</p>
		<p class="pageinput">{$inputtitle}</p>
	</div>
        <br />

	<div class="pageoverflow">
            <p class="pageinput urlinput">
                {$linkttitle}<br/>
                <br />
                {$dropdown_url_nature}&nbsp;&nbsp;&nbsp;{$picture_url_target}<br/>
                <br/>
                <span id="internalurl">{$internal_page_dropdown}<br/></span>
                <span id="externalurl">{$external_edit_input}<br/></span>
                <span id="imageurl"> {$thumbnail}&nbsp;&nbsp;{$image_link}<br/></span>
                <span id="none">{$no_link}</span>
            </p>
        </div>
	




	<div class="pageoverflow">
		<p class="pagetext">{$textcomment}:</p>
		<p class="pageinput">{$inputcomment}</p>
	</div>
{$hidden}
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
{$FormEnd}