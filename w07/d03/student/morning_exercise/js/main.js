console.log("main.js is loaded");

var loadJS = function(){
  var s = document.createElement("script");
  s.setAttribute("src", "js/app.js");
  var head = document.querySelector("head");
  head.appendChild(s);
};
loadJS();

var loadCSS = function(){
  var link = document.createElement("link");
  link.setAttribute("href", "css/style.css");
  link.setAttribute("rel", "stylesheet");
  var head = document.head;
  head.appendChild(link);
};
loadCSS();

var loadStyle = function(){
  var style = document.createElement("style");
  style.textContent = "body { background: blue; color: white}";
  document.head.appendChild(style);
};
loadStyle();

var colorify = function(){
  color = window.prompt("Please enter a color:", "");
  color.setAttribute("innerText", "");
};
// colorify();

var jQuerify = function(){
  var url = "https://code.jquery.com/jquery-1.11.2.min.js";
  var scriptTag = document.createElement("script");
  scriptTag.setAttribute("src", url);
  document.head.appendChild(scriptTag);
}
jQuerify();
