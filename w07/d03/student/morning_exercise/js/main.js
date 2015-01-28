console.log("main.js is loaded");

var loadJS = function(){
  var s = document.createElement("script");
  s.setAttribute("src", "js/app.js");
  var head = document.querySelector("head");
  head.appendChild(s);
};

loadJS();
