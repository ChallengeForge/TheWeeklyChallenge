google.charts.load('current', { packages: ['corechart'] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Categories', 'Hours per Day'],
    ['Old members', 11],
    ['New Members', 5],
    ['Pending Members', 2],
    ['Visitors', 2],
    ['Testers', 3],
  ]);

  var options = {
    title: 'Active Contibutors Count',
    pieHole: 0.3,
  };

  var chart = new google.visualization.PieChart(
    document.getElementById('donutchart')
  );
  chart.draw(data, options);
}
