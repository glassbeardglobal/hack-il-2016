var inputTextValue = "1st value";
var prevVal = '';

$(document).ready(function() {
  main();
});

function main() {
  // $(".test").click(clickTest);
  search();
}

//creates a global Javascript variable

function search() {
  //creates a listener for when you press a key
  window.onkeyup = keyup;
  // window.onkeyup = key2;

  function keyup(e) {
    if (e.keyCode == 13) {
      console.log(inputTextValue);
      //window.location = "http://www.nickhorcherisgay.com/search/" + inputTextValue;
    }
  //setting your input text to the global Javascript Variable for every key press
  inputTextValue = e.target.value;
  console.log(prevVal);
  console.log(inputTextValue);
  console.log($('#searchValue').val());
  prevVal = $('#searchValue').val();


    //listens for you to press the ENTER key, at which point your web address will change to the one you have input in the search box

  }
}
