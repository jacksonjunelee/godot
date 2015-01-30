console.log('main.js is loaded');

// way NO way // PLEASE REFACTOR //
$('.way-no-way').on('click', function(e){
  var buttonText = $(e.target).text();
      console.log(buttonText);
      // get button text
      // if text === 'way'
      if (buttonText === 'way'){
      // change text to 'no way',
        $(e.target).text('no way');
      } else {
      // else change text to 'way'
        $(e.target).text('way');
      }
  });

// toggle on Wayne //
var showNameForm = function(event) {
  var currentName = $(event.target).text();
  $(event.target).addClass("hidden");
  $(".input-name").removeClass("hidden");
  $(".input-name").val(currentName);
  console.log('toggle class added');
};

// toggle off Garth //
var updateName = function(event){
  // return key === "13"
  if (event.keyCode === 13) {
    var newName = $(event.target).val();
    $(event.target).addClass('hidden');
    $('span.name').removeClass('hidden');
    $('span.name').text(newName);
  }
};

$('.name').on('click', showNameForm);
$('.input-name').on('keypress', updateName);








