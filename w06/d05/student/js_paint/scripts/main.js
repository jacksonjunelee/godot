var mouseDepressed = false;

var body = document.querySelector("body");
var canvas = document.getElementsByClassName("canvas");
var mouseEnter = function(event) {
    event.target.setAttribute("class", "tile green");
  };
for (var i = 0; i < 805; i++) {
  var tile = document.createElement("div");
  tile.setAttribute("class", "tile");
  canvas[0].appendChild(tile);
  tile.addEventListener("mouseover", mouseEnter);
}



