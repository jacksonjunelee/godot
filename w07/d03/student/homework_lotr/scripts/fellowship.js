console.log("followship.js loaded");

// An example of using setTimeout to call makeMiddleEarth after 2 seconds.
// Section 1 //
var makeHobbits;
var lands;
var buddies;

var $body = $("body");
// var $lands = $body.find("lands");
var makeMiddleEarth = function() {
  // Create a section tag with an id of middle-earth
  var $middleEarth = $("<div id='middle-earth'>");
  // Create an article tag for each land in the lands array in characters.js
  $articles = $("<article>");
  $articles[lands] = function(){
    for (var i = 0; i < lands.length; i++){
      var $article = $(lands[i]);
    $articles.append($articles[lands]);
    };
  };
  // Give each article tag a class of "land"
  $articles.addClass("land");
  // Inside each article tag include an h1 with the name of the land
  $h1 = $("<h1>");
  $h1.text('');

  // Append each article.land to section#middle-earth
  $middleEarth.append($articles);
  // Append section#middle-earth to the document body
  $body.append($middleEarth);
  // Use setTimeout to delay the execution of the next function (in this case,
  // makeHobbits) by several seconds
  setTimeout(function (){
    (makeHobbits, 8000);
  });
};
setTimeout(makeMiddleEarth, 2000);

// Section 2 //
var makeHobbits = function() {
  // Create a ul with an id of "hobbits"
  var $ul = $("<ul id='hobbits'>");
  // Create li tags for each Hobbit in the hobbits array in characters.js
  var $li = $("<li>", function(){
    for(var i = 0; i < makeHobbits.length; i++){
      $body.append($li);
    };
  });
  // Give each li tag a class of "hobbit"
  $li.addClass('hobbit');
  // Set the text of each li.hobbit to one of the Hobbits in the array
  $li.hobbit.text('some text')
  // Append the ul#hobbits to the article.land representing "The Shire"
  // (the first article tag on the page)
};
