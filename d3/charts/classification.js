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

//http://blog.visual.ly/maximum-elements-for-visualization-types/

function Properties(size, dimension, keys, types) {
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");

	this.size = size;
	this.dimension = dimension;
	this.keys = keys;
	this.types = types;
}

	var properties = new Array(0);

	properties["piechart"] = [charts.piechart(), new Properties(12, 2, null, ["categorical", "quantitative"]) ];
	properties["barchart"] = [charts.barchart(), new Properties(50, 2, null, ["categorical", "quantitative"]) ];
	properties["linechart"] = [charts.linechart(), new Properties(1000, 2, null, ["quantitative", "quantitative"]) ];
	properties["scatterplot"] = [charts.scatterplot(), new Properties(50, 3, null, ["categorical", "quantitative", "quantitative"]) ];

	//Will need to do something about the lack of labels.
	//properties[charts.scatterplot()] = new Properties(50, 2, null, ["quantitative", "quantitative"]);
	//properties["scatterplot"] = [charts.scatterplot(), new Properties(50, 3, null, ["categorical", "quantitative", "quantitative"])];



/*REDUNEDNTDataset.prototype.toString = function() {
	return "Size: ";//+ this.size + " Dimensions: " + this.dimensions = " Keys: " + this.keys + " Types: " this.types; 
}*/



//http://phrogz.net/JS/classes/OOPinJS.html
function Classifier(data){
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");

   	//Underscore is the convention for private in this language...
	this._row = data[0];

	this.size = data.length;
	this.dimension = this.countProperties(this._row);
	this.keys = d3.keys(this._row);
	this.types = this.determineTypes();

	this.properties = new Properties(this.size, this.dimension, this.keys, this.types);

}


//Adding functions to the prototype limits access permissions but is more efficient
Classifier.prototype.test = function() {
	console.log("Hello");
}

Classifier.prototype.countProperties = function(obj) { 
	var count = 0;

	for(var prop in obj) {
		if(obj.hasOwnProperty(prop))
			++count;
	}
	return count;
}

Classifier.prototype.isNumber = function(n) {
	return !isNaN(parseFloat(n)) && isFinite(n);
}

Classifier.prototype.checkDate = function(d) {
	var format = d3.time.format("%d %m %Y");
	d = new Date(Date.parse(d));
	return format(d);
}


Classifier.prototype.determineTypes = function() {
	var result = new Array(this.dimension);

	for(var i=0; i < this.dimension; i++) {

		var element = this._row[this.keys[i]];
		if (this.isNumber(element)) {
			result[i] = "quantitative";
		} else { //if element is categorical or nominal
			result[i] = "categorical";
		}

	}
	return result;
}

Classifier.prototype.getProperties = function() {
	return this.properties; 
}

/*Classifier.prototype.selectChart = function() {
	var rankings = new Array(0);

	rankings.push([charts.piechart(), this._rankChart(this.properties, charts.piechart().properties()) ]);
	rankings.push([charts.barchart(), this._rankChart(this.properties, charts.barchart().properties()) ]);

	var max = 0;
	var result = 0; //This is probably flawed
	for(var i=0; i < rankings.length; i++) {
		if(max < rankings[i][1]) {
			max = rankings[i][1];
			result = i;
		}
	}
	return rankings[result][0];
}*/

Classifier.prototype.selectChart = function() {
	var max = 0;
	var result = null; //Function pointer
	for(key in this.chartProperties()) {
		var rank = this._rankChart(this.properties, this.chartProperties()[key][1]);
		if(max < rank) {
			max = rank;
			result = key;
		}
	}
	return this.chartProperties()[result][0];
}

Classifier.prototype.chartProperties = function() {
	return properties;

}

Classifier.prototype.getChartProperties = function(chart) {
	if(chart in this.chartProperties()) {
		return this.chartProperties()[chart][1];
	}
	return null;
}

Classifier.prototype._rankChart = function(dataProps, chartProps) {
	if(dataProps.dimension == chartProps.dimension) {
		//Check if chart and data contain the same types of data
		for(var i=0; i < dataProps.types.length; i++) {
			if(chartProps.types.indexOf(dataProps.types[i]) <= -1) { 
				return 0;
			}
		}

		if(dataProps.size <= chartProps.size) {
			return 10;
		} else {
			return 5;
		}

	} else {
		return 0;
	}
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


	