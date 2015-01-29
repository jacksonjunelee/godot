var shotCount = 0;

var bang = function(event){
  console.log("BANG!");
  // if shotCount is >= 10
  // make bg "black"
  // hide img
  if (shotCount < 10) {
    $("body").addClass("shot");
  // change bg back to white after 3 sec //
  setTimeout(function(){
    $("body").removeClass("shot");
    }, 3000);
    shotCount++;
  } else {
    $("body").addClass("dead");
    $("img").addClass("hidden");
  }
};

var appendCast = function() {
  // target the ul
  var $ul = $("cast");
  var $li, actorName;
  // get cast object
  for (prop in cast) {
  // create LI tags for the cast object
  // append LIs to the ul
    debugger;
    actorName = cast[prop].actor;
    $li = $("<li>").text(actorName);
    $ul.append($li);
    $("<li>").text(actorName).appendTo('#cast');
  // remove the class hidden from the ul#cast
  $ul.removeClass("hidden");
};

var keyPressHandler = function(event) {
  console.log(event);
  console.log(event.keyCode);
  var letter = String.fromCharCode(event.keyCode);
  console.log(letter);
  if (letter === "c") {
    appendCast();
  }
};

// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
    $(window).on("mousemove", bang);
    $(window).on("keypress", keyPressHandler);
});

