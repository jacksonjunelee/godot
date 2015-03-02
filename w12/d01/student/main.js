console.log('main loaded!');

$(document).ready(function(){
    $contentDiv = $('.content');
    ['Kait',
  'Lassie',
  'Spot',
  'Rascal',
  'Kujo'].forEach(function(dogName){
    new app.Dog(dogName, $contentDiv).addToPage();
  });
});
