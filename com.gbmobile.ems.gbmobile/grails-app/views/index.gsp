<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}" />
<!--<link rel="stylesheet" type="text/css" href="style.css" />-->

<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}" ></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.spritely-0.6.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.crSpline.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'demo.js')}"></script>

<script type="text/javascript">
	(function($) {
            $(document).ready(function() {
            	$('#maquina')

                    .sprite({
                        fps: 5, 
                        no_of_frames: 5,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5,
                        on_first_frame: function(obj) {
                        },
                        on_last_frame: function(obj) {
                            // you could stop the sprite here with, e.g.
                            // obj.spStop();
                        },
                        on_frame: {
                            2: function(obj) {
                                // you could change the 'state' of the
                                // sprite here with, e.g. obj.spState(2);                               
                            }
                        }
                    })
                    .isDraggable()
                    .activeOnClick()
                    .active();
                 
                 
                 $('#banda')
                    .sprite({
                        fps: 5, 
                        no_of_frames: 2,
                        rewind: true,
                        // the following are optional: new in version 0.6...
                        start_at_frame: 5,
                        on_first_frame: function(obj) {
                        },
                        on_last_frame: function(obj) {
                        },
                        on_frame: {
                            2: function(obj) {
                                // you could change the 'state' of the
                                // sprite here with, e.g. obj.spState(2);
                                // }
                            }
                        }
                    })
                    .isDraggable()
                    .activeOnClick()
                    .active();
                    
                    /*
					$('#garra')
						    .sprite({fps: 9, no_of_frames: 1})
						    .spRandom({top: 0, bottom: 2000, left: 0, right: 0})
						    .isDraggable()
						    .activeOnClick()
						    .active();

					$('#garra')
					.sprite({fps: 10, no_of_frames: 1, speed: 20})
					.lockTo('#banda', {
						'left': 380,
						'top': -60,
						'bg_img_width': $(document).width()
						});
						
						$('#garra').pan({fps: 10, speed: 5, dir: 'down', depth: 70}); 
                    */
                    $('#foco').pan({fps: 5, speed: 5, dir: 'down', depth: 70});

            });
            
            $('body').flyToTap();
            
            
            
            
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
	        	
	    <div id="main">

	    	<div id="animation1">
	    	
	    		<img src="images/flecha.png"  style="margin-top: 35px; float:left"/> 
	    		<div id="tubo"></div>
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
	     	<div id="menu1"></div>
	     	
	     	<div id="animation2">
		     	<table class="buttomRight">
		     	<tr>
		     		<td><p>D</p></td>
		     		<td>esarrollamos soluciones y herramientas comerciales, corporativas y a trav&eacute;s de nuestra plataforma tecnol&oacute;gica EMS (Enterpise Messaging System)</td>
		     	</tr>
		     	</table>
	     	</div>	     	
	     	<div id="menu2">

	     	</div>
	     	<div id="animation3">
	     		<div id="rightcolumn">
			     		<div id="maquina"></div>
			    </div>
	     		<table>
	     			<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td><p>D</p></td>
			     		<td>esarrollamos soluciones y herramientas comerciales, corporativas y a trav&eacute;s de nuestra plataforma tecnol&oacute;gica EMS (Enterpise Messaging System)</td>
			     	</tr>
			     	<tr>
				     	<td></td>
			     	</tr><div id ="menu3"><p></p></div>
			     	<tr>
			     		<td><p>g</p></td>
			     		<td>b Mobile ofrece soluciones a la transmisi&oacute;n de datos a dispositivos m&oacute;viles. Contamos con toda la infraestructura tecnol&oacute;gica necesaria para la recepci&oacute;n, env&iacute;o y procesamiento de mensajes de texto y datos</td>
			     	</tr>
		     	</table>
	     	</div>   
	     	<div id="animation4"><p>animacion4</p>
	     		<div id="rightcolumn">
			    	<div id="maquina"></div>
			    </div>
			    <table class="buttomRight">
			    	<tr>
			     		<td><p>C</p></td>
			     		<td>on&eacute;ctate facilmente con cualquier operador, crea y administra servicios de informaci&oacute;n o contenido multimedia</td>
			     	</tr>
		     	</table>
	     	</div>
	     	<div id="menu4">
		     	<p></p>
		    </div>
	     	<div id="animation5"><p>animacion5</p>
	     		<div id="rightcolumn">
			    	<div id="maquina"></div>
			    </div>
	     	</div>
	     	<div id="menu5">

	     	</div>
	     	<div id="animation6"><p>animacion6</p>
	     		<div id="rightcolumn">
	     			<div id="maquina"></div>
			    </div>
	     	</div>
	     	<div id="menu6">

	     	</div>
	     </div>
	     <div id="animation7"><p></p></div>
	     <div id="footer">

	     </div>
     </div>
</body>

</body >

</body>

</html>