
{literal}

		<script src="../modules/Showtime/jq_crop/js/jquery.Jcrop.js"></script>
		<link rel="stylesheet" href="../modules/Showtime/jq_crop/css/jquery.Jcrop.css" type="text/css" />
		<link rel="stylesheet" href="../modules/Showtime/jq_upload/bootstrap.css">

		<script language="Javascript">
			$(function(){
				$('#cropbox').Jcrop({
					aspectRatio: {/literal}{$st_width}/{$st_height}{literal},
					setSelect: [ {/literal}{$x_pos}, {$y_pos}, {$x_dim}, {$y_dim} {literal}],
					onSelect: updateCoords
				})
				$('[name*=_x]').val({/literal}{$x_pos}{literal});
				$('[name*=_y]').val({/literal}{$y_pos}{literal});
				$('[name*=_w]').val({/literal}{$x_dim}{literal});
				$('[name*=_h]').val({/literal}{$y_dim}{literal});

			});

			function updateCoords(c){
				$('[name*=_x]').val(c.x);
				$('[name*=_y]').val(c.y);
				$('[name*=_w]').val(c.w);
				$('[name*=_h]').val(c.h);
				
			};

		</script>

	</head>

	<body>

    <div class="well">

		<h1>{/literal}{$title_crop}</h1>

		<!-- This is the image we're attaching Jcrop to -->
		<img src="{$imgtocrop}?{$filemtime}{literal}" id="cropbox" />

		<!-- This is the form that our event handler fills -->

        {/literal}
        
        	{$FormStart}
            	{$hidden}
                {$coordinates}
                <br />
                {$submit}{$cancel}
            {$FormEnd}      
        
        {literal}

	</div>
{/literal}