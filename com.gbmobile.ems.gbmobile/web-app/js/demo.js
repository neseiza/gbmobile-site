// Generate a random example spline and fancy visualization to help see what the plugin is doing
//comment to do push
var points_claw = [];
var points_box = [];

GARRA = {
	showWaypoints: false,
	showTrail: false
};
CAJA = {
	showWaypoints: false,
	showTrail: false
}
	
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

function espacio_x() {
	if($.browser.mozilla == true)
		return 25;
	else
		return 105;
}

function espacio_y() {
	if($.browser.mozilla == true)
		return 25;
	else
		return 93;
}

function starting_values() {
	var rel_posX = 20;
	var rel_posY = 277;
	var maxX = $(document).width() - 100;
	var maxY = $(document).height() - 100;
	
	/*+*** Coordenadas ***/
	points_box = [[POS_MAQUINA+rel_posX,heightPer(-11)+rel_posY],[POS_MAQUINA+rel_posX,heightPer(1)+rel_posY],[POS_MAQUINA-55+rel_posX,heightPer(-14)+rel_posY],[POS_TUBO+rel_posX,heightPer(-14)+rel_posY],[POS_TUBO+40+rel_posX,heightPer(-14)+rel_posY],[POS_MAQUINA+rel_posX,heightPer(-11)+rel_posY]];
	
	points_claw = [[POS_MAQUINA,heightPer(-11)],[POS_MAQUINA,heightPer(1)],[POS_MAQUINA-55,heightPer(-14)],[POS_TUBO,heightPer(-14)],[POS_TUBO+40,heightPer(-14)],[POS_MAQUINA,heightPer(-11)]];
	
}

CAJA.run = function() {

	var box_spline = $.crSpline.buildSequence(points_box);
	// Clean up visuals if we've run this once already
	$("#caja").remove();

	// -- Important bit #2: Actually animate our mover object. --
	$('<div id="caja" />')
		//.spState(1);
		.appendTo($(document.body))
		.animate({ crSpline: box_spline }, 2000, function () {
			// Re-run the GARRA with a new spline after we're done
			window.setTimeout(function() {
				CAJA.run();
			}, 300);
		});
};

GARRA.run = function() {
	
	var spline = $.crSpline.buildSequence(points_claw);
	// Clean up visuals if we've run this once already
	$("#garra").remove();

	$('<div id="garra" />')
		//.spState(1);
		.appendTo($(document.body))
		.animate({ crSpline: spline }, 2000, function () {
			// Re-run the GARRA with a new spline after we're done
			window.setTimeout(function() {
				GARRA.run();
			}, 300);
		});
};

$(document).ready(function() {
	POS_MAQUINA = $("#banda").position().left + espacio_x();
	POS_TUBO = $("#tubo").position().left + espacio_y();
	starting_values();
	GARRA.run();
	CAJA.run();
});
