// Create a grid based on the values entered for X and Y
var $gridX = $("#gridX");
var $gridY = $("#gridY");

// hide 
$("form span").hide();

function isLengthValid() {
	return parseInt($gridX.val()) >= 4 && 
		parseInt($gridX.val()) <= 30;
}

function isHeightValid() {
	return parseInt($gridY.val()) >= 4 && 
		parseInt($gridY.val()) <= 30;
}

function canSubmit() {
	return isLengthValid() && isHeightValid();
}

function lengthEvent() {
	// find out if length is valid
	if (isLengthValid) {
		// hide hint if valid
		$gridX.next().hide();
	}
	// else show hint
	else $gridX.next().show();
}

function heightEvent() {
	// find out if height is valid
	if (isHeightValid) {
		// hide hint if valid
		$gridY.next().hide();
	}
	// else show hint
	else $gridY.next().show();
}

function enableSubmitEvent() {
	$("submit").prop("disabled", !canSubmit());
}

// when event happens on length
$gridX
	.focus(lengthEvent)
	.keyup(enableSubmitEvent);

// when event happens on height
$gridY
	.focus(heightEvent)
	.keyup(enableSubmitEvent);

enableSubmitEvent();