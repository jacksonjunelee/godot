console.log('woof');


var Dog = function(name){
  this.name = name;
  this.age = 0;
};


Dog.prototype = {
  bark: function() { return 'bark bark!'; },
  sit: function() { return 'sits'; },
  save: function(boysName) { return 'woof (ok, ill save ' + boysName + ')!'; }
};

// lassie = new Object()
lassie = Object.create(Dog.prototype);

lassie.name = name;
lassie.age = 0;
