google.charts.load('current', { packages: ['corechart'] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Javascript', 'Hours per Day'],
    ['Dancer2', 10],
    ['Documentation', 7],
    ['UI/UX Design', 5],
    ['Protyping', 6],
    ['Mysql', 4],
  ]);

  var options = {
     title: 'General Contributions',
    pieHole: 0.3,
  };

  var chart = new google.visualization.PieChart(
    document.getElementById('general_contributions')
  );
  chart.draw(data, options);
}