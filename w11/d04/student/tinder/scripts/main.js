var genUser = {
  image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/654/phillip-lamplugh.jpg',
  name: 'Phil',
  age: 33
};
$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      $xButton     = $(".x"),
      $heartButton = $(".heart"),
      $matchesContainer = $(".matches-container");


  // grabs template as a string
  var templateSource = $("#tinder-template").html();
  genUserHTML = _.template(templateSource);

  var getNewUser = function(){
    $.ajax({
      url: "http://api.randomuser.me",
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var user = data["results"][0]["user"];
      var firstName = user.name.first;
      var pictureURL = user["picture"]["large"];
      newTinderHTML = genUserHTML({
        image_url: pictureURL,
        name: firstName,
        age: 31
      });
      $userInfo.html(newTinderHTML);
    });
  };

  var matchesTemplateSource = $("#matches-template").html();
  likeUserHTML = _.template(matchesTemplateSource);

  var addToMatches = function(){
    $.ajax({
      url: "http://api.randomuser.me",
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var user = data["results"][0]["user"];
      var firstName = user.name.first;
      var pictureURL = user["picture"]["thumbnail"];
      likeTinderHTML = likeUserHTML({
        image_url: pictureURL,
        name: firstName
      });
      $matchesContainer.append(likeTinderHTML);
    });
  };

  addToMatches();
  $heartButton.on('click', addToMatches);

  getNewUser();
  $xButton.on("click", getNewUser);


});
