var lado = true;

addEventListener('DOMContentLoaded', 
	function animations(){		
		playAnimations()		
	}, 0);

function playAnimations(){
		//Animation 1
	move('foco')
		.ease('linear')
		.y(130)
		.duration('2s')
	.end();
	
	
	move('caja1')
		.ease('linear')
		.set('visibility', 'visible')
		.duration('3s')
		.then()
			.x(-240)
			.duration('4s')
		.pop()
	.end(); //total time:7s
	
	
	move('caja2')
		.ease('linear')
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
		.ease('linear')
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
		.ease('linear')
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
		.ease('linear')
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
		.ease('linear')
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
		.ease('linear')
		.set('visibility','visible')
		.duration('48s')
		.then()
			.y(98)
			.rotate(90)
			.duration('1s')
			.then()
				.y(515)
				.duration('7s')
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
        // End Animacion 3         
        
        // Animacion 4 
	move('caja_animacion4')
		.set('visibility','visible')
		.ease('linear')
		.duration('62s')
		.then()
			.y(98)
			.rotate(90)
			.duration('1s')
			.then()
				.y(-450)
				.duration('3s')
				.then()
					.x(50)
					.y(-25)
					.rotate(90)
					.duration('.5s')
				.pop()
			.pop()
		.pop()  	
	.end();
        // End Animacion 4         

        // Animacion 5
	move('caja_animacion5')
		.ease('linear')
		.set('visibility','visible')
		.duration('72s')
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
					.rotate(190)
					.duration(1200)
				.pop()
			.pop()
		.pop()
	.end(); 
        // End Animacion 5 
        
        //Animation 6
	if(lado){		
		//    =========== Caja 1 ========== //		
		move('caja1_animacion6')
			.ease('linear')
			.set('visibility','visible')
			.duration('88s')
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
			.ease('linear')
			.set('visibility','visible')
			.duration('88s')
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
		//End Animation 6

	setTimeout(playAnimations, 97000)
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
