var turtleData;

// This returns a constructor fxn.
var ReporterModel = Backbone.Model.extend({
url: "http://localhost:3000/reporter"
});

// Here, we instantiate a new ReporterModel
var april = new ReporterModel();

april.get('name') // => undefined

// makes GET request to specified URL & sets mirrored attributes
april.fetch();

april.get('name') //

var RatModel = Backbone.Model.extend({
  url: 'http://localhost:3000/rat'
});

var splinter = new RatModel();

splinter.fetch();
// debugger

var FootSoldier = Backbone.Model.extend({
  url: '/foot_soldiers/1'
});

var soldier = new FootSoldier();

soldier.fetch().done(function(){

  soldier.set('image_url', 'http://forums.3dtotal.com/attachment.php?attachmentid=133257&stc=1&d=1235439726');
  soldier.save();
  var image_url = soldier.get('image_url');
  console.log("The soldier's image_url is " + image_url);
});

soldier.get('image_url', 'height_in_inches');


$(document).ready(function(){

});

