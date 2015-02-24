$(document).ready(function(){
  // $(e).preventDefault();
  console.log("document ready");

  var $body = $("body");
  // sets the day's date at the bottom of viewport
  var $date = $(".date");
  var currentDateString = moment().format('dddd, MMMM Do');
  $date.text(currentDateString);


  var button = $(".pure-button");

  button.on('click', function(e) {
    e.preventDefault();
    var desiredCity = $(".pure-input-rounded").val();
  $.ajax({
    url: "http://api.openweathermap.org/data/2.5/weather",
    data: { q: desiredCity },
    type: "GET",
    dataType: "json"
    }).done(function(data){
      // debugger
      var cityName = data.name;
      var temp = data.main.temp;

      $("#forecast").text("The temperature in " + cityName + " is: " + temp + " degrees Kelvin.");

    });
  });


  // current weather for Miwaukee, WI


});
