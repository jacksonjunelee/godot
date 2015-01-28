//======================================================
// Never Fear, The Code Below is For An Upcoming Example
//======================================================
var body = document.querySelector('body');
var pronunciation = "poh-TAY-toh";

var debate = function(){
  console.log(pronunciation);
  if (pronunciation === "poh-TAY-toh"){
    pronunciation = "po-TAH-toh";
  } else {
    pronunciation = "poh-TAY-toh";
  }
};

// setTimeout takes 2 arguments. The first is a fxn that holds the code we want to execute. The 2nd is the delay in ms. Thus, the code below will run after 5 sec.
// setTimeout(function(){
// console.log("Game of Thrones, Season 5. Oh yeah.");
// }, 5000);

var createP = function(){
  var newP = document.createElement("p");
  newP.textContent = "The Beatles";
  body.appendChild(newP);
};

setTimeout(createP, 6000);

var timerOne = setInterval(debate, 1000);
var timerTwo = setInterval(debate, 1000);
var timerThree = setInterval(debate, 1000);
var timerFour = setInterval(debate, 1000);

clearInterval(timerOne);

var otherP = function(){
  var otherP = document.createElement("p");
  otherP.textContent = "Nah nah nah nah nah nah, nah nah nah, hey Jude";
  otherP.style.color = "blue";
  body.appendChild(otherP);
}
var intervalOne = setInterval(otherP, 5000);

// clears interval, keeping the Beatles from singing.

setTimeout(function(){
    var pTag = document.createElement("p");
    pTag.textContent = "You must really like this page...";
    pTag.style.color = "red";
    body.appendChild(pTag);
})
var timeoutOne = setTimeout(pTag, 15000);

var button = document.querySelector("button");

button.addEventListener('click', function(){
  clearInterval(intervalOne);
  clearTimeout(timeoutOne);
  this.parentNode.removeChild(this);
});








