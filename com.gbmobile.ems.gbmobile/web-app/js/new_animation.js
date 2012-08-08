var lado = true;
var effect = 'linear', OPERA = 'Opera', IE = 'Internet Explorer';;

addEventListener('DOMContentLoaded', 
	function animations(){		
		playAnimations()		
	}, 0);

function playAnimations(){
	var theBrowserName = BrowserName();	
    console.log('Browser name: ' + theBrowserName);
		//Animation 1
	move('foco')
		.set('visibility', 'visible')
		.then()
			.ease(effect)
			.y(130)
			.duration('2s')
			.then()
				.set('visibility', 'hidden')
				.then()
					.y(-130)
				.pop()
			.pop()
		.pop()
	.end();
	
	
	move('caja1')
		.ease(effect)
		.set('visibility', 'visible')
		.duration('3s')
		.then()
			.x(-240)
			.duration('4s')
			.then()
				.set('visibility', 'hidden')
				.then()
					.x(240)
				.pop()
			.pop()
		.pop()
	.end(); //total time:7s
	
	
	move('caja2')
		.ease(effect)
		.set('width', '52px')
		.duration('8s') // wait for 'foco' & 'caja1'
		.then()
			.x(-110)
			.duration('3s')
			.then()
				//.set('width', '52px')
				.duration('2s') //keep static waiting for 'garra'
				.then() // interaction with 'garra'
					.y(-152)
					.duration('3s')
					.then()
						.x(-320)
						.duration('4s')
						.then()
							.y(56)
							.duration('3s')  
							.then() //drops the box 'caja2'
								.y(58)
								.duration(500) //total time since the begining: 23.5s
								.then() //The element is sent to the begining
									.set('visibility', 'hidden')
									.then()
										.x(430)
										.y(38)
										.then()
											.set('with', '52px')
											.then()
												.set('visibility', 'visible')
											.pop()
										.pop()
									.pop()
								.pop()
							.pop()
						.pop()
					.pop()
				.pop()
			.pop()
		.pop()
	.end();
	
	
	move('garra')
		.ease(effect)
		.set('width', '88px')
		.duration('9s')
		.then()
			.y(152)
			.duration('4s')
			.then()
				.y(-152)
				.duration('3s')
				.then()
					.x(-320)
					.duration('4s')
					.then()
						.y(58)
						.duration('3s')
						.then()
							.y(-58)
							.duration('3s')
							.then()
								.x(320)
								.duration('4s')
							.pop()
						.pop()
					.pop()
				.pop()
			.pop()
		.pop()
	.end();
	
	
	move('caja2-gen')
		.ease(effect)
		.set('width', '430px')
		.duration('22s')
		.then()
			.set('height', '103px')
			.then()
				.set('height', '103px')
				.duration('20s')
				.then()
					.set('height', '200px')
				.pop()
			.pop()
		.pop()
	.end();
		
		
		// Animation 1 caja 3 
	move('caja3_animacion1')
		.ease(effect)
		.set('visibility','visible')
		.duration('25s') // waiting for 'caja2'
		.then()
			.y(150)
			.rotate(120)
			.duration('1s')
		.pop()   
	.end(); 	
		// End Animation 1 caja 3	
		// Total time Animation 1: 26s      
		//End Animation 1
				
		// Animation 2 
	move('caja_tubo02')
		.ease(effect)
		.set('visibility','visible')
		.duration('27s') // waiting for End Animation 1
		.then()
			.y(92)
			.rotate(90)
			.duration('1s')
			.then()
				.y(225)
				.duration('2s')
				.then()
					.x(20)
					.y(25)
					.rotate(-90)
					.duration(500)
					.then()
						.y(105)
						.x(-20)
						.rotate(-90)
						.duration(1100)
					.pop()
				.pop()
			.pop()
		.pop()	  
	.end(); 
		//Total time Animation 2: 4.6s
		//total time since the begining: 31.6s 
	    // End Animation 2 
	    
	    // Animacion 3 
	move('caja_animacion3')
		.ease(effect)
		.set('visibility','visible')
		.duration('33s')
		.then()
			.y(98)
			.rotate(90)
			.duration('1s')
			.then()
				.y(515)
				.duration('6s')
				.then()
					.y(20)
					.x(25)
					.rotate(-90)
					.duration('0.5s')
					.then()
						.y(105)
						.x(-20)
						.rotate(-90)
						.duration('1s')
					.pop()
				.pop()
			.pop()
		.pop()    
	.end();
		// Total time Animation 3: 8.5 s
		//total time since the begining: 41.5s 
        // End Animacion 3 	 
    if (theBrowserName == OPERA || theBrowserName == IE){
    		IE_rot = '-ms-transform';
    		O_rot = '-o-transform';
    		rota = '';
    		if(theBrowserName == OPERA)
    		{
	    		rota = O_rot;
    		}
    		else if(theBrowserName == IE){
	    		rota = IE_rot;
    		}
	        // Animacion 4 
	        /*
	        move('caja_animacion4')
				//.duration('1s')//43s
				.set('visibility', 'visible')
				.ease('linear')
				.duration('43s')
				.then()
					.set('-o-transform', 'rotate(90deg)')
					.set('-ms-transform','rotate(90deg)') 
					.set('margin-top', '50px')
					.duration('1s')
					.then()
						.set('margin-left', '460px')
						.duration('3s')
						.then()
							.set('-o-transform', 'rotate(180deg)')
							.set('margin-left', '490px')
							.set('margin-top', '130px')
							.duration('1s')
							.then()
								.set('-o-transform', 'rotate(270deg)')
								.set('margin-top', '160px')
								.duration('1s')
								.then()
									.set('visibility', 'hidden')
									.then()
					                    .set('margin-top', '-50px')
					                    .set('margin-left', '0px')
					                    .duration('2s')
					            	.pop()
								.pop()
							.pop()
						.pop()
					.pop()
				.pop()
			.end();*/
			
			
			
			
			move('caja_animacion4')
				.set('visibility','visible')
				.ease('linear')
				.duration('.5s')
				.then()
					.set(rota,'rotate(90deg)')
					.set('margin-top','50px')  
					.duration('1s')    
					.then()
						.set('margin-left','460px')
						.duration('3s')
						.then()
							.set(rota,'rotate(180deg)')
							.set('margin-top', '130px')
							.duration('.5s')
							.then()
								.set('visibility','hidden')
								.then()
									.translate(0,0)      
									.set('margin-top','-49px')
									.set('margin-left','20px')
									.then()
										.set('visibility','visible')
										.duration('1s')
									.pop()
								.pop()
							.pop()
						.pop()
					.pop()
				.pop()  
			.end()

			
			
			// Total time Animation 4: 6 s
			//total time since the begining: 49s 
	        // End Animacion 4 
	        
	        // Animacion 5
		move('caja_animacion5')
			.ease(effect)
			.set('visibility','visible')
			.duration('51s')//51s
			.then()
				.y(98)
				.rotate(180)
				.duration('1s')
				.then()
					.x(-585)
					.duration('8s')
					.then()
						.y(-170)
						.x(-40)
						.rotate(-190)
						.duration(1200)
					.pop()
				.pop()
			.pop()
		.end(); 	
			// Total time Animation 5: 9 s
			//total time since the begining: 60s 
	        // End Animacion 5 //
	
	        
			// *********** Animacion 6 ********** //        
		if(lado){
			//    =========== Caja 1 ========== //		
			move('caja1_animacion6')
				.ease(effect)
				.set('visibility','visible')
				.duration('62s')//62s
				.then()
					.y(98)
					.rotate(90)
					.duration('1s')
					.then()
						.y(-255)
						.duration('3s')
						.then()
							.y(-100)
							.x(60)
							.rotate(90)
							.duration('.5s')
						.pop()
					.pop()
				.pop()    
			.end();
			//    =========== End Caja 1 ========== //
			lado=false;
		}else{
			//    =========== Caja 2 ========== //
			move('caja2_animacion6')
				.ease(effect)
				.set('visibility','visible')
				.duration('62s')//62s
				.then()
					.y(95)
					.rotate(-90)
					.duration('1s')
					.then()
						.y(-250)
						.duration('3s')
						.then()
							.y(-100)
							.x(-60)
							.rotate(-90)
							.duration('.5s')
						.pop()
					.pop()
				.pop()    
			.end();
			//    =========== End Caja 2 ========== 
			lado=true;
		}
		// Total time Animation 6: 4.5 s
		//total time since the begining: 66.5s
		// *********** End Animacion 6 ********** //
    }
    else {
	    console.log('no soy Opera ni IE');	    
	        // Animacion 4 
		move('caja_animacion4')
			.set('visibility','visible')
			.ease(effect)
			.duration('3s')//43s
			.then()
				.y(98)
				.rotate(90)
				.duration('1s')
				.then()
					.y(-450)
					.duration('4.5s')
					.then()
						.x(50)
						.y(-25)
						.rotate(90)
						.duration('.5s')
						.then()
							.set('visibility','hidden')
							.then()
								.rotate(-90)
								.y(25)
								.x(-50)	
								.then()
									.y(450)
									.then()
										.rotate(-90)
										.y(-98)
									.pop()
								.pop()
							.pop()
						.pop()
					.pop()
				.pop()
			.pop()  	
		.end();
			// Total time Animation 4: 6 s
			//total time since the begining: 49s 
	        // End Animacion 4 
	        
	        // Animacion 5
		move('caja_animacion5')
			.ease(effect)
			.set('visibility','visible')
			.duration('51s')//51s 
			.then()
				.y(98)
				.rotate(180)
				.duration('1s')
				.then()
					.x(-585)
					.duration('8s')
					.then()
						.y(-170)
						.x(-40)
						.rotate(-190)
						.duration(1200)
					.pop()
				.pop()
			.pop()
		.end(); 	
			// Total time Animation 3: 9 s
			//total time since the begining: 60s 
	        // End Animacion 5 //
	
	        
			// *********** Animacion 6 ********** //        
		if(lado){
			//    =========== Caja 1 ========== //		
			move('caja1_animacion6')
				.ease(effect)
				.set('visibility','visible')
				.duration('62s')//62s
				.then()
					.y(98)
					.rotate(90)
					.duration('1s')
					.then()
						.y(-255)
						.duration('3s')
						.then()
							.y(-100)
							.x(60)
							.rotate(90)
							.duration('.5s')
						.pop()
					.pop()
				.pop()    
			.end();
			//    =========== End Caja 1 ========== //
			lado=false;
		}else{
			//    =========== Caja 2 ========== //
			move('caja2_animacion6')
				.ease(effect)
				.set('visibility','visible')
				.duration('62s')//62
				.then()
					.y(95)
					.rotate(-90)
					.duration('1s')
					.then()
						.y(-250)
						.duration('3s')
						.then()
							.y(-100)
							.x(-60)
							.rotate(-90)
							.duration('.5s')
						.pop()
					.pop()
				.pop()    
			.end();
			//    =========== End Caja 2 ========== 
			lado=true;
		}
		// Total time Animation 6: 4.5 s
		//total time since the begining: 66.5s
		// *********** End Animacion 6 ********** //
    }
	//setTimeout(playAnimations, 66000);
	setTimeout(playAnimations, 10000);
	
}


function resetAnimation1() {
	move('foco')
	.translate(0,0)
	.duration('0s')
	.end();
	
	move('garra')
	.translate(0,0)
	.duration('0s')
	.end();
	
	move('caja1')
	.translate(0,0)
	.duration('0s')
	.end();
	
	move('caja2')
	.translate(0,0)
	.duration('0s')
	.end();
	
	move('caja3_animacion1')
	.translate(0,0)
	.duration('0s')
	.end();	
}

function resetAnimation2() { 
	move('caja_tubo02')
	.translate(0,0)
	.duration('0s')
	.end();
}

function resetAnimation3() { 
	move('caja_animacion3')
	.translate(0,0)
	.duration('0s')
	.end();
}

function resetAnimation4() { 
	move('caja_animacion4')
	.translate(0,0)
	.duration('0s')
	.end();
}

function resetAnimation5() { 
	move('caja_animacion5')
	.translate(0,0)
	.duration('0s')
	.end();
}

function resetAnimation6() { 

	if(lado){
		move('caja1_animacion6')
		.translate(0,0)
		.duration('0s')
		.end();
	
	}else{
		move('caja2_animacion6')
		.translate(0,0)
		.duration('0s')
		.end();
	}
}

function BrowserName(){
	var browserName = '';
	
	if(navigator.userAgent.toLowerCase().indexOf("chrome" ) >= 0) browserName='Chrome';
	else if(navigator.userAgent.toLowerCase().indexOf("opera" ) >= 0) browserName='Opera';
	else if(navigator.userAgent.toLowerCase().indexOf("firefox" ) >= 0) browserName='Firefox';
	else if(navigator.userAgent.toLowerCase().indexOf("safari" ) >= 0) browserName='Safari';
	else if(navigator.userAgent.toLowerCase().indexOf("msie" ) >= 0) browserName='Internet Explorer';
	
	if(browserName != '') return browserName;
	else return 'an unknown browser';
} 
