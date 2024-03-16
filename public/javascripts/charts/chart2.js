google.charts.load('current', { packages: ['corechart'] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Categories', 'Tasks taken'],
    ['Old members', 11],
    ['New Members', 10],
    ['Pending Members', 4],
    ['Visitors', 2],
    ['Testers', 3],
  ]);

  var options = {
    title: 'Challenge Participation',
    pieHole: 0.3,
  };

  var chart = new google.visualization.PieChart(
    document.getElementById('donutchart1')
  );
  chart.draw(data, options);
}