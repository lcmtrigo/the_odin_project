$(document).ready(function () {
	var default_grid_size = 16;
	var page_width = 960;
	var default_box_size = Math.round(page_width/default_grid_size) - 2;

	drawGrid();
	gridHover();

	// make a grid with a default size of 16x16
	function drawGrid() {
		for (var i = 1; i <= Math.pow(default_grid_size, 2); i++) {
		$('.container').append('<div id="page-' 
			+ i + '"class="box"></div>');
		}
		$('.box')
			.width(default_box_size)
			.height(default_box_size);
	}

	// make a square change colour when the mouse hovers on it
	function gridHover() {
		$('.container > div').hover(function() {
			$(this).css('background-color', '#E5155D');
		});
	}
	
	// reset grid button
	$('#resetGrid').click(function() {
		$('.container > div').css('background-color', '#ddd');
	});

	// custom grid button
	$('#customGrid').on('click', function() {
		// // clear the current grid
		$('.container > div').remove();

		// prompt for a grid size
		var new_grid_size = prompt("Define grid size");
		new_grid_size = typeof new_grid_size !== 'undefined' ? new_grid_size : 16;
		var new_box_size = Math.round(page_width/new_grid_size) - 2;

		// // create the new grid with the specified grid size
		function drawGrid(new_grid_size, new_box_size) {
			for (var i = 1; i <= Math.pow(new_grid_size, 2); i++) {
				$('.container').append('<div id="page-' 
				+ i + '"class="box"></div>');
			}
			$('.box')
				.width(new_box_size)
				.height(new_box_size);
		}	

		drawGrid(new_grid_size, new_box_size);
		gridHover();
	});
});