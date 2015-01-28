var $title = $("#title");
$title.addClass("pleasant");
$title.attr("role", "page identification");

var $lis = $("li");
// outputs regular string
  $lis[0];
// outputs [] array
  $lis.eq(0);
  $lis.eq(0).css("color", "orange");

// peace signs denote creation of a jQuery object in memory
var $newLi = $("<li>");
$newLi.text('Bully Repusion');

$("ul").append($newLi);

var $tomboy = $("<li class='tomboy' id='marpdarp'>");
$tomboy.text("Hey class!");

$("ul").append($tomboy);

$title.on("click", function() {
  $title.fadeOut(1000).css("color", "pink");
});

$title.on("click", function() {
  $title.fadeIn(1000).css("color", "green");
});

var h2s = $("h2");
