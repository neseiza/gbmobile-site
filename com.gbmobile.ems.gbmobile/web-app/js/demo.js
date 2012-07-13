// Generate a random example spline and fancy visualization to help see what the plugin is doing
DEMO = {
	showWaypoints: true,
	showTrail: false
	};
	
function widthPer(perWid) { 
	if($(document).width() >= 500)
		return Math.floor((perWid*$(window).width())/100);
	else
		return perWid;
}
function heightPer(perHei) { 
	if($(document).height() >= 500)
		return Math.floor((perHei*$(window).height())/100);
	else
		return perHei;
}



DEMO.run = function() {
	var rel_posX = 20;
	var rel_posY = 277;
	var maxX = $(document).width() - 100;
	var maxY = $(document).height() - 100;
	
	POS_MAQUINA = $("#banda").position().left+20;
	POS_TUBO = $("#tubo").position().left+5;

	var numPoints = 5;
	var dotsPerSeg = 50;
	var i;

	var points = [];
	console.log('pos: ' + $("#maquina").position().left);
	// Make a random list of waypoints for the animation to follow
	var points = [[POS_MAQUINA,heightPer(-11)],[POS_MAQUINA,heightPer(6)],[POS_MAQUINA-55+rel_posX,heightPer(-11)],[POS_TUBO,heightPer(-13)],[POS_MAQUINA,heightPer(-11)]];
	var box_points = [[POS_MAQUINA+rel_posX,(heightPer(-11)+rel_posY)],[POS_MAQUINA+rel_posX,(heightPer(6)+rel_posY)],[POS_MAQUINA-5,(heightPer(-11)+rel_posY)],[POS_TUBO+rel_posX,(heightPer(-13)+rel_posY)],[POS_MAQUINA+rel_posX,(heightPer(-11)+rel_posY)]];
	// -- Important bit #1: Generate the spline animation object --
	var spline = $.crSpline.buildSequence(points);
	var box_spline = $.crSpline.buildSequence(box_points);
	// Clean up visuals if we've run this once already
	$("#garra").remove();
	$("#caja").remove();
	
	console.log('posicion inicial ' + ($("#maquina").position().left));


	// -- Important bit #2: Actually animate our mover object. --
	$('<div id="caja" />')
		//.spState(1);
		.appendTo($(document.body))
		.animate({ crSpline: box_spline }, 2000, function () {
			// Re-run the demo with a new spline after we're done
			window.setTimeout(function() {
				DEMO.run();
			}, 300);
		});
	$('<div id="garra" />')
		//.spState(1);
		.appendTo($(document.body))
		.animate({ crSpline: spline }, 2000, function () {
			// Re-run the demo with a new spline after we're done
		});
};

$(document).ready(function() {

	POS_MAQUINA = $("#banda").position().left+20;
	POS_TUBO = $("#tubo").position().left+5;

	DEMO.run();
});
