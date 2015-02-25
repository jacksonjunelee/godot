// Create an event listener so that when you enter a Github User's name and click "Seach for User", you perform an AJAX request to Github's API and retrieve the user's information. Display the user's info in div.user-info
// Be sure to display the user's name, avatar, and number of public repos and gists.

// https://api.github.com/users/octocat

$(document).ready(function(){
console.log('github_api loaded');
  var $body = $("body");
  var form = $("form");

  form.on('submit', function(e) {
    e.preventDefault();
    var userName = $("input[name=username]").val();
    $.ajax({
      url: "https://api.github.com/users/",
      dataType: "json",
      type: "GET"
    }).done(function(data){
      debugger

    });
  });
});

