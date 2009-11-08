$(function () {
	var image_count = $("#mos img").length;
	
	$("#jqueryslider").slider({
		min: 0,
		max: image_count,
		value: image_count 
	});
});