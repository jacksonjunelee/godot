console.log('main.js loaded');

// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

// var addContentToDom = function(){
// add content to the DOM
// var elAlbums = document.querySelector(".albums");
// elAlbums.appendChild(p);
// elAlbums.appendChild(ul);
// }

// window.addEventListener("load", addContentToDom);
//  -------------OR------------------
window.addEventListener("load", function(){
var elAlbums = document.querySelector(".albums");
elAlbums.appendChild(p);
elAlbums.appendChild(ul);

  for (var i=0, len=fleetwoodMacAlbums.length; i < len; i++){
    var li = document.createElement("li");
    li.setAttribute("class", "album");
    li.textContent = fleetwoodMacAlbums[i].title + ", " + moment(fleetwoodMacAlbums[i].releasedOn).format("MMM Do YYYY");
    ul.appendChild(li);
  }
});

console.log(fleetwoodMacAlbums);

var releaseDate = fleetwoodMacAlbums[0].releasedOn;
  releaseDate.split(" ")[2];

// RUBY VERSION/////
// albums.each do { |album| }
var logTitle = function (album){
  return album.title;
}

