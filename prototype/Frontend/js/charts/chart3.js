google.charts.load('current', { packages: ['corechart'] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Categories', 'Task Completed'],
    ['Old members', 7],
    ['New Members', 5],
    ['Pending Members', 2],
    ['Visitors', 2],
    ['Testers', 3],
  ]);

  var options = {
    title: 'Completion Rates',
    pieHole: 0.3,
  };

  var chart = new google.visualization.PieChart(
    document.getElementById('donutchart2')
  );
  chart.draw(data, options);
}