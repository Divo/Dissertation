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

function Properties(softSize, hardSize, dimension, keys, types) {
	if ( !(this instanceof arguments.callee) ) 
   		throw new Error("Constructor called as a function");

	this.softSize = softSize;
	this.hardSize = hardSize; 
	this.dimension = dimension;
	this.keys = keys;
	this.types = types;
}

	var chartPropertiesList = new Array(0);

	chartPropertiesList[charts.piechart().title()] = [charts.piechart(), new Properties(12, 12, 2, null, ["categorical", "quantitative"]) ];
	chartPropertiesList[charts.barchart().title()] = [charts.barchart(), new Properties(50, 100000, 2, null, ["categorical", "quantitative"]) ];
	chartPropertiesList[charts.linechart().title()] = [charts.linechart(), new Properties(100000, 100000, 2, null, ["quantitative", "quantitative"]) ];
	chartPropertiesList[charts.scatterplot().title()] = [charts.scatterplot(), new Properties(50, 50, 3, null, ["categorical", "quantitative", "quantitative"]) ];
	//chartPropertiesList["scatterplot2D"]

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

	//redo this
	this.size = data.length;
	this.dimension = this.countProperties(this._row);
	this.keys = d3.keys(this._row);
	this.types = this.determineTypes();

	this.properties = new Properties(this.size, this.size, this.dimension, this.keys, this.types);

}

Classifier.prototype.getProperties = function() {
	return this.properties;
}


//Adding functions to the prototype limits access permissions but is more efficient

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

//Very basic function to check if "Date" is in the keys
Classifier.prototype.containsDate = function (){
	for(var i = 0; i < this.keys.length; i++) {
		if(this.keys[i].toUpperCase() === "DATE") {
			return i;
		}
	}
	return null;
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

	var date = this.containsDate();
	if(date != null) {
		result[date] = "quantitative";
	}
	return result;
}

//Return [name, rank] list of charts
Classifier.prototype.rankCharts = function() {
	var result = new Array(0);
	for(key in this.getChartPropertiesList()) {
		var rank = this._rankChart(this.properties, this.getChartPropertiesList()[key][1])
		result.push([key, rank]);	
	}

	return result;

}

//Return most suitable chart
Classifier.prototype.selectChart = function() {
	var ranks = this.rankCharts();
	var max = 0;
	var result = null; //Function pointer
	for(var i = 0; i < ranks.length; i++){
		var rank = ranks[i][1];
		if(max < rank) {
			max = rank;
			result = ranks[i][0];
		}
	}

	return this.getChartPropertiesList()[result][0];
}

//Return all charts along with their score
Classifier.prototype.selectCharts = function() {
	var ranks = this.rankCharts();
	var charts = this.getChartPropertiesList();
	for(var i = 0; i < ranks.length; i++) {
		//Data structures are getting messy
		ranks[i] = ([ranks[i][1], charts[ranks[i][0]] [0]]);
	}

	return ranks;
}

Classifier.prototype.getChartPropertiesList = function() {
	return chartPropertiesList;

}

//for debugging
Classifier.prototype.getChartProperties = function(chart) {
	if(chart in this.getChartPropertiesList()) {
		return this.getChartPropertiesList()[chart][1];
	}
	return null;
}

Classifier.prototype._rankChart = function(dataProps, chartProps) {
	if(dataProps.dimension == chartProps.dimension) {
		//Check if chart and data contain the same types of data
		for(var i=0; i < dataProps.types.length; i++) {
			//Match up the data types. Can have quantities as categories but not the other way around.
			if(dataProps.types[i] !== "quantitative"){
				if(chartProps.types.indexOf(dataProps.types[i]) <= -1) { 
					return 0;
				}	
			}
		}

		//Check soft size limits
		if(dataProps.softSize <= chartProps.softSize) {
			return 10;
		} else if(dataProps.hardSize <= chartProps.hardSize) {
			return 5;
		} else {
			return 0;
		}

	} else {
		return 0;
	}
}

