// I AM SOOOOOOOOO LOST! PLEASE HELP!!!!!!//

console.log("Linked.");

// Dramatis Personae
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];

var lands = ['The Shire', 'Rivendell', 'Mordor'];
var body = document.querySelector('body');

function makeMiddleEarth() {
  // create a section tag with an id of middle-earth
    var sectionTag = document.createElement("section");
    for (var i = 0, len = lands.length; i < len; i++){
    // add each land as an article tag
      var land = document.createElement('article');
    // inside each article tag include an h1 with the name of the land
    land.innerHTML = '<h1>' + lands[i] + '</h1>';
    // append middle-earth to your document body
    body.appendChild(middleEarth);
    }
}
makeMiddleEarth();

function makeHobbits() {
  // display an unordered list of hobbits in the shire (which is the second article tag on the page)
  // give each hobbit a class of hobbit
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var theRing = document.createElement('div');
  theRing.setAttribute('id', 'the-ring');
  // give the div a class of 'magic-imbued-jewelry'
  theRing.setAttribute('class', 'magic-imbued-jewelry');
  // add an event listener so that when a user clicks on the ring, the nazgulScreech function (provided) is invoked
  theRing.event
  // add the ring as a child of Frodo
}

function makeBuddies() {
  // create an aside tag
  var buddyList = document.createElement('ul');
  for (var i = 0, len = buddies.length; i < len; i++){
  // attach an unordered list of the 'buddies' in the aside
  var buddy = document.createElement('ul');
  buddy.textContent = buddies[i];
  buddyList.appendChild(buddy);
  }
  // insert your aside as a child element of rivendell
  aside.appendChild(buddyList);
  rivendell.appendChild(aside);
}

function beautifulStranger() {
  // change the 'Strider' textnode to 'Aragorn'
}
