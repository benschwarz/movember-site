$(function () {
	var image_count = ($("#mos img").length - 1);
	var numbers_to_words = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty-one', 'twenty-two', 'twenty-three', 'twenty-four', 'twenty-five', 'twenty-six', 'twenty-seven', 'twenty-eight', 'twenty-nine', 'thirty', 'thirty-one'];
	
	function updateDayDisplay(number) {
		$("#number-display").text("Day " + numbers_to_words[number]);
	}
	
	$("#slider").slider({
		max: image_count,
		value: image_count,
		slide: function (event, ui) {
			$("#mos img.current").removeClass("current");
			$("#mos img").eq(ui.value).addClass("current");
			updateDayDisplay(ui.value);
		}
	});

	// Show the latest image
	$("#mos img:last").addClass("current");
	updateDayDisplay(image_count);
});