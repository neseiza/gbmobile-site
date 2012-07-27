


/**/
var i=0;
var lado = true;

addEventListener('DOMContentLoaded', 
	function animation()
	{
		
		myfunction()
		
	}, 0);



function myfunction()
{
	//var lado = true;
		
	move('foco')
		.y(130)
		.duration('4s')
	.end();
	
	
	move('caja1')
		.set('visibility', 'visible')
		.duration('5s')
		.then()
			.x(-240)
			.duration('5s')
		.pop()
	.end();
	
	
	
	move('caja2')
		.set('width', '52px')
		.duration('10s')
		.then()
			.x(-110)
			.duration('5s')
			.then()
			.set('width', '52px')
			.duration('3s')
				.then()
					.y(-152)
					.duration('4s')
					.then()
						.x(-320)
						.duration('4s')
						.then()
							.y(56)
							.duration('3s')
							.then()
								.y(58)
								.duration('2s')
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
		.set('width', '88px')
		.duration('14s')
		.then()
			.y(152)
			.duration('4s')
			.then()
				.y(-152)
				.duration('4s')
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
		.set('visibility','visible')
		.duration('32s')
		.then()
			.y(150)
			.duration('5s')
		.pop()   
	.end(); 	        
	// End Animation 1 caja 3//  
	   

      // Animation 2 
	move('caja_tubo02')
		.set('visibility','visible')
		.duration('37s')
		.then()
			.set('background-position','0 0')   
			.y(10)       
			.duration('1.5s')
			.ease('out')
			.then()
				.y(32)
				.duration('1s')
				.then()
					.x(-220)
					.duration('5s')
					.then()
						.x(-80)
						.y(60)
						.rotate(-90)
						.duration('1.5s')
					.pop()
				.pop()
			.pop()          
		.pop()	  
	.end(); 	        
	    // End Animation 2 
		 
	
	    // Animacion 3 
	move('caja_animacion3')
		.set('visibility','visible')
		.duration('48s')
		.then()
			.set('background-position','0 0')
			.duration('2s')
			.ease('out')
			.then()
				.y(50)
				.duration('1s')
				.then()
					.x(-500)
					.duration('7s')
					.then()
						.ease('in')
						.y(65)
						.x(-50)
						.rotate(-90)
						.duration('1s')
						.then()
							.x(5)
							.y(-10)
							.set('background-position', '-60px')
							.duration('1s')
						.pop()	
					.pop()
				.pop()
			.pop()    
		.pop()  
	.end();
        // End Animacion 3 
        
    // Animacion 4 
	move('caja_animacion4')
		.set('visibility','visible')
		.duration('62s')
		.then()
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
		.pop()  	
	.end();
        // End Animacion 4 
        
        
    // Animacion 5 //
	move('caja_animacion5')
		.set('visibility','visible')
		.duration('72s')
		.then()
			.set('background-position','0 0')
			.duration('2s')
			.ease('out')
			.then()
				.y(48)
				.duration('1s')
				.then()
					.x(570)
					.duration('8s')
					.then()
						.ease('in')
						.y(103)
						.x(40)
						.rotate(90)
						.duration('2s')
						.then()
							.x(5)
							.y(-15)
							.set('background-position', '60px')
							.duration('1s')
						.pop()	
					.pop()
				.pop()
			.pop()
		.pop()
	.end(); 
        // End Animacion 5 //
        
        
	if(lado){
		// *********** Animacion 6 ********** //
		
		//    =========== Caja 1 ========== //
		
		move('caja1_animacion6')
			.set('visibility','visible')
			.duration('88s')
			.then()
				.set('background-position','0 0')
				//.y(80)
				.duration('1.5s')
				.ease('out')
				.then()
					.y(48)
					.duration('1s')
					.then()
						.x(250)
						.duration('5s')
						.then()
							.x(100)
							.y(60)
							.rotate(90)
							.duration('1.5s')
						.pop()
					.pop()
				.pop()
			.pop()    
		.end();
		//    =========== End Caja 1 ========== //
		lado=false;
	}else{
		//    =========== Caja 2 ========== //
		move('caja2_animacion6')
			.set('visibility','visible')
			.duration('88s')
			.then()
				.set('background-position','0 0')
				.duration('1.5s')
				.ease('out')
				.then()
					.y(48)
					.duration('1s')
					.then()
						.x(-250)
						.duration('5s')
						.then()
							.x(-100)
							.y(60)
							.rotate(-90)
							.duration('1.5s')
						.pop()
					.pop()
				.pop()
			.pop()    
		.end();
		//    =========== End Caja 2 ========== */
		lado=true;
	}
        
		
	//setTimeout(myfunction, 97000);
	setTimeout(myfunction, 97000);
	setTimeout(resetAnimation1, 37000)
	setTimeout(resetAnimation2, 48000)
	setTimeout(resetAnimation3, 62000)
	setTimeout(resetAnimation4, 72000)
	setTimeout(resetAnimation5, 88000)
	setTimeout(resetAnimation6, 88000)
	
	

	
	
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
	.set('background-position','0 -50px')
	.duration('0s')
	.end();
}

function resetAnimation3() { 
	move('caja_animacion3')
	.translate(0,0)
	.set('background-position','0 -50px')
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
	.set('background-position','0 -50px')
	.duration('0s')
	.end();
}

function resetAnimation6() { 

	if(lado){
		move('caja1_animacion6')
		.translate(0,0)
		.set('background-position','0 -50px')
		.duration('0s')
		.end();
	
	}else{
		move('caja2_animacion6')
		.translate(0,0)
		.set('background-position','0 -50px')
		.duration('0s')
		.end();
	}
}






















