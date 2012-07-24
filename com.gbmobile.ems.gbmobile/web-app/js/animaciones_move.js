


/**/
var i=0;

addEventListener('DOMContentLoaded', 
	function animation()
	{
		do
		{
			myfunction()
			//console.log('hello' + i);
			//pausecomp(1000)
		}while(++i<2);
	}, 0);


function pausecomp(ms) {
	ms += new Date().getTime();
	while (new Date() < ms){}
} 




function myfunction()
{
	console.log('hello'+i);
		move('foco')
				.y(130)
				.duration('4s')
			.end();
			move('caja1')
				.delay('4s')
				.x(-240)
				.ease('in')
				.duration('5s')
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
				.pop()
			.end();
	
}




/*

addEventListener('DOMContentLoaded', 
		function myfunction(){
			move('foco')
				.y(130)
				.duration('4s')
			.end();
			move('caja1')
				.delay('4s')
				.x(-240)
				.ease('in')
				.duration('5s')
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
				.pop()
			.end();
		}, 0);

*/














/*
setTimeout(
	function(){
		move('foco')
			.y(130)
		    .duration('4s')
		.end();
		move('caja1')
			.delay('4s')
			.x(-240)
		    .ease('in')
		    .duration('5s')
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
			.pop()
		.end();
	}, 2000);*/

