var $contentDiv,
    $template,
    generateNewTemplate;

console.log('woof Dog "class" loaded! ');

var Dog = function(name){
  this.name = name;
  this.age = 0;
};

// lassie = new Object()
// lassie = Object.create(Dog.prototype);

// lassie.name = name;
// lassie.age = 0;

Dog.prototype = {
  bark: function() { return 'bark bark!'; },
  sit: function() { return 'sits'; },
  save: function(boysName) { return 'woof (ok, ill save ' + boysName + ')!'; }
};



$(document).ready(function(){
  $content = $('.content');
  $template = $('#dog-template');
  generateNewTemplate = _.template($template.html());
  $(generateNewTemplate({name: 'Lassie', age: 0})).append($contentDiv);
});
