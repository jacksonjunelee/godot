console.log("main.js linked");

var h1;
var cops;
var theOneTrueSarahConnor;
$(document).ready(function(){

  // Students! Write your playful jQuery code here!
$( "div.main h1" ).text( "Inhabitants of Los Angeles (1984)");
$
var cops = document.querySelectorAll(".cop");

// Loop through all the `cops`, giving each the color of `lightskyblue`.
for (var i = 0; i < cops.length; i++) {
  cops[i].style.color = "lightskyblue";
};

// Create a div with the class of `terminator`, and append it to the div with the id of `los-angeles`.
var terminator = document.createElement("div");
terminator.className = "terminator";

var losAngeles = document.querySelector("#los-angeles");
losAngeles.appendChild(terminator);

// Query the DOM for the element with id of `the-one-true-sarah-connor`, and save it in a variable called `theOneTrueSarahConnor`.
var theOneTrueSarahConnor = document.querySelector("#the-one-true-sarah-connor");
// Give `theOneTrueSarahConnor` the class of `badass`.
theOneTrueSarahConnor.setAttribute('class', 'badass');
// Query the DOM for all elements that have the class `collateral-damage`, and save the elements in a variable called `poorSouls`.
var poorSouls = document.querySelectorAll(".collateral-damage");
// Iterate through `poorSouls`, removing the elements from the DOM one by one.
for (var i = 0, len = poorSouls.length; i < len; i++){
  poorSouls[i].parentNode.removeChild(poorSouls[i]);
};
});

