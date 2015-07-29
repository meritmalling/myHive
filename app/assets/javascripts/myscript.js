$ (function(){

  $('#myModal').on('hidden.bs.modal', function() {
      $(this).removeData('bs.modal');
  });

  data = {
    labels : ["January","February","March","April","May","June","July"],
    datasets : [
      {
        fillColor : "rgba(220,220,220,0.5)",
        strokeColor : "rgba(247,208,53,0)",
        pointColor : "rgba(247,208,53,0)",
        pointStrokeColor : "#fff",
        data : [65,59,90,81,56,55,40]
      }
    ]
  }

  myNewChart = new Chart($("#canvas").get(0).getContext("2d")).Line(data)

});

