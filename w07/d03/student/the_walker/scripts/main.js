// caches the walker; we're going to be dealing with him a lot
var theWalker = document.getElementById('the-walker');

var pixelCountFromRight = 0;
var walkingLeft = true;
theWalker.style.right = pixelCountFromRight + "px";

var walk = function(){
  if (pixelCountFromRight > 600 || pixelCountFromRight < 0){
    theWalker.classList.toggle("walk-right");
    walkingLeft = !walkingLeft;
  }
  if (walkingLeft){
    pixelCountFromRight += 15;
  } else {
    pixelCountFromRight -= 15;
  }
  theWalker.style.right = pixelCountFromRight + "px"
};

setInterval(walk, 200);

// theWalker.style.animationDirection ="reverse";
// theWalker.style.animationDuration="3000";

// theWalker.style.animationIterationCount = "5";

// var animate, left=0, theWalker=null;

// function init(){

//    // theWalker = document.getElementById('myImage');
//    theWalker.style.position= 'absolute';
//    theWalker.style.top = '240px';
//    theWalker.style.left = '-300px';
//    theWalker.style.visibility='hidden';
// }
// moveRight();

// function moveRight(){
//     left = parseInt(theWalker.style.left, 10);

//     if (10 >= left) {
//         theWalker.style.left = (left + 5) + 'px';
//         theWalker.style.visibility='visible';

//         animate = setTimeout(function(){moveRight();},20); // call moveRight in 20msec

//         //stopanimate = setTimeout(moveRight,20);
//     } else {
//         stop();
//     }
//     //f();
// }

// function stop(){
//    clearTimeout(animate);
// }

// window.onload = function() {init();};
