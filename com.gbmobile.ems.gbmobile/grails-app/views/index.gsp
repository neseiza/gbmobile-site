<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.spritely-0.6.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.crSpline.js')}" ></script>
 <script type="text/javascript" src="${resource(dir: 'js', file: 'move.js')}"></script> 
 <script type="text/javascript" src="${resource(dir: 'js', file: 'animaciones_move.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'animaciones_spritely.js')}" ></script> 
 
<link href='http://fonts.googleapis.com/css?family=Sonsie+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"  href="${resource(dir: 'css', file: 'style.css')}"></link>

	<!-- begin Carrusel -->
	
	<link rel="stylesheet" type="text/css"  href="${resource(dir: 'css', file: 'website.css')}" media="screen"></link>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.tinycarousel.min.js')}" ></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'simple.carousel.js')}" ></script>	
		<script type="text/javascript">
			/*$(document).ready(function(){
				$('#slider1').tinycarousel();	
				$('#slider2').tinycarousel();	
				$('#slider3').tinycarousel();	
				$('#slider4').tinycarousel();	
				$('#slider5').tinycarousel();	
				$('#slider6').tinycarousel();	
				
	
			});*/
			$(document).ready(function() {
            // example 1
            $("ul.example1").simplecarousel({
                width:770,
                height:303,
                visible: 1,
                auto: 60000,
                next: $('.next'),
                prev: $('.prev')
            });
        });
		</script>	
	<!-- end carrusel -->




<title>gbMobile</title>

</head>
	<body>	
	    <div id="page">
	      	<div id="pagetop">			
				<div id="menu" class="links"> 	
				
	            	<ul>
		                <li><a id="menu-item" href="#">Web</a></li>
		                <li><a id="menu-item" href="#">mCoupons</a></li>	                
		                <li><a id="menu-item" href="#">Apps</a></li>
		                <li><a id="menu-item" href="#">mSites</a></li>
		           	   	<li><a id="menu-item" href="#">SMS</a></li>
		               	<li><img id="logo" src="images/logogb.png" /></li>
		             </ul>
		               
		        </div>
		    </div>
		    <div id="line">
		    </div>
		    
		    <div id="main" style="float:center;">
			    <table border="0px">
				    <tr>
				    <td>
					    <div id="frame">
						    <img src="${resource(dir: 'images', file: 'flecha.png')}"  alt="*" clas="flecha1Animation1"/>
						  	<div id="foco-gen">
						  		<div id="foco"></div>
						  	</div>
							<div id="tubo"></div>
					
							<div id="banda"></div>
							<div id="maquina">
								<table id="tabla_animacion1" align="left" border="0px">				     			
							     	<tr>
							     		<td><p>E</p></td>
							     		<td>mpresa mexicana de servicios de valor agregado a telefonía móvil para México y Latinoamérica desde el 2003</td>
							     	</tr>
					     		</table>
							</div>
					
							<div id="caja1-gen">
								<div id="caja1"></div>
							</div>
							<div id="caja2-gen">
								<div id="caja2"></div>
							</div>
							<div id="garra"></div>
							<img src="${resource(dir: 'images', file: 'flecha.png')}"  alt="*" class="flecha2Animation1" />   			    				
							<img id="tubo02" src="${resource(dir: 'images', file: 'tubo_02.png')}" />				
					     		
					     	<div id="over-caja1">
					     		<div id="caja3_animacion1"></div>
					     	</div>	
					
						</div>
					</td>	
					</tr>	    
				   <tr>
					    <td>
				     		<div id="menu1">
				     		     <!-- Slider 1 -->
							     <div id="slider1">
							     	    <ul class="example1">
									        <li>
									
										        	<div id="div_imgs">
												        <img src="images/video.png"/>
												        <img src="images/cel_infonavit.png" />
										        	</div>
											        <div id="subelem">
												        <h2>
												        	Casos de Éxito
												        </h2>
												        <br />
												        <br />
												        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et sapien eu tortor pellentesque egestas. Aenean magna lacus, lobortis ac porttitor vitae, dictum vel purus. Nulla cursus arcu et mauris rutrum gravida. Curabitur a vehicula diam. 
											        </div>
									        	
									        </li>
									                <li>
									
										        	<div id="div_imgs">
												        <img src="images/video.png"/>
												        <img src="images/cel_infonavit.png" />
										        	</div>
											        <div id="subelem">
												        <h2>
												        	Casos de Éxito
												        </h2>
												        <br />
												        <br />
												        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et sapien eu tortor pellentesque egestas. Aenean magna lacus, lobortis ac porttitor vitae, dictum vel purus. Nulla cursus arcu et mauris rutrum gravida. Curabitur a vehicula diam. 
											        </div>
									        	
									        </li>
									                <li>
									
										        	<div id="div_imgs">
												        <img src="images/video.png"/>
												        <img src="images/cel_infonavit.png" />
										        	</div>
											        <div id="subelem">
												        <h2>
												        	Casos de Éxito
												        </h2>
												        <br />
												        <br />
												        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et sapien eu tortor pellentesque egestas. Aenean magna lacus, lobortis ac porttitor vitae, dictum vel purus. Nulla cursus arcu et mauris rutrum gravida. Curabitur a vehicula diam. 
											        </div>
									        	
									        </li>
									</ul>

								    <span class="prev"><img src="images/boton_left.png" /></span>
								    <span class="next"><img src="images/boton_right.png" /></span>
								</div>
							     <!-- End Slider 1 -->
				     		</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="animation2">
						     	<img src="${resource(dir: 'images', file: 'animacion2_arriba.png')}" id="img" style="margin-left: 20%; margin-top:-0.5%; z-index:-1;"/>     		
						     	<table border="0px" bordercolor="white" class="center" width="48%">
							     	<tr>
							     		<td width="370px">
							     			<div id="over-caja2">
							     				<img src="${resource(dir: 'images', file: 'flecha.png')}"  alt="*" class="flecha1Animation2"/>
									     		<div id="caja_tubo02"></div>
							     			</div>
							     		</td>
							     		<td><p>D</p></td>
							     		<td>esarrollamos soluciones y herramientas comerciales, corporativas y a trav&eacute;s de nuestra plataforma tecnol&oacute;gica EMS (Enterpise Messaging System)</td>
							     	</tr>
						     	</table>
						     	<img src="${resource(dir: 'images', file: 'tubo_corto_animacion4.png')}" id="tubo03"/>
						     	<div id="bandaSimple"></div>
					    		<div id="bandaSimple1"></div>
					     	</div>	
				     	</td>
			     	</tr>	     	
			        <tr>	     	
			        <tr>
				     	<td>
				     		<div id="menu2">
					     		 <!-- Slider 2 -->
							     <div id="slider2">

								</div>									
							     <!-- End Slider 2 -->
				     		</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="animation3">					     		
					     		<img src="${resource(dir: 'images', file: 'maquina_abajo1.png')}" id="maquina_abajo1"/>
					     		<table id="tabla_animacion3" align="left">				     			
							     	<tr>
							     		<td><p>D</p></td>
							     		<td>esarrollamos soluciones y herramientas comerciales, corporativas y a trav&eacute;s de nuestra plataforma tecnol&oacute;gica EMS (Enterpise Messaging System)</td>
							     	</tr>
					     		</table>
					     		<img src="${resource(dir: 'images', file: 'tubo_03.png')}" id="tubo_03"/>

					     		<div id="banda_04"><img src="${resource(dir: 'images', file: 'flecha.png')}"  alt="*" class="flecha1Animation3"/></div>
					     		<div id="banda_05"></div>
					     		<div id="banda_06"></div>
					     		<div id="banda_07"></div>
								<div id="over-caja3">
					     			<div id="caja_animacion3"></div>
								</div>
					     		<div id="banda_07"><img src="${resource(dir: 'images', file: 'flecha_invertida.png')}"  alt="*" class="flecha2Animation3"/></div>					     		
					     	</div>
					     	</td>
					     	</tr>
					     	<tr>
					     	<td>
					     		<!-- <img src="${resource(dir: 'images', file: 'tubo_menu3.png')}" id="tubo_menu3"/> -->
					     		<div id ="menu3">					     			 
					     			<div id="tubo_menu3"></div>
					     			 <!-- Slider 3 -->
								     <div id="slider3">
										
									</div>
								     <!-- End Slider 3 -->
					     		</div>							
					     	</div> 
				     	</td>
			     	</tr>
		        	<tr>
				     	<td>
					     	<div id="animation4">
					     	
					     		<img src="${resource(dir: 'images', file: 'tubo_03.png')}" id="tubo_04"/>
					     		<table id="tabla_animacion4">
							     	<tr>
							     		<td><p>g</p></td>
							     		<td>B Mobile ofrece soluciones a la transmisi&oacute;n de datos a dispositivos m&oacute;viles. Contamos con toda la infraestructura tecnol&oacute;gica necesaria para la recepci&oacute;n, env&iacute;o y procesamiento de mensajes de texto y datos</td>
							     	</tr>
						     	</table>
					     	    <img src="${resource(dir: 'images', file: 'maquina_abajo1.png')}" id="maquina_abajo2"/>
					     		<div id="banda1_animacion4"><img src="${resource(dir: 'images', file: 'flecha.png')}" alt="*" class="flecha1Animation4"/></div>
					     		<div id="banda2_animacion4"></div>
					     		<div id="banda3_animacion4"></div>
					     		<div id="over-caja4">
					     			<div id="caja_animacion4"></div>
					     			<img src="${resource(dir: 'images', file: 'flecha_invertida.png')}"  alt="*" class="flecha2Animation4"/>
					     		</div>
					     		<img src="${resource(dir: 'images', file: 'tubo_corto_animacion4.png')}" id="tubo_corto_animacion4"/>					     		
					     	</div>
				     	</td>
			     	</tr>
			     	<tr>
				     	<td>
					     	<div id="menu4">
						     	<!-- Slider 4 -->
							     <div id="slider4">

								</div>
							     <!-- End Slider 4 -->
						    </div>
					    </td>
				    </tr>		    
				    <tr>
				     	<td>
					     	<div id="animation5">
					     	
					     		<img src="${resource(dir: 'images', file: 'tubo_03.png')}" id="tubo_05"/>

					     		<div id="banda1_animacion5"><img src="${resource(dir: 'images', file: 'flecha.png')}"  alt="*" class="flecha1Animation5"/></div>
					     		<div id="banda2_animacion5"></div>
					     		<div id="banda3_animacion5"></div>
					     		<div id="banda4_animacion5"></div>
								<div id ="over-caja5">
						     		<div id="caja_animacion5"></div>
						     		<table id="tabla_animacion5">		
								    	<tr>
								     		<td><p>C</p></td>
								     		<td>on&eacute;ctate facilmente con cualquier operador, crea y administra servicios de informaci&oacute;n o contenido multimedia</td>
								     	</tr>
							     	</table>
								</div>
					     	</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="menu5">
					     	
						     	<!-- Slider 5 -->
							     <div id="slider5">
									
								</div>
							     <!-- End Slider 5 -->	
							     <img src="${resource(dir: 'images', file: 'tubo_menu5.png')}" id="tubo_menu5"/>
					     	</div>
				     	</td>
			     	</tr>	 	
			     	<tr>
					     <td>
					     	<div id="animation6">
					     	<img src="${resource(dir: 'images', file: 'tubo_03.png')}" id="tubo_07"/>
					     	<img src="${resource(dir: 'images', file: 'maquina_abajo1.png')}" id="maquina_abajo3"/>
					     	<img src="${resource(dir: 'images', file: 'tubo_04.png')}" id="tubo_06"/>
					     	
					     	
					     	<div id="banda4_animacion6"></div>
					     	<div id="banda3_animacion6"></div>
					     	
					     	<img src="${resource(dir: 'images', file: 'tubo_corto_animacion4.png')}" id="tubo_corto_animacion6"/>
					     	
					     	<div id="banda2_animacion6"></div>
					     	<div id="banda1_animacion6"></div>
		     	
					     	<div id="over-caja6">
					     		<div id="caja1_animacion6"></div>
					     		<div id="caja2_animacion6"></div>
					     	</div>
					     	</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="menu6">
						     	<!-- Slider 6 -->
							     <div id="slider6"></div>
							     <!-- End Slider 6 -->	
					     	</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
				     		<div id="animation7"></div>	
				     	</td>
			     	</tr>
			     </table>
		     </div>	     
		     <div id="footer">
		     </div>
	     </div>
	</body>
</html>
