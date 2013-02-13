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


//http://phrogz.net/JS/classes/OOPinJS.html
function Classifier(data){
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");
	//Private
	var element = data[0];
	function determine_type() {
		console.log(element);
	}

	determine_type();

	//Public
	this.length = data.length;
	this.keys = d3.keys(element);



	/*Function created every time a new classifier is created
	//Function is private
	function determine_type(data) {		
		console.log(keys);
	}*/




}

Classifier.prototype.test = function() {
	console.log("Hello");
}


/*function Classifier(data) {
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");
	var element = data[0];

	this.length = data.length;
	this.keys = d3.keys(this.element);

	determine_type();

	this.test = function() {
		return "this is a public function";
	}


	function determine_type(data) {
		for(var i=0; i<this.length; i++) {
			console.log(data[i]);
			}
		}

	function isNumber(n) {
		return !isNaN(parseFloat(n)) && isFinite(n);
	}


}*/


	