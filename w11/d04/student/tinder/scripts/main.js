var $userInfo;
var userData = {};

$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
      $userInfo    = $(".user-info");
  var $xButton     = $(".x"),
      $heartButton = $(".heart");
      // $matchesContainer = $(".matches-container");


  // grabs template as a string
  var templateSource = $("#tinder-template").html();
  genUserHTML = _.template(templateSource);

  var matchesTemplateSource = $("#matches-template").html();
  genMatchHTML = _.template(matchesTemplateSource);

  var currentUser = {};
  var matchHTML;

  var getNewUser = function(){
    $.ajax({
      url: "http://api.randomuser.me",
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var user = data["results"][0]["user"];
      var firstName = user.name.first;
      var pictureURL = user["picture"]["large"];
      currentUser.image_url = pictureURL;
      currentUser.name = firstName;
      currentUser.age = 31;
      newTinderHTML = genUserHTML(currentUser);
      $userInfo.html(newTinderHTML);
      debugger
      matchHTML = genMatchHTML(currentUser);
    });
  };

  getNewUser();

  $xButton.on("click", getNewUser);

  $heartButton.on('click', function(){
    debugger
    $('.matches-container').append(matchHTML);
    getNewUser();
  });

});
