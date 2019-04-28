function DrawLineChart(data,n,title)

{

var margin = {top: 50, right: 50, bottom: 50, left: 50}
  , width = window.innerWidth - margin.left - margin.right // Use the window's width 
  , height = (window.innerHeight - margin.top - margin.bottom)/2; // Use the window's height




  var div = d3.select("body").append("div")
        .attr("class", "tooltip")
        .style("opacity", 0);
// 2. Use the margin convention practice 


var startSpace=(width + margin.left + margin.right)/(n*2);
// The number of datapoints
console.log(n);

var karakter=data.map(function (d) { return d._Karakter; });
// 5. X scale will use the index of our data
var xScale = d3.scaleBand()
    .domain(karakter)
    .range([0,width]);
    

// 6. Y scale will use the randomly generate number 
var yDomain = d3.max(data, function (d) { return d._Adet; });
var yScale = d3.scaleLinear()
    .domain([0, yDomain+1]) // input 
    .range([height, 0]); // output 

// 7. d3's line generator
//var line = d3.line()
 // .x(function(d) { return d._Karakter; }) // set the x values for the line generator
  // .y(function(d) { return d._Adet; }); // set the y values for the line generator 
   //.curve(d3.curveMonotoneX); // apply smoothing to the line

// 8. An array of objects of length N. Each object has key -> value pair, the key being "y" and the value is a random number
//var dataset = d3.range(n).map(function(data) { return {"_Adet": d3.randomUniform(1)() } })

// 1. Add the SVG to the page and employ #2
var svg = d3.select("body").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

svg.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text(""+title+"");

// 3. Call the x axis in a group tag
svg.append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(d3.axisBottom(xScale)); // Create an axis component with d3.axisBottom

// 4. Call the y axis in a group tag
svg.append("g")
    .attr("class", "y axis")
    .call(d3.axisLeft(yScale)); // Create an axis component with d3.axisLeft

// 9. Append the path, bind the data, and call the line generator 
//svg.append("path")
  //.datum(data) // 10. Binds data to the line 
  // .attr("class", "line") // Assign a class for styling 
 //  .attr("d", line); // 11. Calls the line generator 

// 12. Appends a circle for each datapoint 
svg.selectAll(".dot")
    .data(data)
    .enter().append("circle") // Uses the enter().append() method
    .attr("class", "dot") // Assign a class for styling
    .attr("cx", function(d) { return xScale(d._Karakter)+startSpace})
    .attr("cy", function(d) { return yScale(d._Adet) })
    .attr("r", 7)
     .on("mouseover", function (d) {
            d3.select(this).style("fill", "#ff9933");
            div.transition()
                .duration(500)
                .style("opacity", .9);
            div.html(d._Karakter+ " : "+ d._Adet+" Adet")
                .style("left", (d3.event.pageX) + "px")
                .style("top", (d3.event.pageY - 28) + "px")
        })
        .on("mousemove", function (d) {
            div.transition()
                .duration(500)
                .style("opacity", .9);
            div.html(d._Karakter +" : "+ d._Adet+" Adet")
                .style("left", (d3.event.pageX) + "px")
                .style("top", (d3.event.pageY - 28) + "px");
        })
        .on("mouseout", function (d) {
            d3.select(this).style("fill", function (d) {
                if (d._Adet < 0)
                    return "#cc0000";
                else
                    return "#000000";


            });
            div.transition()
                .duration(500)
                .style("opacity", 0);
        });


  

      }