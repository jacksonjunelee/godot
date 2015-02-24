var sleepIn = function(dayName) {
<<<<<<< HEAD
  if (dayName == "Saturday" ||dayName == "Sunday") {
=======
  if (dayName == 'Saturday' || dayName == 'Sunday') {
>>>>>>> d55eb380d8e56a960a5a37a8bd63f5bc982cc4c1
    return true;
  } else {
    return false;
  }
<<<<<<< HEAD
};

var pluralize = function(list) {
  var tail = list.pop();
  return list.join(', ') + ' and ' + tail
};

// var prettyTime = function(conversion) {
//   if (conversion) {
//     var hours = Math.floor(minutes / 60);
//     minutes = minutes - hours * 60;
//   }

// };

// function fromSeconds(seconds, showHours = false) {
// if(showHours) {
// var hours = Math.floor(seconds / 3600);
// seconds = seconds - hours * 3600;
// }
// var minutes = (Math.floor(seconds/60) < 10) ? "0" + Math.floor(seconds/60) : Math.floor(seconds/60);
// var seconds = (seconds % 60 > 9) ? seconds % 60 : "0" + seconds % 60;
// if(showHours) {
// var timestring = hours+":"+minutes+":"+seconds;
// } else {
// var timestring = minutes+":"+seconds;
// }
// return timestring;
// }
=======
}

var pluralize = function(list) {
  return "lions, tigers and bears";
}
>>>>>>> d55eb380d8e56a960a5a37a8bd63f5bc982cc4c1
