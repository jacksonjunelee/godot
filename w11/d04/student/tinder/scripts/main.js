  $($xButton).on('click', function(){
    $.ajax({
      url: 'http://api.randomuser.me/',
      type: 'GET',
      dataType: 'json'
    })
    .done(function(data) {
      console.log("success");
      var user = data["results"][0]["user"];
      var image_url = user["picture"]["medium"];
      var image = $("<img>").attr("src", image_url);
      $("matches-container").append(data);
    });
  });

var philCo = {
  image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/654/phillip-lamplugh.jpg',
  name: 'Phil L.',
  age: '(Math.random() * 25) + 23'

};

var tinderUser = {
  image_url: user["picture"]["medium"],
  name: user["name"]["first"]
}

$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      $xButton     = $(".x"),
      $heartButton = $(".heart");



    var showTemplateSource = $("#tinder-template").html();

    var generateTinderHTML = _.template(showTemplateSource);

    var philCoHTML = generateTinderHTML(philCo);

    $userInfo.html(philCoHTML);

    debugger


});
