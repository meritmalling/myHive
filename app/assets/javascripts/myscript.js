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

  var inspectionDate =  gon.inspections.map(function(child){
    return parseInt(child.inspection_date);
  });

  console.log('temperment array',temperment)

  data = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : temperment
      }
    ]
  };

myNewChart = new Chart($("#canvas").get(0).getContext("2d")).Line(data);

}
});

