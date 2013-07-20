{literal}
<style type="text/css">
div.pageoverflow img {vertical-align:middle;}
</style>
{/literal}

{$StartTabH}
{$Tabh_02}
{$Tabh_01}
{$Tabh_03}
{$EndTabH}

{$StartTabC}
{$FormStart}
{$StartTab_gen}
    {$editslides}{$addpicture}{$backimage}
    <br /><br />
	<div class="pageoverflow">
    
		<p class="pagetext">{$nametext}:</p>
		<p class="pageinput">{$nameinput}</p>
        <br />
 		<p class="pagetext">{$shownumber}:</p>
		<p class="pageinput">{$shownumberinput}</p>
       
        {$tab}
	</div>
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}{$apply}</p>
	</div>
	
{$EndTab}

{if $permission=="1"}

	{$StartTab_link}
    {$editslides}{$addpicture}{$backimage}

        <table class="form-table" rowpadding="40" width="100%">    
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>
            <tr>            
                <td valign="top"><p><strong>{$linkoptions}</strong></p></td>
                <td valign="top"><br />
                    {$st_link}
                    <label for="st_showtext"><strong>{$linkloc}</strong></label><br /><br />
                    <p><strong>{$internalpage}</strong> 
                    	= {$internalpage_info}</p>
                    <p><strong>{$externalpage}/strong> = {$externalpage_info}</p>
                    <p><strong>{$imagepage}</strong> = {$imagepage_info}</p>
                </td>
                <td valign="top"><br />
                    {$st_target}
                    <label for="st_showtext"><strong>{$linktarget}</strong></label><br /><br />
                    <p><strong>_self</strong> = {$self_info}</p>
                    <p><strong>_blank</strong> = {$blank_info}</p>
                    <p><strong>_parent</strong> = {$parent_info}</p>       
                    <p><strong>_top</strong> = {$top_info}</p>
                </td>
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>
            
            <tr>
            	<td colspan="4">
                {$submit}    {$default}    {$cancel}    {$apply}    
                </td>
            </tr>

        </table>

    {$EndTab}




	{$StartTab_pref}
    {$editslides}{$addpicture}{$backimage}
        <table class="form-table" rowpadding="40" width="100%">    
        
			<tr>
        		<td colspan="6"></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td rowspan="8" valign="top" width="300">{$example_info}<br /><br />

			<style type="text/css">
			{$stt_cssstring}
			</style>
            
            <script type="text/javascript" src="{root_url}/modules/Showtime/templates/jquery/jquery-1.7.1.min.js"></script>
			<script type="text/javascript" src="{root_url}/modules/Showtime/templates/nivoslider/jquery.nivo.slider.pack.js"></script>
			<script type="text/javascript">
			{literal}
			

			
			
			
            $(document).ready(function(){
				
				$(window).load(function() {
					  $('#slider').nivoSlider({ {/literal}
						effect: '{$stt_transition}', // Specify sets like: 'fold,fade,sliceDown'
						slices: {$stt_slices}, // For slice animations
						boxCols: {$stt_box_x}, // For box animations
						boxRows: {$stt_box_y}, // For box animations
						animSpeed: {$stt_transitiontime}, // Slide transition speed
						pauseTime: {$stt_rotatetime}, // How long each slide will show
						startSlide: {$stt_start_slide}, // Set starting Slide (0 index)
						directionNav: {$stt_showcontrols}, // Next & Prev navigation
						directionNavHide: {$stt_controlshide}, // Only show on hover
						controlNav: {$stt_navbut}, // 1,2,3... navigation
						controlNavThumbs: {$stt_thumb_nav}, // Use thumbnails for Control Nav
						controlNavThumbsFromRel: false, // Use image rel for thumbs
						//controlNavThumbsSearch: '.jpg', // Replace this with...
						//controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
						keyboardNav: false, // Use left & right arrows
						pauseOnHover: true, // Stop animation while hovering
						manualAdvance:{if ($stt_autoplay=='false')}true,{else}false,{/if} // Force manual transitions
						captionOpacity: {$stt_captionopacity}, // Universal caption opacity
						prevText: 'Prev', // Prev directionNav text
						nextText: 'Next', // Next directionNav text
						randomStart: {$stt_shuffle}, // Start on a random slide
						{literal}
						beforeChange: function(){}, // Triggers before a slide transition
						afterChange: function(){}, // Triggers after a slide transition
						slideshowEnd: function(){}, // Triggers after all slides have been shown
						lastSlide: function(){}, // Triggers when last slide is shown
						afterLoad: function(){} // Triggers when slider has loaded				
					});
				});
            });

			{/literal}
            </script>



        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider">
               	<img src="../modules/Showtime/images/slide1.jpg"  alt="" title="#htmlcaption" rel="../modules/Showtime/images/thumb_slide1.jpg"  />
               	<img src="../modules/Showtime/images/slide2.jpg"  alt="" title="#htmlcaption" rel="../modules/Showtime/images/thumb_slide2.jpg" />
               	<img src="../modules/Showtime/images/slide3.jpg"  alt="" title="#htmlcaption" rel="../modules/Showtime/images/thumb_slide3.jpg" />
               	<img src="../modules/Showtime/images/slide4.jpg"  alt="" title="#htmlcaption" rel="../modules/Showtime/images/thumb_slide4.jpg" />
               	<img src="../modules/Showtime/images/slide5.jpg"  alt="" title="#htmlcaption" rel="../modules/Showtime/images/thumb_slide5.jpg" />

 
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                {if $stt_showtext=='true'}<h2>title here</h2>{/if}
                {if $stt_showalt=='true'}Comment here Lorem ipsum dolor sit amet.{/if}
            </div>
        </div>

     
                    
                    
<div style="-moz-border-radius:5px 5px 5px 5px; background:none repeat scroll 0 0 #EFEFEF; border:1px solid #D9D9D9; margin:15px 0 0; padding:5px; max-width:290px;">
<p><img src="{root_url}/modules/Showtime/images/icon.gif" align="left" alt="logo showtime" style="margin:10px;" />{$donation}</p>
</div>                    
                    


        	</td></tr>           
            <tr height="20">
                <td valign="top" width="20%"><p><strong style="margin: 0pt; padding: 0pt;">{$basic}</strong></p></td>
                <td valign="top" width="40%"><br />
                <div class="pageoverflow">
                    <p><br />{$st_width}
                    <label for="st_width">{$label_width}</label></p>               	
                    <p>{$st_height}
                    <label for="st_height">{$label_height}</label></p>
                 	<p><label for="st_width"><strong>{$label_theme}</strong></label><br /><br />
                    {$st_theme}</p>
                </div>
                </td>
                <td valign="top" width="40%"><br />
                 <div class="pageoverflow">
                    <p><strong>{$label_animationtype}:</strong></p>
                    <p>{$animation_info}</p>
                    <p>{$edit_animationtype}</p>
                </div>
                </td>
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="20"></td></tr>
            
            <tr height="20">            
                <td valign="top"><p><strong>{$label_slide_options}</strong></p></td>
                <td valign="top"><br />
                    <p>{$st_shuffle}<label for="st_height">{$shuffle_onoff}</label></p>
                    <p>{$st_autoplay}<label for="st_height">{$auto_onoff}</label></p>
                    <p>{$st_showcontrols}
                    <label for="st_height">{$controls_onoff}</label>&nbsp;&nbsp;&nbsp;
                    {$showcontrols_images}                
                    </p> 
					<p>{$st_controlshide}<label for="controlshide">{$controlshide_onoff}</label></p>
          	       
                    <p><label for="st_transition"><strong>{$label_transition}:</strong>  </label></p>
                    {$st_transition}
                    
                    <br /><br />
                    <label style="float:left; margin-right: 10px;" for="st_rotatetime">{$st_slices} </label><p>{$label_nr_slices}</p><br />

                    <label style="float:left; margin-right: 10px;" for="st_rotatetime">{$st_box_x} x {$st_box_y}</label><p>{$label_box_cols}</p>  
                    
                    
                </td>
                <td valign="top">
                    <p><br />{$st_rotatetime}<label for="st_rotatetime">{$label_rotation} </label></p>  
                    <p>{$st_transitiontime} <label for="st_transitiontime">{$label_transitiontime} </label></p>	  
               		<p>{$st_navbut}<label for="st_navbut">{$bar_onoff}</label></p>
               		<p>{$st_start_slide}<label for="st_navbut">{$label_start_slide}</label></p>
               		<p>{$st_pauseonhover}<label for="st_navbut">{$label_pauseonhover}</label></p>
               		<!--<p>{$st_thumb_nav}<label for="st_navbut">{$label_thumb_nav}</label></p> (in progress)-->


                       
              </td>
                
                
                
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>
            <tr>            
                <td valign="top"><p><strong>{$text_options}</strong></p></td>
                <td valign="top">
                    <br />
                    {$st_showtext}
                    <label for="st_showtext"><strong>{$label_show_title}</strong></label><br />
                    {$st_showcomment}
                    <label for="st_showcomment"><strong>{$label_show_comment}</strong></label><br /><br />

                    {$st_captionopacity}
                    <label for="st_showcomment"><strong>{$label_captionopacity}</strong></label><br /><br />

					<label for="st_showcomment"><strong>CSS presets</strong></label><br /><br />
                    
                    {$nivo_css_preset_01}<br />
                    {$nivo_css_preset_02}<br />
                    {$nivo_css_preset_03}<br />
                    {$nivo_css_preset_04}
                  
                </td>
                <td valign="top">
      	        	<label for="st_showcomment"><strong>{$label_caption_css}</strong></label><br />
                    {$template_input}
                </td>
            </tr>

            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>

            <tr>
            	<td colspan="4">
                {$submit}    {$default}    {$cancel}    {$apply} 
                </td>
            </tr>
        </table>
{$EndTab}
{/if}
{$hidden}{$FormEnd}
{$EndTabC}