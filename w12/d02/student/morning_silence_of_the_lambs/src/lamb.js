var Lamb = function Lamb(){
    this.isSilent = false;
    this.bagsOfWool = 3;
};

Lamb.prototype.say = function(){
  if (!this.isSilent){
    return 'baaa';
  };
};

Lamb.prototype.silence = function(){
  this.isSilent = true;
};

Lamb.prototype.hasWool = function(){
  return this.bagsOfWool > 0;
};

Lamb.prototype.wool = function(){
  return this.bagsOfWool + " bags full";
};

Lamb.prototype.sheer = function(){
  if (this.hasWool()){
    this.bagsOfWool --;
  };
};





