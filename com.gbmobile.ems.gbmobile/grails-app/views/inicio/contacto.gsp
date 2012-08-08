<!DOCTYPE html>
<html>
	<head>
		<parameter name="section" value="contacto" />
		<meta name="layout" content="page"/>
   		<meta charset="utf-8">

   		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
   		<link type="text/css" rel="stylesheet" media="all" href="${resource(dir: 'css', file: 'jquery-impromptu.3.1.css')}"/>
   		<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-impromptu.3.1.js')}"></script>

   		<title> Contacto gbmobile</title>

   		<script>
   		$(document).ready(function() {
   			$('.tooltip input').focusin( function() { $(this).parent().find('span').fadeOut('slow'); });
			$('.tooltip input').focusout( function() { if ($(this).val() == '') { $(this).parent().find('span').fadeIn('slow'); } });

			$('#contact').find('input').each(function(i) { if ($(this).val() != '') { $(this).parent().find('span').fadeOut('fast'); } })

			jQuery.fn.correo=function()
			{
				if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(this).val()))
					return true;
				else
					return false;
			}

			$('#contact').submit(function(e) {
				e.preventDefault();
				if ($('#name').val() == ""|| $('#email').val()=="") {
					$.prompt('Los campos de nombre, E-mail son necesarios para continuar');
				}
				else if (!$('#email').correo()) {
					$.prompt('Enviar e-mail');
				}
				else {
					$.ajax({
				        url: "sendmail",
						dataType: "json",
				        data: $(this).serialize(),
				        success: function(datos){
							if (datos.status=="success") {
								$.prompt('<p style="font-size: 18px;">!Gracias¡<br><br>Su informacion fue enviada con exito</p>', { show: 'slideDown' });
								$(':input').each(function() { $(this).val(''); $(this).parent().find('span').fadeIn('slow'); });
								$('#bsub').val('Enviar');
							}
				        },
				        type: "POST"
					});
				}
			});

			//$.prompt('Por favor elige otro título, el que escribiste ya esta utilizado.');
   		});
   		</script>

   	</head>

	<body>
		<div class="row-wrap clearfix">
			<div id="contacto-title"><h2>Contacto</h2></div>
			<div id="contacto-text">
				<p>Para saber mas de nosotros: </p>
			</div>
			<br>
			<div id="contacto-wrap">
				<div id="contacto-content" class="clearfix">
					<g:form method="post" name="contact" id="contact" url="[controller:'inicio', action:'sendmail']">
						<table id="table-contacto">
							<tr>
								<td>Hola, mi nombre es:</td>
								<td>
									<label class="tooltip">
										<span>(nombre)</span>
										<input type="text" name="name" id="name" class="simple-input"  />
									</label>
								</td>
							</tr>
							<tr>
								<td>Y represento a la empresa:</td>
								<td>
									<label class="tooltip">
										<span>(empresa)</span>
										<input type="text" name="empresa" class="simple-input"  />
									</label>
								</td>
							</tr>							
							<tr>
								<td>Por favor contactenme a traves de mi emal:</td>
								<td>
									<label class="tooltip">
										<span>(email)</span>
										<input type="text" name="email" id="email" class="simple-input"  />
									</label>
								</td>
							</tr>
							<tr><td colspan="2" align="center">&nbsp;</td></tr>
							<tr><td colspan="2" align="center"><input type="submit" id="bsub" class="simple-button" value="Enviar" /></td></tr>
						</table>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>