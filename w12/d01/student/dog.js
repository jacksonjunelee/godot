console.log('woof Dog "class" loaded! ');

var app = {};

app.Dog = function(name, parentDiv){
  this.name = name;
  this.age = 0;
  this.$parentDiv = parentDiv;
}

// lassie = new Object()
// lassie = Object.create(Dog.prototype);

// lassie.name = name;
// lassie.age = 0;

app.Dog.prototype = {
  bark: function() { return 'bark bark!'; },
  sit: function() { return 'sits'; },
  save: function(boysName) { return 'woof (ok, ill save ' + boysName + ')!'; }
};

  app.Dog.prototype.addToPage = function() {
    var stringOfHtml = this.render({name: this.name, age: this.age});
    $(stringOfHtml).appendTo(this.$parentDiv)
    .find('button').on('click', function(){
      // alert(this.bark());
      // debugger
      alert(app.Dog.prototype.bark())
    });
  }

$(document).ready(function(){
    // debugger
  app.Dog.prototype.$template = $('#dog-template'),
  app.Dog.prototype.render = _.template(app.Dog.prototype.$template.html())
});
