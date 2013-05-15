
function createDiv(id) {
	var chart = document.createElement("div");
	chart.id = "chart" + id;
	return chart;
}   

function labelSuitability(score) {
	var rating;
	if(score === 10) {
		rating = "Very suitable: " + score;
	} else {
		rating = "Somewhat suitable: " + score;
	}
	return rating;
}

function createChartArea(id, chart) {
	var div = createDiv(id);
	div.innerHTML = labelSuitability(chart);
	document.getElementById("chart_area").appendChild(div);

	return div;

}

function createParseDate(classifier) {
	var result = function(_) { return _; }

	if(classifier.containsDate() != null) {
		result = function(d) {
			var format = d3.time.format("%d %m %Y");
			d = new Date(Date.parse(d));
			return d;
		}
	}

	return result;
}


function pickChart(data) {
	var classifier = new Classifier(data);
	var keys = classifier.properties.keys;
	//var chart = charts.scatterplot();
	var chart = classifier.selectChart();
	var charts = classifier.selectCharts();

		//Sort array, highest score first
	charts.sort(function(a, b){ return b[0] - a[0] });


	keys = matchKeys(classifier.getChartProperties(chart.title()).types, classifier.getProperties().types, keys);


	//console.log(classifier.properties);


	if(classifier.properties.dimension === 2) {

		for(var i = 0; i < charts.length; i++) {
			//If score > 0
			if(charts[i][0] > 0) {
				var current_chart = charts[i][1];
				var div = createChartArea(i, charts[i][0]);
				var parseDate = createParseDate(classifier);

				
				d3.select(div)
					.datum(data)
				  .call(current_chart
					.label(function(d) { return parseDate(d[keys[0]]); })
					.amount(function(d) { return +d[keys[1]]; }) );
			}

		}

	} else if (classifier.properties.dimension === 3) {

		for(var i = 0; i < charts.length; i++) {
			//If score > 0
			if(charts[i][0] > 0) {
				var current_chart = charts[i][1];
				var div = createChartArea(i, charts[i][0]);
				var parseDate = createParseDate(classifier);

				

			d3.select(div)
				.datum(data)
	      	  .call(current_chart
				.label(function(d) { return parseDate(d[keys[0]]); })
				.amount(function(d) { return +d[keys[1]]; }) 
				.amount2(function(d) { return +d[keys[2]]; }) )
			}

		}

	} else if (classifier.properties.dimension === 4) {

		for(var i = 0; i < charts.length; i++) {
			//If score > 0
			if(charts[i][0] > 0) {
				var current_chart = charts[i][1];
				var div = createChartArea(i, charts[i][0]);
				var parseDate = createParseDate(classifier);

			d3.select(div)
				.datum(data)
	      	  .call(current_chart
				.label(function(d) { return parseDate(d[keys[0]]); })
				.amount(function(d) { return +d[keys[1]]; }) 
				.amount2(function(d) { return +d[keys[2]]; })
				.amount3(function(d) { return +d[keys[3]]; }) )
			}
		}
	}
}

//This method got out of hand
//Match the data type to the keys
function matchKeys(chartTypes, dataTypes, keys) {
	//Clone input to mess with
	var ct = chartTypes.slice(0); 
	var dt = dataTypes.slice(0);
	var k = keys.slice(0);

	var result = new Array(keys.length);
	for(var i = 0; i < result.length; i++) {
		var type = ct[i];
		for(var j = 0; j < dt.length; j++) {
			if(type === dt[j]) {
				delete dt[j]
				result[i] = k[j];
				delete k[j];
				break;
			}
		}
	}

	return result;

}
