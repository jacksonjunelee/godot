var Stopwatch = function(elem, options) {

  var $body      = ("body"),
      timer     = createTimer(),
      $reset    = $("#reset"),
      $start    = $("#start"),
      $pause    = $("#pause"),
      $controls = $(".controls"),
      offset,
      clock,
      interval;

  // default options
  options = options || {};
  options.delay = options.delay || 1;

  // // append elements
  // $body.appendChild(timer);
  // body.appendChild($start);
  // body.appendChild($stop);
  // body.appendChild($reset);

  // initialize
  $("#reset");

  // private functions
  function createTimer() {
    return document.getElementById("span");
  }

  function createButton(action, handler) {

    $controls.addEventListener("click", function(event) {
      handler();
      event.preventDefault();
    });
  }

  function start() {
    if (!interval) {
      offset   = Date.now();
      interval = setInterval(update, options.delay);
    }
  }

  function stop() {
    if (interval) {
      clearInterval(interval);
      interval = null;
    }
  }

  function reset() {
    clock = 0;
    render();
  }

  function update() {
    clock += delta();
    render();
  }

  function render() {
    timer.innerHTML = clock/1000;
  }

  function delta() {
    var now = Date.now(),
        d   = now - offset;

    offset = now;
    return d;
  }

  // public API
  this.start  = start;
  this.stop   = stop;
  this.reset  = reset;
};

var elems = document.getElementsByClassName("controls");

for (var i=0, len=elems.length; i<len; i++) {
  new Stopwatch(elems[i]);
}
