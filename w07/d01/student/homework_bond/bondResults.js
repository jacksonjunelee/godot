console.log('bondResults.js loaded');

// Part 1 //

var grossToNumber = function(gross){
  for (var = 0, len = bondFilms.length; i < len; i++){
  var gross_string = bondFilms[i]["gross"].replace("$", "").split(",").join("")
  return parseInt(gross_string);
  }
};
