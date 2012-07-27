addEventListener('DOMContentLoaded', 
	function animation()
	{
		
		myfunction()
		
	}, 0);
function myfunction(){

// Animacion 3 
	move('caja_animacion3')
		.set('visibility','visible')
		//.duration('48s')
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
        setTimeout(myfunction, 12300);
        setTimeout(resetAnimation3, 12400);
}

function resetAnimation3() { 
	move('caja_animacion3')
	.translate(0,0)
	.set('background-position','0 -50px')
	.duration('0s')
	.end();
}
