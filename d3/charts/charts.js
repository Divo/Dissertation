/**
Collection of charts implemented as closures


*/


(function() {
   charts = {
      version: "0.1"
   };
   "use strict"; //Does this even have effect here?

   charts.linechart = function() {
      var containerDimensions = {width: 900, height: 400},
   		margins = {top: 30, right:50, bottom: 50, left: 100},
   		chartDimensions = {
   			width : containerDimensions.width - margins.left - margins.right,
   			height : containerDimensions.height - margins.top - margins.bottom
   		},
         xValue = function(d) { return d[0]; },
         yValue = function(d) { return d[1]; },
         xScale = d3.time.scale(),
         yScale = d3.scale.linear(),
         xAxis = d3.svg.axis().scale(xScale).orient("bottom"),
         yAxis = d3.svg.axis().scale(yScale).orient("left")
         area = d3.svg.area().x(X).y1(Y),
         line = d3.svg.line().x(X).y(Y);



  function chart(selection) {
      selection.each(function(data) {


         var keys = d3.keys(data[0]);

           // Convert data to standard representation greedily;
           // this is needed for nondeterministic accessors.
       	data = data.map(function(d, i) {
           	return [xValue.call(data, d, i), yValue.call(data, d, i)];
         	});

         	// Update the x-scale.
        	xScale
           	.domain(d3.extent(data, function(d) { return d[0]; }))
            .range([0, chartDimensions.width]);

         	// Update the y-scale.
         yScale
            .domain([0, d3.max(data, function(d) { return d[1]; })])
             .range([chartDimensions.height, 0]);

         var svg = d3.select(this)
           .append("svg")
            .attr("width", containerDimensions.width)
            .attr("height", containerDimensions.height)
           .append("g")
            .attr("transform", "translate(" + margins.left + "," + margins.top + ")")
            .attr("id", "chart");

         var g = svg.selectAll("line")
            .data([data])
           .enter()
            .append("path")
            .attr("class", "line")
            .attr("d", line);

         svg.append("g").attr("class", "x axis").call(xAxis);
         svg.append("g").attr("class", "y axis").call(yAxis);

         


         svg.select(".x.axis")
             .attr("transform", "translate(0," + yScale.range()[0] + ")")
             	.call(xAxis);

         svg.select(".y.axis")
             	.call(yAxis);

                //Axis labels
         svg.select(".x.axis")
            .append("text")
            .text(keys[0])
            .attr("x", chartDimensions.width / 2)
            .attr("y", margins.bottom * 0.75)
            .attr("text-anchor", "middle");

         svg.select(".y.axis")
            .append("text")
            .text(keys[1])
            .attr("transform", "rotate (-270, 0, 0)") //Flipped so x is y and y is x
            .attr("x", chartDimensions.height / 2)
            .attr("y", margins.left * 0.75)
            .attr("text-anchor", "middle");


    });
  }

  // The x-accessor for the path generator; 
  function X(d) {
    return xScale(d[0]);
  }

  // The x-accessor for the path generator; 
  function Y(d) {
    return yScale(d[1]);
  }

  chart.margin = function(_) {
    if (!arguments.length) return margins;
    margins = _;
    return chart;
  };

  chart.width = function(_) {
    if (!arguments.length) return containerDimensions.width;
    containerDimensions.width = _;
    return chart;
  };

  chart.height = function(_) {
    if (!arguments.length) return containerDimensions.height;
    containerDimensions.height = _;
    return chart;
  };

  chart.x = function(_) {
    if (!arguments.length) return xValue;
    xValue = _;
    return chart;
  };

  chart.y = function(_) {
    if (!arguments.length) return yValue;
    yValue = _;
    return chart;
  };

  return chart;
}



charts.piechart = function(data) {
  "use strict";
  var containerDimensions = {width: 900, height: 400},
    margins = {top: 30, right:50, bottom: 50, left: 100},
    chartDimensions = {
      width : containerDimensions.width - margins.left - margins.right,
      height : containerDimensions.height - margins.top - margins.bottom
    },
        labelValue = function(d) { return d[0]; },
        amountValue = function(d) { return d[1]; },
        outerRadius = Math.min(chartDimensions.width, chartDimensions.height) / 2,
    innerRadius = 0,
    pie = d3.layout.pie().value(function(d) { return d[1]}),
    arc = d3.svg.arc(),
        fill = d3.scale.category20();

  function chart(selection) {
    selection.each(function(data) {


      var keys = d3.keys(data[0]); //Pull axis labels off data

          // Convert data to standard representation greedily;
          // this is needed for nondeterministic accessors (Array style access).
      data = data.map(function(d, i) {
         return [labelValue.call(data, d, i), amountValue.call(data, d, i)];
         });

      arc
        .innerRadius(innerRadius)
        .outerRadius(outerRadius);

      var svg = d3.select(this)
        .append("svg")
          .attr("width", containerDimensions.width)
              .attr("height", containerDimensions.height)
              .append("g")
              .attr("transform", "translate(" + (margins.left + (chartDimensions.width / 2)) + "," + (margins.top + (chartDimensions.height /2)) + ")")
              .attr("id", "chart");

      var g = svg.selectAll(".arc")
         .data(pie(data))
        .enter()
         .append("g")
         .attr("class", "arc");

      g.append("path")
         .attr("d", arc)
         .style("fill", function(d, i) { return fill(i); });

      g.on("mouseover.tooltip", function(d) {
        svg.append("text")
         .text(keys[0] + ": " + d.data[0] + " " + keys[1] + ": " +d.data[1]) //Need to go into data as arc objects are being passed in
         .attr("class", "label")
         .attr("x", 0)
         .attr("y", chartDimensions.height / 2 + margins.bottom / 2)
         .attr("text-anchor", "middle");
        });

      g.on("mouseout.tooltip", function(d) {
         svg.select(".label").remove();
         });

    });
  }


    chart.margin = function(_) {
      if (!arguments.length) return margins;
      margins = _;
      return chart;
    };

    chart.width = function(_) {
      if (!arguments.length) return containerDimensions.width;
      containerDimensions.width = _;
      return chart;
    };

    chart.height = function(_) {
      if (!arguments.length) return containerDimensions.height;
      containerDimensions.height = _;
      return chart;
    };


    chart.label = function(_) {
      if(!arguments.length) return labelValue;
      labelValue = _;
      return chart;
    }

    chart.amount = function(_) {
      if(!arguments.length) return amountValue;
      amountValue = _;
      return chart;
    }


  return chart;
  
}



charts.barchart = function() {
   var containerDimensions = {width: 900, height: 400},
   margins = {top: 30, right:50, bottom: 50, left: 100},
   chartDimensions = {
      width : containerDimensions.width - margins.left - margins.right,
      height : containerDimensions.height - margins.top - margins.bottom
   },
      xValue = function(d) { return d[0]; },
      yValue = function(d) { return d[1]; },
      xScale = d3.scale.linear(),
      yScale = d3.scale.linear(),
      xAxis = d3.svg.axis().scale(xScale).orient("bottom").ticks(0),
      yAxis = d3.svg.axis().scale(yScale).orient("left"),
      fill = d3.scale.category20b();



   function chart(selection) {
      selection.each(function(data) {


         var keys = d3.keys(data[0]); //Pull axis labels off data

         // Convert data to standard representation greedily;
         // this is needed for nondeterministic accessors (Array style access).
         data = data.map(function(d, i) {
            return [xValue.call(data, d, i), yValue.call(data, d, i)];
         });


         // Update the x-scale.
         xScale
            .domain([0, data.length])
            .range([0, chartDimensions.width]);

         // Update the y-scale.
         yScale
            .domain([0, d3.max(data, function(d) { return d[1]; })])
            .range([chartDimensions.height, 0]);

        // Select the svg element, if it exists.
        var svg = d3.select(this)
          .append("svg")
            .attr("width", containerDimensions.width)
            .attr("height", containerDimensions.height)
          .append("g")
            .attr("transform", "translate(" + margins.left + "," + margins.top + ")")
            .attr("id", "chart");


        


         var g = svg.selectAll("rect")
            .data(data)
          .enter()
            .append("rect")
            .attr("x", function(d, i) { return xScale(i)} )
            .attr("y", function(d) { return yScale(d[1]) })
            .attr("height", function(d) { return chartDimensions.height - yScale(d[1])})
            .attr("width", chartDimensions.width / data.length)
            .attr("fill", function(d, i) { return fill(d[1])});


         svg.append("g").attr("class", "x axis").call(xAxis);
         svg.append("g").attr("class", "y axis").call(yAxis);

         // Update the x-axis.
         svg.select(".x.axis")
            .attr("transform", "translate(0," + yScale.range()[0] + ")")
            .call(xAxis);

         //Axis labels
         svg.select(".x.axis")
            .append("text")
            .text(keys[0])
            .attr("x", chartDimensions.width / 2)
            .attr("y", margins.bottom * 0.75)
            .attr("text-anchor", "middle");

         svg.select(".y.axis")
            .append("text")
            .text(keys[1])
            .attr("transform", "rotate (-270, 0, 0)") //Flipped so x is y and y is x
            .attr("x", chartDimensions.height / 2)
            .attr("y", margins.left * 0.75)
            .attr("text-anchor", "middle");

         g.on("mouseover.tooltip", function(d, i) {
            svg.select(".x.axis").append("text") //Append label to axis to align text
            .text(keys[0] + ": " + d[0] + " " + keys[1] + ": " + d[1])
            .attr("class", "label")
            .attr("x", 0)
            .attr("y", margins.bottom * 0.75);
        });


         g.on("mouseout.tooltip", function(d) {
            svg.select(".label")
            .remove();
        });





    });
  }


   chart.margins = function(_) {
      if (!arguments.length) return margins;
      margins = _;
      return chart;
   };

   chart.width = function(_) {
      if (!arguments.length) return containerDimensions.width;
      containerDimensions.width = _;
      return chart;
   };

   chart.height = function(_) {
      if (!arguments.length) return containerDimensions.height;
      containerDimensions.height = _;
      return chart;
   };

   chart.x = function(_) {
      if (!arguments.length) return xValue;
      xValue = _;
      return chart;
   };

   chart.y = function(_) {
      if (!arguments.length) return yValue;
      yValue = _;
      return chart;
   };

   return chart;
}


})();