/**
	Functions that attempt to automatically classify the attributes of a dataset.
	Many, many assumptions are made.

	Mazza define a number of steps, the ones of interest are: 1) Data Type 2) Dimensions 
	3) Data structure.

	1) Data Type;
		Quantitative, Ordinal, Nominal. Quantitative if a number, otherwise one of the
		other two. Deciding if data elements are ordinal or nominal appears to be a pretty
		hard problem.
	2) Dimensions:
		Univariate, Bivariate, Trivariate, Multivariate. The simplest was to do this is to 
		simply look at the size of each data element.
		Univariate: One dimension varies with respect to another. Or length = 2
*/

function Classifier(data) {
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");
	var element = data[0];

	this.length = data.length;
	this.keys = d3.keys(this.element);

	this.test = function() {
		return "this is a public function";
	}


	function determine_type(data) {
		for(var i=0; i<data.length; i++) {
			//console.log(data[i]);
			}
		}

	function isNumber(n) {
		return !isNaN(parseFloat(n)) && isFinite(n);
	}


}

(function() {
	classification = {
		version: "0.1"
	};


	var dimensions = {
		Univariate : 2		
	};


	
	
})();