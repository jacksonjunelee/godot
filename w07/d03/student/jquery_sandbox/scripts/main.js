// var $title = $("#title");
// $title.addClass("pleasant");
// $title.attr("role", "page identification");

// var $lis = $("li");
// // outputs regular string
//   $lis[0];
// // outputs [] array
//   $lis.eq(0);
//   $lis.eq(0).css("color", "orange");

// // peace signs denote creation of a jQuery object in memory
// var $newLi = $("<li>");
// $newLi.text('Bully Repusion');

// $("ul").append($newLi);

// var $tomboy = $("<li class='tomboy' id='marpdarp'>");
// $tomboy.text("Hey class!");

// $("ul").append($tomboy);

// $title.on("click", function() {
//   $title.fadeOut(1000).css("color", "pink");
// });

// $title.on("click", function() {
//   $title.fadeIn(1000).css("color", "green");
// });

// var h2s = $("h2");
// caches DOM queries for efficiencies //
var $body = $("body");
var $title = $body.find("#title");
var $allPtags = $body.find("p");

$title.addClass('classy').text("The Fart Store").css("font-size", "8em");

$body.addClass("backdrop");

$allPtags.eq(0).addClass('sub-head').text("- Established 2014 -");
$secondP = $allPtags.eq(1);
$secondP.html("Everything You Need to Start <span>Farting</span> Around");

$("h2").remove();
$("ul").remove();

$allPtags.addClass('classy');

var $container = $("<div class=\"product-container\">");
for(var i = 0; i < 8; i++){
  var $newJar = $("<div class=\"jar\">");
  $container.append($newJar);
}
$secondP.after($container);

var $button = $("<button>Sample the Product</button>").attr("id", "sample-button");
$container.after($button);

$button.on("click", function(){
  var $div = $("<div class='product'>");
  $div.fadeIn("slow", function(){
    setTimeout( function(){ $div.fadeOut("slow"); }, 8000);
  });
  $body.append($div);
});




