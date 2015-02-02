console.log('main.js loaded');

var firebaseToDo,
      $toDoList = $('.task-list');
    firebaseToDo = new Firebase('https://wditodomvc.firebaseio.com/');

// VIEW LAYER: form & header (save button, input box); task elements --> checkboxes, delete options (x that user can click)
// delete action,  completed task, input box, form & header, task description (test)
// BEHAVIOR: delete action, save button

// MODEL LAYER: tasks --> task completion status, task descriptions(text)
  // Part 1a: Create an object to hold our application's data //
  var taskList = {};
  // Part 1b: Enter into the object the data represented in the image above //
  taskList["task1"] = {complete: false, description: "Walk the dog."};
  taskList["task2"] = {complete: true, description: "Do homework."};
  taskList["task3"] = {complete: false, description: "Cash your check."};

// Part 2:
taskList["counter"] = 4;
// 1. Create a new task (createTask). Make sure to give the new task a unique ID!

var createTask = function(description, complete){
  var snapshot = firebaseToDo.push({completion: completion, description: description});
  var uniqueId = snapshot.key();
  // taskList.counter++; //$redis.incr("task:counter")
   // Also, have the function return that new unique ID. (Remember how we did this with Redis?)
  return uniqueId;
}

// 2. Mark a task as complete or as incomplete (toggleComplete), given the task's unique ID.
// 3. Remove a task (removeTask).
// 4. List tasks (listTasks). This should log to the console!

    var connectToFbToDo = function() {
      firebaseToDo.on('child_added', function(snapshot) {
        console.log('child_added fired!');
      });

    //     // create task IDs //
          var message = snapshot.val();
          var id      = snapshot.val();

      firebaseToDo.on('child_changed', function() {
        console.log('child_changed fired!');
      });

      firebaseToDo.on('child_removed', function(){
        console.log('child_removed fired!');
      })
    };
