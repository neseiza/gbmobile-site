<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.spritely-0.6.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.crSpline.js')}" ></script>
<script src="${resource(dir: 'js', file: 'move.js')}"></script>

<link rel="stylesheet" type="text/css"  href="${resource(dir: 'css', file: 'style.css')}"></link>

	<!-- begin Carrusel -->
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.tinycarousel.min.js')}" ></script>
	<link rel="stylesheet" type="text/css"  href="${resource(dir: 'css', file: 'website.css')}" media="screen"></link>
	
		<script type="text/javascript">
			$(document).ready(function(){
				$('#slider1').tinycarousel();	
				$('#slider2').tinycarousel();	
				$('#slider3').tinycarousel();	
				$('#slider4').tinycarousel();	
				$('#slider5').tinycarousel();	
				$('#slider6').tinycarousel();	
				
	
			});
		</script>	
	<!-- end carrusel -->



 <script>
      addEventListener('DOMContentLoaded', function(){
      
      	/* Animation 2 */
      	 move('caja_tubo02')          
          .rotate(180)  
          .y(-50)
          .then()
          	.set('height','50px')
      		.then()
	          	.y(-36)
	          	.duration('1s')
	          	.then()
	          		.x(220)
	          		.duration('4s')
	          		.then()
	          			.rotate(-90)
	          			.y(50)
	          			.duration('1s')
	          			.then()
	          				.x(30)
	          				.y(12)
	          				.set('width','0')
	          				.duration('1s')
	          			//.pop()
	          		.pop()
	          	.pop()
	          .pop()
	         .pop()
	       .end();  
	       /* End Animation 2 */
	       
	    /* Animacion 3 */
        move('caja_animacion3')
          .set('background-position','0 0')
          .duration('2s')
          .ease('out')
          .then()
          	.y(78)
          	.duration('1s')
	          .then()
	          	.x(-550)
	          	.duration('8s')
	          	.then()
	          		.ease('in')
	          		.y(80)
	          		.x(-10)
	          		.rotate(-90)
	          		.duration('2s')
	          		.then()
	          			.x(5)
	          			.y(-15)
	          			.set('background-position', '-60px')
	          			.duration('1s')
	          		.pop()	
	          	.pop()
	          .pop()
	      .pop()    
        .end();
        /* End Animacion 3 */

        /* Animacion 4 */        

        move('caja_animacion4')
          //.y(80)
          .y(100)
          .duration('2s')
          	.then()
          		.x(450)
          		.duration('5s')
          		.then()
          			.x(100)
          			.y(60)
          			.rotate(90)
          			.duration('1s')
          		.pop()
          	.pop() 	      
        .end();
        /* End Animacion 4 */        
        }, false);
      
      
      
</script>

	
<script type="text/javascript">
var cont=0;
	
	(function($) {
            $(document).ready(function() {
            var cont=0;
            	$('#maquina')
                    .sprite({
                        fps: 2, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 1
                    })
                    
                 $('#banda')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 1
                    })
                    
            	$('#bandaSimple')

                    .sprite({
                        fps: 2, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 1
                    })
                    
                $('#bandaSimple1')

                    .sprite({
                        fps: 2, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 1
                    })   
                    
                    $('#banda_04')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })
                    
                    $('#banda_05')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })

                    $('#banda_06')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })
                    
                    $('#banda_07')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })
                    
                    $('#banda1_animacion4')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })
                    
                    $('#banda2_animacion4')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })
                    
                    $('#banda3_animacion4')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5
                    })

                    
                    $('#foco').pan({fps: 10, speed: 7, dir: 'down', depth: 70});
                    $('#caja_tubo01').pan({fps: 10, speed: 7, dir: 'down', depth: 70});
                    
            });
            
  
    })(jQuery);
    

</script>

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
		    
		    <div id="main" style="float:right;">
			    <table border="2px">	    
				    <tr>
				    	<td>
					    	<div id="animation1">

					    		<img src="images/flecha.png"  style="margin-top: 35px; float:left"/> 
					    		<div id="tubo">
						    		<img src="images/tubo_01.png" />
						    		<div id="caja_tubo01"></div>
						    		<img id="tubo02" src="images/tubo_02.png" />
					    		</div>
							    <div id="banda"></div>
							    <div id="rightmiddle">	
							    	<div id="foco"></div>		    	
							    	<div id="maquina">
								    	<table class="buttomRight">
										<tr>
									    	<td><p>E</p></td>
									     	<td>mpresa mexicana de servicios de valor agregado a telefon&iacute;a m&oacute;vil para M&eacute;xico y America Latina desde el 2003</td>
									    </tr>
								    </table>
							    	</div>			    				    	
							    </div>
							    <img src="images/flecha.png"  style="margin-top: 35px; marigin-right: 50%"/>		    			    
						    </div>		
						 </td>
					</tr>	    
				   <tr>
					    <td>
				     		<div id="menu1">
				     		     <!-- Slider 1 -->
							     <div id="slider1">
									<a class="buttons prev" href="#">left</a>
									<div class="viewport">
										<ul class="overview">
											<li><img src="images/picture6.jpg" /></li>
											<li><img src="images/picture5.jpg" /></li>
											<li><img src="images/picture4.jpg" /></li>									
											<li><img src="images/picture3.jpg" /></li>
											<li><img src="images/picture2.jpg" /></li>
											<li><img src="images/picture1.jpg" /></li>
										</ul>
									</div>
									<a class="buttons next" href="#">right</a>
								</div>
							     <!-- End Slider 1 -->
				     		</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="animation2">
					     		<img id="img" src="images/animacion2_arriba.png" style="margin-left: 20%; margin-top:-0.5%; z-index:-1;"/>					     		
						     	<table border="0px" bordercolor="white" class="center" width="48%">
							     	<tr>
							     		<td width="370px">
								     		<div id="caja_tubo02"></div>
							     		</td>
							     		<td><p>D</p></td>
							     		<td>esarrollamos soluciones y herramientas comerciales, corporativas y a trav&eacute;s de nuestra plataforma tecnol&oacute;gica EMS (Enterpise Messaging System)</td>
							     	</tr>
						     	</table>
						     	<div id="tubo03"></div>
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
									<a class="buttons prev" href="#">left</a>
									<div class="viewport">
										<ul class="overview">
											<li><img src="images/picture6.jpg" /></li>
											<li><img src="images/picture5.jpg" /></li>
											<li><img src="images/picture4.jpg" /></li>									
											<li><img src="images/picture3.jpg" /></li>
											<li><img src="images/picture2.jpg" /></li>
											<li><img src="images/picture1.jpg" /></li>
										</ul>
									</div>
									<a class="buttons next" href="#">right</a>
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

					     		<div id="banda_04"></div>
					     		<div id="banda_05"></div>
					     		<div id="banda_06"></div>
					     		<div id="banda_07"></div>
					     		<div id="caja_animacion3"></div>
					     		
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
										<a class="buttons prev" href="#">left</a>
										<div class="viewport">
											<ul class="overview">
												<li><img src="images/picture6.jpg" /></li>
												<li><img src="images/picture5.jpg" /></li>
												<li><img src="images/picture4.jpg" /></li>									
												<li><img src="images/picture3.jpg" /></li>
												<li><img src="images/picture2.jpg" /></li>
												<li><img src="images/picture1.jpg" /></li>
											</ul>
										</div>
										<a class="buttons next" href="#">right</a>
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
					     		<div id="banda1_animacion4"></div>
					     		<div id="banda2_animacion4"></div>
					     		<div id="banda3_animacion4"></div>
					     		<div id="over-caja">
					     			<div id="caja_animacion4"></div>
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
									<a class="buttons prev" href="#">left</a>
									<div class="viewport">
										<ul class="overview">
											<li><img src="images/picture6.jpg" /></li>
											<li><img src="images/picture5.jpg" /></li>
											<li><img src="images/picture4.jpg" /></li>									
											<li><img src="images/picture3.jpg" /></li>
											<li><img src="images/picture2.jpg" /></li>
											<li><img src="images/picture1.jpg" /></li>
										</ul>
									</div>
									<a class="buttons next" href="#">right</a>
								</div>
							     <!-- End Slider 4 -->
						    </div>
					    </td>
				    </tr>		    
				    <tr>
				     	<td>
					     	<div id="animation5">
					     		<table>
							    	<tr>
							     		<td><p>C</p></td>
							     		<td>on&eacute;ctate facilmente con cualquier operador, crea y administra servicios de informaci&oacute;n o contenido multimedia</td>
							     	</tr>
						     	</table>
					     	</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="menu5">
						     	<!-- Slider 5 -->
							     <div id="slider5">
									<a class="buttons prev" href="#">left</a>
									<div class="viewport">
										<ul class="overview">
											<li><img src="images/picture6.jpg" /></li>
											<li><img src="images/picture5.jpg" /></li>
											<li><img src="images/picture4.jpg" /></li>									
											<li><img src="images/picture3.jpg" /></li>
											<li><img src="images/picture2.jpg" /></li>
											<li><img src="images/picture1.jpg" /></li>
										</ul>
									</div>
									<a class="buttons next" href="#">right</a>
								</div>
							     <!-- End Slider 5 -->	
					     	</div>
				     	</td>
			     	</tr>	 	
			     	<tr>
					     <td>
					     	<div id="animation6">
					     	</div>
				     	</td>
			     	</tr>	     	
			     	<tr>
				     	<td>
					     	<div id="menu6">
						     	<!-- Slider 6 -->
							     <div id="slider6">
									<a class="buttons prev" href="#">left</a>
									<div class="viewport">
										<ul class="overview">
											<li><img src="images/picture6.jpg" /></li>
											<li><img src="images/picture5.jpg" /></li>
											<li><img src="images/picture4.jpg" /></li>									
											<li><img src="images/picture3.jpg" /></li>
											<li><img src="images/picture2.jpg" /></li>
											<li><img src="images/picture1.jpg" /></li>
										</ul>
									</div>
									<a class="buttons next" href="#">right</a>
								</div>
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