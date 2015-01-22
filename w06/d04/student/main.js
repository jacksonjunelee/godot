console.log("Loading file!");

// querySelector grabs an element
var pTag = document.querySelector("p");

// textContent changes the element's text
pTag.textContent = "Aloha";

// querySelectorAll grabs all matches of an element
var ingredients = document.querySelectorAll("li");

var people = document.querySelector("#people").children;
var dana = document.querySelectorAll(".student")[1];

var liTag = document.createElement("li");
liTag.textContent = "graham cracker";
document.querySelector("#smores-ingredients").appendChild(liTag);
