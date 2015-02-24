$(document).ready(function(){
  console.log("document ready");

  // caches reference to body element
  var $body = $("body");

  $.ajax({
    url: "http://api.randomuser.me",
    type: "GET",
    dataType: "json"
  }).done(function(data){
    var user = data["results"][0]["user"];
    var pictureUrl = user["picture"]["medium"];
    var image = $("<img>").attr("src", pictureUrl);
    $("body").append(image);
  });

});

// on line 7, what is "$"
  // $ calls the DOM in jQuery
// on line 7, what is .ajax
  // calls the ajax function
// on line 7, what is {
  // {
// on line 8, what is url ?
  // url is the location for the GET request
// on line 8, what is "api.randomuser.me" ?
  // source of the json
// on line 8, what is type ?
  // type of ajax request
// on line 8, what is GET ?
  // requesting info from the server
// on line 10, what is "json" ?
  // data format
// on line 11, what is .done ?
  // method to access the json hash
// on line 11, what is function ?
  // callback fxn to access the json data
// on line 11, what is data ?
  // info received in the results hash
