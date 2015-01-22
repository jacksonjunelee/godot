var colors = ["pink", "purple", "black", "gold", "yellow"];

console.log(colors);

console.log("All that glitters is not" + colors[3] + "...");

var iLove = function(colors){
  colorsUp = colors.toUpperCase();
  return "I love " + colorsUp + "!"
};

// var iLove = function(colors){
//   return "I love " + colors;
// };

var iLoveMost = iLove(colors[0]);
console.log(iLoveMost);
console.log(" the most!");
console.log(iLove(colors[1]));
console.log(" the next most!");


if (true) { console.log("I love green!") }

var thingsILove = ["sushi", "pillows", "dreams"]
var len = colors.length;

// debugger

for (var i = 0, len = colors.length; i < len; i++) {
  // console.log(i + ": " + colors[i]);
  console.log( iLove(colors[i]) );
  thingsILove.push(iLove(colors[i]));
  i += 1;
}

var name = "pj"
name = "princess leiah"
if ("pj".length === 10) {
  console.log("I love green!");
} else if ("pj".length < 10) {
  console.log("I love brown!");
} else {
  console.log("No!")
}

var isTwentyOne = function(person) {
  return person.age >= 21;
};

