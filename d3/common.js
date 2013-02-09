//Methods to determine attributes of data
function isNumber(n) {
	return !isNaN(parseFloat(n)) && isFinite(n);
}

var containerDimensions = {width: 900, height: 400},
		margins = {top: 30, right:20, bottom: 40, left: 100},
		chartDimensions = {
			width : containerDimensions.width - margins.left - margins.right,
			height : containerDimensions.height - margins.top - margins.bottom
		};