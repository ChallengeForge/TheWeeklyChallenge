var options = {
    series: [{
    name: 'Total Score',
    data: [2564, 2274, 1870, 1200, 1200, 1100, 1000, 900, 562, 456, 400, 345, 300]
  }],
   
  chart: {
    height: 350,
    type: 'bar',
  },
  plotOptions: {
    bar: {
      borderRadius: 10,
      columnWidth: '50%',
    }
  },
  dataLabels: {
    enabled: false
  },
  stroke: {
    width: 2
  },
  
  grid: {
    row: {
      colors: ['#fff', '#f2f2f2']
    }
  },
  xaxis: {
    labels: {
      rotate: -45
    },
    categories: ['Laurent ', 'jaldhar Vyas', 'Ryan', 'Mark Chang', 'Pete Houstan', 'Jublie',
      'Feng Chang', 'Pears', 'Himanshi', 'Melvin', 'Merlin', 'Juli', 'Abigail'
    ],
    tickPlacement: 'on'
  },
  yaxis: {
    title: {
      text: 'Total Score',
    },
  },
  fill: {
    type: 'gradient',
    gradient: {
      shade: 'light',
      type: "horizontal",
      shadeIntensity: 0.25,
      gradientToColors: undefined,
      inverseColors: true,
      opacityFrom: 0.85,
      opacityTo: 0.85,
      stops: [50, 0, 100]
    },
  }
  };

  var barChart = new ApexCharts(document.querySelector("#bar-chart"), options);
  barChart.render();


  var options2 = {
    series: [{
    name: 'Total Solutions',
    data: [2564, 2274, 1870, 1200, 1200, 1100, 1000, 900, 562, 456, 400, 345, 300]
  }],
   
  chart: {
    height: 350,
    type: 'bar',
  },
  plotOptions: {
    bar: {
      borderRadius: 10,
      columnWidth: '50%',
    }
  },
  dataLabels: {
    enabled: false
  },
  stroke: {
    width: 2
  },
  
  grid: {
    row: {
      colors: ['#fff', '#f2f2f2']
    }
  },
  xaxis: {
    labels: {
      rotate: -45
    },
    categories: ['Laurent ', 'Rohit Vyas', 'Ryan', 'Mark Chang', 'Pete Houstan', 'Jublie',
      'Feng Chang', 'Pears', 'Himanshi', 'Melvin', 'Merlin', 'Juli', 'Abigail'
    ],
    tickPlacement: 'on'
  },
  yaxis: {
    title: {
      text: 'Total Solutions',
    },
  },
  fill: {
    type: 'gradient',
    gradient: {
      shade: 'light',
      type: "horizontal",
      shadeIntensity: 0.25,
      gradientToColors: undefined,
      inverseColors: true,
      opacityFrom: 0.85,
      opacityTo: 0.85,
      stops: [50, 0, 100]
    },
  }
  };
  var barChart2 = new ApexCharts(document.querySelector("#bar2-chart"), options2);
  barChart2.render();

  var options3 = {
    series: [4657, 13505, 7837],
    chart: {
    width: 380,
    type: 'pie',
  },
  labels: ['Blog', 'Perl', 'Raku'],
  responsive: [{
    breakpoint: 480,
    options: {
      chart: {
        width: 200
      },
      legend: {
        position: 'bottom'
      }
    }
  }]
  };

  var piechart = new ApexCharts(document.querySelector("#piechart"), options3);
  piechart.render();




