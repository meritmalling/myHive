$ (function(){

  $('.js-month').on('click', function(e){
    e.preventDefault();
    window.location.href = "/beekeeping?q=" + $('#q').val();
  });

  $(document).ready(function(){
    $('#month-text').append(gon.monthinfo)
    console.log(gon.monthinfo)
  });

  // $('.js-month').on('click', function(e) {
  //     e.preventDefault()
  //     var dropdown = $('.select-dropdown').val()

   //   $.ajax({
   //   type: "POST",
   //   url: '/beekeeping'
   //   data: dropdown
   //    });
   // });




  // $('.js-month').on('click', function(e) {
  //     e.preventDefault()

  //     $('#month-text').val()

  //     $('.select-dropdown').val()

//     var dropdown = $('.select-dropdown').val()
//     console.log($('.select-dropdown').val())
//     var myUrl = "http://www.utahcountybeekeepers.org/" + dropdown + ".html";

//   // $.get(myUrl, function(data){
//   //   console.log(data);
//   // })


// $.ajax({
//   type: 'GET',
//   url: myUrl,
//   datatype: 'html',
//   sucess: function(result){
//     console.log(result)
//   },
// })



//     });


  $('#myModal').on('hidden.bs.modal', function() {
      $(this).removeData('bs.modal');
  });

  $(document).ready(function() {
   $('select').material_select();
});

   $(document).ready(function(){
    $('.modal-trigger').leanModal();
  });

   $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

  if(gon && gon.inspections) {

var temperment =  gon.inspections.map(function(child){
return parseInt(child.temperment);
});

var layingPattern =  gon.inspections.map(function(child){
return parseInt(child.laying_pattern);
});

var cappedBrood =  gon.inspections.map(function(child){
return parseInt(child.capped_brood);
});

var uncappedBrood =  gon.inspections.map(function(child){
return parseInt(child.uncapped_brood);
});

var population =  gon.inspections.map(function(child){
return parseInt(child.population);
});

var droneCells =  gon.inspections.map(function(child){
return parseInt(child.drone_cells);
});

var dronePopulation =  gon.inspections.map(function(child){
return parseInt(child.drone_population);
});

var honey =  gon.inspections.map(function(child){
return parseInt(child.honey);
});

var nectar =  gon.inspections.map(function(child){
return parseInt(child.nectar);
});

var pollen =  gon.inspections.map(function(child){
return parseInt(child.pollen);
});

var temp =  gon.inspections.map(function(child){
return parseInt(child.temp);
});

var windSpeed =  gon.inspections.map(function(child){
return parseInt(child.wind_speed);
});

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
    data2 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : layingPattern
      }
    ]
  };
    data3 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : cappedBrood
      }
    ]
  };
    data4 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : uncappedBrood
      }
    ]
  };
    data5 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : population
      }
    ]
  };
    data6 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : droneCells
      }
    ]
  };
    data7 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : dronePopulation
      }
    ]
  };
    data8 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : honey
      }
    ]
  };
    data9 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : nectar
      }
    ]
  };
    data10 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : pollen
      }
    ]
  };
    data11 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : temp
      }
    ]
  };

  data12 = {
    labels : [],
    datasets : [
      {
        fillColor : "rgb(255, 226, 112)",
        strokeColor : "rgb(255, 222, 89)",
        pointColor : "rgb(255, 222, 89)",
        pointStrokeColor : "#fff",
        data : windSpeed
      }
    ]
  };



myNewChart = new Chart($("#canvas").get(0).getContext("2d")).Line(data);
myNewChart = new Chart($("#canvas2").get(0).getContext("2d")).Line(data2);
myNewChart = new Chart($("#canvas3").get(0).getContext("2d")).Line(data3);
myNewChart = new Chart($("#canvas4").get(0).getContext("2d")).Line(data4);
myNewChart = new Chart($("#canvas5").get(0).getContext("2d")).Line(data5);
myNewChart = new Chart($("#canvas6").get(0).getContext("2d")).Line(data6);
myNewChart = new Chart($("#canvas7").get(0).getContext("2d")).Line(data7);
myNewChart = new Chart($("#canvas8").get(0).getContext("2d")).Line(data8);
myNewChart = new Chart($("#canvas9").get(0).getContext("2d")).Line(data9);
myNewChart = new Chart($("#canvas10").get(0).getContext("2d")).Line(data10);
myNewChart = new Chart($("#canvas11").get(0).getContext("2d")).Line(data11);
myNewChart = new Chart($("#canvas12").get(0).getContext("2d")).Line(data12);

}


});

