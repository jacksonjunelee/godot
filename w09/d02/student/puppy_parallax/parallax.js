$(document).ready(function(){
  console.log("doc has loaded!");
  $topPuppyLeft = $(".top-left");
  $topPuppyCenter = $(".top-center");
  $topPuppyRight = $(".top-right");
  $bottomPuppyLeft = $(".bottom-left");
  $bottomPuppyCenter = $(".bottom-center");
  $bottomPuppyRight = $(".bottom-right");
  $bg = $(".bg");

  $(window).on("scroll", function() {
    console.log("the user is scrolling!");
    $amountScrolled = $(window).scrollTop();
    console.log($amountScrolled);

    topPuppyLeft.css("left", $amountScrolled);
    topPuppyCenter.css("right", $amountScrolled);

    $bg.css('background-position', $amountScrolled * 0.7);
  });

});


