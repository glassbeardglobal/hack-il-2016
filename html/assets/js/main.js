$(document).ready(function() {
  main();
});

function main() {
  $(".test").click(clickTest);
}

function clickTest() {
  TweenMax.to(".test", 1, {opacity:0});
}
