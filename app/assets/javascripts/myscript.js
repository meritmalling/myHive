$ (function(){

  $('#myModal').on('hidden.bs.modal', function() {
      $(this).removeData('bs.modal');
  });

  console.log("gon",gon)
  console.log("gon.inspections",gon.inspections)
  if(gon && gon.inspections) {

  var temperment =  gon.inspections.map(function(child){
    return parseInt(child.temperment);
  });

  console.log('temperment array',temperment)

  data = {
    labels : ["January","February","March","April","May","June","July"],
    datasets : [
      {
        fillColor : "rgba(220,220,220,0.5)",
        strokeColor : "rgba(220,220,220,1)",
        pointColor : "rgba(220,220,220,1)",
        pointStrokeColor : "#fff",
        data : temperment
      }
    ]
  };

myNewChart = new Chart($("#canvas").get(0).getContext("2d")).Line(data);

}
});

