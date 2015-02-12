console.log("main.js linked");

$(document).ready(function(){

  var $reset    = $("#reset");
  var $start    = $("#start");
  var $pause    = $("#pause");
  var $headline = $("h1");

  var counter = 0;

  var timerActive = true;

  var intervalID;

  $start.on('click', function(){
    $headline.text("Time elapsed: " + counter);
    intervalID = setInterval(function(){
      counter++;
      $headline.text("Time elapsed: " + counter);
    }, 1000);
  });

  $reset.on('click', function() {
    console.log('reset was clicked!');
    $headline.text('Stop Watch');
    clearInterval(intervalID);
    counter = 0;
  });

  $pause.on('click', function() {
    console.log('pause was clicked!');
    if (timerActive ) {
      clearInterval(intervalID);
      timerActive = false;
    } else {
      $headline.text("Time elapsed: " + counter);
        intervalID = setInterval(function(){
        counter++;
        $headline.text("Time elapsed: " + counter);
        }, 1000);
      }
    });
});
// // var countTimer = $start.on('click', '#start', function(event) {
// //   event.preventDefault();
// //   $start.text("Time elapsed: 0");
// // });

// function countTimer(start_zero) {
//   $start.text("Time elapsed: 0");
// }
// for var i = 0, len = 10000; i < len; i++


