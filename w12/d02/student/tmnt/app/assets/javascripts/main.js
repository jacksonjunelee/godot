var turtleData;

// This returns a constructor fxn.
var ReporterModel = Backbone.Model.extend({
url: "http://localhost:3000/reporter"
});

// Here, we instantiate a new ReporterModel
var april = new ReporterModel();

april.get('name'); // => undefined

// makes GET request to specified URL & sets mirrored attributes
april.fetch();

april.get('name'); //

var RatModel = Backbone.Model.extend({
  url: 'rat'
});

var RatView = Backbone.View.extend({
  el: '.profile',
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  render: function(){
    this.$el.html('<h1>' + this.model.get('name') + '</h1>');
  }
});

var splinter = new RatModel();

splinter.fetch().done(function(){
  ratView = new RatView({ model: splinter });
});
// debugger

var FootSoldier = Backbone.Model.extend({
  defaults: {
    id: null,
    height_in_inches: null,
    weight_in_pounds: null,
    image_url: null,
    created_at: null,
    updated_at: null
  }
});

var FootSoldiersCollection = Backbone.Collection.extend({
    url: '/foot_soldiers',
    model: FootSoldier
});


var footSoldiers = new FootSoldiersCollection();

footSoldiers.fetch();

var footSoldierThree = footSoldiers.get(3);

footSoldierThree.get(height_in_inches);

var VillainModel = Backbone.Model.extend({
  defaults: {
    id: null,
    name: null,
    species: null,
    superpower: null
  }
});

var VillainCollection = Backbone.Collection.extend({
  url: '/villains',
  model: Villain
});

var vileCreatures = new VillainCollection();

vileCreatures.fetch().done(function(){
  rocksteady = vileCreatures.get(4);
  krang = villains.get(2);
  shredder = villains.get(1);
  speciesOfKrang = krang.get('species');
  shredder.set('superpower', 'hatred');
  shredder.save();
});


$(document).ready(function(){

});

