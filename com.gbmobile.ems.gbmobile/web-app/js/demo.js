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

	var minX = 200;
	var minY = 200;
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
	var points = [[POS_MAQUINA,heightPer(-11)],[POS_MAQUINA,heightPer(6)],[POS_MAQUINA-25,heightPer(-11)],[POS_TUBO,heightPer(-13)],[POS_MAQUINA,heightPer(-11)]];

	// -- Important bit #1: Generate the spline animation object --
	var spline = $.crSpline.buildSequence(points);
	
	// Clean up visuals if we've run this once already
	$("#garra").remove();
	$(".waypoint").remove();
	$(".path-dot").remove();
	
	console.log('posicion inicial ' + ($("#maquina").position().left));
	
	// Scary-looking stuff to visualize the waypoints and the trail of dots
	// NOT needed for animation
	for (i=0; i<numPoints; i++) {
		$('<div class="waypoint">' + i + '</div>')
			.appendTo($(document.body))
			.css({
				left: points[i][0],
				top: points[i][1],
				display: (DEMO.showWaypoints ? "inline" : "none")
			});

		for (var j=0; j<dotsPerSeg; j++) {
			var t = (i + j/dotsPerSeg) / points.length;
			var pos = spline.getPos(t);
			$('<div class="path-dot" />')
				.appendTo($(document.body))
				.css({
					left: pos.left,
					top: pos.top,
					display: (DEMO.showTrail ? "inline" : "none")
				});
		}
	}

	// -- Important bit #2: Actually animate our mover object. --
	$('<div id="garra" />')
		//.spState(1);
		.appendTo($(document.body))
		.animate({ crSpline: spline }, 2000, function () {
			// Re-run the demo with a new spline after we're done
			
			window.setTimeout(function() {
				DEMO.run();
			}, 300);
		});
};

$(document).ready(function() {
	
	$("#show-trail").click(function () {
		if ($(this).is(":checked")) {
			$(".path-dot").css({display: "inline"});
			DEMO.showTrail = true;
		}
		else {
			$(".path-dot").css({display: "none"});
			DEMO.showTrail = false;
		}
	});

	$("#show-waypoints").click(function () {
		if ($(this).is(":checked")) {
			$(".waypoint").css({display: "inline"});
			DEMO.showWaypoints = true;
		}
		else {
			$(".waypoint").css({display: "none"});
			DEMO.showWaypoints = false;
		}
	});

	$("#show-trail").attr("checked", DEMO.showTrail);
	$("#show-waypoints").attr("checked", DEMO.showWaypoints);
	POS_MAQUINA = $("#banda").position().left+20;
	POS_TUBO = $("#tubo").position().left+5;

	DEMO.run();
});
