console.log("loaded tip.js");

var amountControl = document.querySelector("#amount");
var taxControl = document.querySelector("#tax");
var totalControl = document.querySelector("#total");

var calculateTotalBill = function(){
  // get the amt from the input
  // convert the amount to float
  var amount = parseFloat(amountControl.value);
  // get the tax
  // convert the amt to a float
  var tax = parseFloat(taxControl.value);
  // assign 0.2 to tip
  var tip = 0.2;
  // assign tipAmount to amount * tip
  var tipAmount = (amountControl.value * tip);
  // return tipAmount + (amount * tax) + amount
  var total = (tipAmount + (amount * tax) + amount);
  totalControl.textContent = total;
};
