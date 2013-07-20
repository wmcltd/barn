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
				{literal}
				#nav_settings {-moz-border-radius:5px 5px 5px 5px; background:none repeat scroll 0 0 #EFFFFF; border:1px solid #D9D9D9;  padding:15px; max-width:270px;}
				#nav_settings img{vertical-align:middle;}
				.n25_settings img{vertical-align:middle;}
				
				#presetbutton {
					background:url("../modules/Showtime/images/bg_glass.png") repeat-x scroll 50% 50% #E6E6E6;
					border:1px solid #D3D3D3;
					color:#555555;
					font-weight:normal;
					-moz-border-radius:4px 4px 4px 4px;
				}
			    #presetbutton p {
					display:block;
					font-size:1em;
					padding:0.5em 0.5em 0.5em 0.7em;
					cursor:pointer;
					margin:0;
					font-weight:bold;
					text-align:center;
				}
				#presetlist {
					-moz-border-radius:0 0 5px 5px;
					background-color:#FFFFFF;
					border:1px solid #CCCCCC;
					padding:5px;
					display:none;
				}
			
				{/literal}
			{$stt_cssstring}
			</style>
            
            <script type="text/javascript" src="{$root_url}/modules/Showtime/templates/jquery/jquery-1.7.1.min.js"></script>
			<script type="text/javascript" src="{$root_url}/modules/Showtime/templates/jquery/jquery.cycle.all.min.js"></script>
			<script type="text/javascript" src="{$root_url}/modules/Showtime/templates/farbtastic/farbtastic.js"></script>
            <link rel="stylesheet" href="{$root_url}/modules/Showtime/templates/farbtastic/farbtastic.css" type="text/css" />




			<script type="text/javascript">
			{literal}
            $(document).ready(function(){
			$('#presetbutton').click(function() {
				$('#presetlist').slideToggle('slow');
			});

			var lastslide=0;

			$('ul#slides_{/literal}{$showidvalue}{literal}').cycle({ {/literal}
{if $stt_showtext || $stt_showcomment}
				before: onbefore_{$showidvalue},
{/if}
				fx: '{$stt_transition}',
				speed:    {$stt_transitiontime}, 
				timeout:  {$stt_rotatetime},
{if $stt_navbut}
				pager:   '#slideshow_nav_{$showidvalue}',
{/if} 
				pagerEvent: 'mouseover',
{if !$stt_autoplay}
				timeout: 0,
{/if}		
{if $stt_shuffle}
				random: 1,
{/if}
				fastOnEvent: false,
				pause: {$stt_pauseonhover},
				pauseOnPagerHover: {$stt_pauseonhover},
				prev: '#prev_{$showidvalue}',
				next: '#next_{$showidvalue}'{if $stt_showtext || $stt_showcomment},
				after: onafter_{$showidvalue}{/if} {literal}
			});
  
  
            $("#slideshow_{/literal}{$showidvalue}{literal}").hover(function() {
                $("ul#prevnextnav_{/literal}{$showidvalue}{literal}").fadeIn();
            },
                function() {
                $("ul#prevnextnav_{/literal}{$showidvalue}{literal}").fadeOut();
            });

        {/literal}{if $stt_showtext || $stt_showcomment}{literal}
            function onbefore_{/literal}{$showidvalue}{literal}() {
                $('#com_{/literal}{$showidvalue}{literal}_'+lastslide).clearQueue();
                $('#com_{/literal}{$showidvalue}{literal}_'+lastslide).hide();
            }
            function onafter_{/literal}{$showidvalue}{literal}(curr, next, opts) {
                var index = opts.currSlide;
                var indexlast = opts.lastSlide;
                $('#com_{/literal}{$showidvalue}{literal}_'+index).queue(function (){
                    lastslide=index;
                    $(this).delay(100);
                    $(this).fadeIn(400);
                    $(this).dequeue();
                });
            }
        {/literal}{/if}{literal}
            
				$('#colorpicker_bgcolor').farbtastic('#m1_st_bgcolor');
                $('#m1_st_bgcolor').focus( function(){$('#colorpicker_bgcolor').show();});
                $('#m1_st_bgcolor').blur( function(){$('#colorpicker_bgcolor').hide();});
				$('#colorpicker_textbgcolor').farbtastic('#m1_st_textbgcolor');
                $('#m1_st_textbgcolor').focus( function(){$('#colorpicker_textbgcolor').show();});
                $('#m1_st_textbgcolor').blur( function(){$('#colorpicker_textbgcolor').hide();});
				$('#colorpicker_textcolor').farbtastic('#m1_st_textcolor');
				$('#m1_st_textcolor').focus( function(){$('#colorpicker_textcolor').show();});
                $('#m1_st_textcolor').blur( function(){$('#colorpicker_textcolor').hide();});
				$('#colorpicker_nav_bordercolor').farbtastic('#m1_st_nav_bordercolor');
                $('#m1_st_nav_bordercolor').focus( function(){$('#colorpicker_nav_bordercolor').show();});
                $('#m1_st_nav_bordercolor').blur( function(){$('#colorpicker_nav_bordercolor').hide();});
				$('#colorpicker_nav_bgcolor').farbtastic('#m1_st_nav_bgcolor');
                $('#m1_st_nav_bgcolor').focus( function(){$('#colorpicker_nav_bgcolor').show();});
                $('#m1_st_nav_bgcolor').blur( function(){$('#colorpicker_nav_bgcolor').hide();});
				$('#colorpicker_nav_bgactivecolor').farbtastic('#m1_st_nav_bgactivecolor');
                $('#m1_st_nav_bgactivecolor').focus( function(){$('#colorpicker_nav_bgactivecolor').show();});
                $('#m1_st_nav_bgactivecolor').blur( function(){$('#colorpicker_nav_bgactivecolor').hide();});
				$('#colorpicker_nav_textcolor').farbtastic('#m1_st_nav_textcolor');
                $('#m1_st_nav_textcolor').focus( function(){$('#colorpicker_nav_textcolor').show();});
                $('#m1_st_nav_textcolor').blur( function(){$('#colorpicker_nav_textcolor').hide();});
            });


			{/literal}
            </script>
           


            <div id="slideshow_{$showidvalue}" class="pics">
            	{if $stt_showtext=='true' || $stt_showalt=='true'}
                <div id="comments_st_{$showidvalue}">
                	<div id="com_{$showidvalue}_0" class="commentsparts_st_{$showidvalue}">
                    	{if $stt_showtext}<h2>title here</h2>{/if}{if $stt_showcomment}Comment here Lorem ipsum dolor sit amet.{/if}</div>
                	<div id="com_{$showidvalue}_1" class="commentsparts_st_{$showidvalue}">
                    	{if $stt_showtext}<h2>title here</h2>{/if}{if $stt_showcomment}Comment here Lorem ipsum dolor sit amet.{/if}</div>
                	<div id="com_{$showidvalue}_2" class="commentsparts_st_{$showidvalue}">
                    	{if $stt_showtext}<h2>title here</h2>{/if}{if $stt_showcomment}Comment here Lorem ipsum dolor sit amet.{/if}</div>
                	<div id="com_{$showidvalue}_3" class="commentsparts_st_{$showidvalue}">
                    	{if $stt_showtext}<h2>title here</h2>{/if}{if $stt_showcomment}Comment here Lorem ipsum dolor sit amet.{/if}</div>
                	<div id="com_{$showidvalue}_4" class="commentsparts_st_{$showidvalue}">
                    	{if $stt_showtext}<h2>title here</h2>{/if}{if $stt_showcomment}Comment here Lorem ipsum dolor sit amet.{/if}</div>
                </div>
                {/if}
            {if $stt_showcontrols == 'true'}
                <ul id="prevnextnav_{$showidvalue}">
                        <li id="prev_{$showidvalue}"><a href="#">Previous</a></li>
                        <li id="next_{$showidvalue}"><a href="#">Next</a></li>
                </ul>
            {/if}
            

             {if $stt_navbut == 'true'}
                <div id="slideshow_nav_{$showidvalue}" class="slide_nav_{$showidvalue}"></div>
             {/if}
   
            
                    <ul id="slides_{$showidvalue}">
                        <li><a href="#">
                        	<img src="../modules/Showtime/images/slide1.jpg" width="331" height="225" 
                            title="title here" 
                            alt="Comment here Lorem ipsum dolor sit amet." /></a></li>
                        <li><a href="#">
                        	<img src="../modules/Showtime/images/slide2.jpg" width="331" height="225" 
                            title="title here" 
                            alt="Comment here Lorem ipsum dolor sit amet." /></a></li>
                        <li><a href="#">
                        	<img src="../modules/Showtime/images/slide3.jpg" width="331" height="225" 
                            title="title here" 
                            alt="Comment here Lorem ipsum dolor sit amet." /></a></li>
                        <li><a href="#">
                        	<img src="../modules/Showtime/images/slide4.jpg" width="331" height="225" 
                            title="title here" 
                            alt="Comment here Lorem ipsum dolor sit amet." /></a></li>
                        <li><a href="#">
                        	<img src="../modules/Showtime/images/slide5.jpg" width="331" height="225" 
                            title="title here" 
                            alt="Comment here Lorem ipsum dolor sit amet." /></a></li>
                     </ul>
              
            </div> 

<br />
                <div style="text-align:center; max-width:290px;"><strong>{$settings_nav}</strong></div>
                <div id="nav_settings">
                <div id="presetbutton"><p>{$choose_presets}</p></div>
                <div id="presetlist">{$st_nav_presets}</div>
                <br />

                    <p>{$st_navbut}<label for="st_navbut">{$bar_onoff}</label></p>
                    
                    <p>{$st_nav_bordercolor}
                    <label for="st_nav_bordercolor">{$border_color} </label></p>
                    <div id="colorpicker_nav_bordercolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                    
                    <p>{$st_nav_bordersize}<label for="st_nav_bordersize">{$border_size}</label></p>  
                    <p>{$st_nav_radius}<label for="st_nav_radius">{$border_rad}</label></p>  

                    <p>{$st_nav_bgcolor}
                    <label for="st_nav_bgcolor">{$bg_color} </label></p>
                    <div id="colorpicker_nav_bgcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>

                    <p>{$st_nav_bgactivecolor}
                    <label for="st_nav_bgactivecolor">{$bg_acolor}</label></p>
                    <div id="colorpicker_nav_bgactivecolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
					
                    <p>{$st_nav_showtext}<label for="st_nav_showtext">{$text_onoff}</label></p>

                    <p>{$st_nav_textcolor}
                    <label for="st_nav_textcolor">{$text_color}</label></p>
                    <div id="colorpicker_nav_textcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                   
                    <p>{$st_nav_size}<label for="st_nav_size">{$button_size}</label></p>
                   
                    <p><label for="st_nav_pos">{$position}</label><br />{$st_nav_pos}</p>
 
                    <p>{$st_nav_padding}<label for="st_nav_padding">{$margin}</label></p>
                  </div>  
                    
               <br />
<br />
     
                    
                    
<div style="-moz-border-radius:5px 5px 5px 5px; background:none repeat scroll 0 0 #EFEFEF; border:1px solid #D9D9D9; margin:15px 0 0; padding:5px; max-width:290px;">
<p><img src="{root_url}/modules/Showtime/images/icon.gif" align="left" alt="logo showtime" style="margin:10px;" />{$donation}</p>
</div>                    
                    


        	</td></tr>           
            <tr height="20">
                <td valign="top" width="20%"><p><strong style="margin: 0pt; padding: 0pt;">{$basic}</strong></p></td>
                <td valign="top" width="40%"><br />
                    <p><br />{$st_width}
                    <label for="st_width">{$label_width}</label></p>               	
                    <p>{$st_height}
                    <label for="st_height">{$label_height}</label></p>
                 	<p><label for="st_width"><strong>{$label_scaling}</strong></label><br /><br />
                    {$st_scale}</p>
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
                    <p><label for="st_transition"><strong>{$label_transition}:</strong>  </label></p>
                    {$st_transition}
                </td>
                <td valign="top">
                    <p><br />{$st_rotatetime}
                    <label for="st_rotatetime">{$label_rotation} </label></p>  
                    <p>{$st_transitiontime}
                <label for="st_transitiontime">{$label_transitiontime} </label></p>	  
                    <br /> 
                    <p><label for="st_rotatetime"><strong>{$label_slide_bg} </strong></label>
                      <br />{$slide_bg_info}</p>
                    {$st_bgcolor}   
                    <br />
                  <div id="colorpicker_bgcolor" style="background:#F9F9F9;position:absolute;display:none;"></div></p>
              	  <p>{$st_pauseonhover}<label for="st_navbut">{$label_pauseonhover}</label></p>  
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
                    <label for="st_showcomment"><strong>{$label_show_comment}</strong></label><br />
                    {$st_showalt}
                    <label for="st_showalt"><strong>{$label_bg_text}</strong></label>
                    <br /><br />                 	
                    <p>{$st_textbgcolor}
                    <label for="st_rotatetime"><strong>{$label_text_bgcolor}</strong> </label></p>
                    <div id="colorpicker_textbgcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                    <p>{$st_textcolor}
                    <label for="st_textcolor"><strong>{$label_text_color}</strong> </label></p>
                    <div id="colorpicker_textcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                    <br /><br />
                    
                    {$st_captionopacity}
                    <label for="st_showcomment"><strong>{$label_captionopacity}</strong></label><br /><br />

                </td>
                <td valign="top"><br />
                    <p><label for="st_transition"><strong>{$label_font_type}:</strong> </label><br /><br />

                    {$st_fonttype}</p>
                    <br />
                    <p><label for="st_transition">{$label_title_size}:</label>
                    {$st_titlesize}
                    </p>
                    <p><label for="st_transition">{$label_comment_size}:</label>
                    {$st_textsize}
                    </p>
                     <div class="n25_settings">
                    <p><label for="st_transition"><strong>{$label_comment_pos}:</strong></label></p>
                    {$st_commentpos}</div>
                    
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