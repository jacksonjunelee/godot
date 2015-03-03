var LambView = function(lamb){
  this.model = lamb;
};

LambView.prototype.render = function(){
  if ( this.model.say() ){
    return '<p class="silent lamb">baaa</p>';
    } else {
    return '<p class="silent lamb">...</p>';
  }
};


