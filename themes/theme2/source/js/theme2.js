function animateSubtitle() {
	var subtitle = $('.js-animate-subtitle');
	var text=subtitle.text().split("").map(function(elem, index) {
		if (elem == " ") {
			// non-breaking space
			return String.fromCharCode(160);
		} else {
			return elem;
		}
	});

	subtitle.text("");
	subtitle.addClass("flash-on");
	subtitle.css({
		cursor: 'pointer'
	});

	var i = 0;
	
	var typing = window.setInterval(addLetter, 200);


	function addLetter() {
		subtitle.text(subtitle.text() + text[i]);
		i += 1;
		if (i == text.length) {
			initFlashing();
			clearInterval(typing);
		}
	}


	function initFlashing() {
		var flashing = false;

		function toggleFlashing() {
			if (flashing) {
				window.clearInterval(flashing);
				flashing = false;
			} else {
				flashing = window.setInterval(flashCursor, 600);
			}
		}

		function flashCursor() {
			subtitle.toggleClass("flash-on");
		}

		toggleFlashing();
		subtitle.click(function(event) {
			toggleFlashing();
		});
	}
}

animateSubtitle();