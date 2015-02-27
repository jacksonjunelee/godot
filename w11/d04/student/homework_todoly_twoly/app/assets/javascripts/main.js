$(document).ready(function() {
  console.log("loaded!");
  $taskList = $('#task-list');


  var $content = $('#content'),
      $create = $('.task-create'),
      $taskList = $('.task-list'),
      $tasks = $('#tasks'),
      $tasking = $('#task-list');

  var newTask = function(){
    $.ajax({
      url: 'http://localhost:3000',
      dataType: 'json',
      type: 'GET'
    })
      .done(function(data){
        debugger
      });
  };

}); //ends document
