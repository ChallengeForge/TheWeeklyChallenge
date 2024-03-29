google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ["Javascript", "Hours per Day"],
    ["Dancer2", 10],
    ["Documentation", 7],
    ["UI/UX Design", 5],
    ["Protyping", 6],
    ["Mysql", 4],
  ]);

  var options = {
    title: "My Contributions",
    pieHole: 0.3,
  };

  var chart = new google.visualization.PieChart(document.getElementById("my_contributions"));

  // Redraw the chart when the window size changes
  window.addEventListener('resize', function(){
    chart.draw(data, options);
  });

  chart.draw(data, options);
}
