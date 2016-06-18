//= require webcam


$( document ).on('ready page:load',function() {

  console.log("page load")

  var $button = $(":button")
  var $countDiv = $("#countDiv");
  var counter = 6;
  var photoCounter = 0;
  var $loadDiv = $(".loader");


  // sets up the size of the camera
  Webcam.set({
      width: 640,
      height: 480
  });

  $loadDiv.hide();

  // when you click the start button this removes the button and calls divCreater


  $button.click(function(event){
    event.preventDefault();
    console.log("button click");
    $button.removeClass("show").addClass("hide");
    Webcam.attach('#my_camera');
  });

  Webcam.on("live", divCreater);

  // removes the previous photos that were on the page
  function clearPhoto (){
    document.getElementById("my_result1").innerHTML = '';
    document.getElementById("my_result2").innerHTML = '';
    document.getElementById("my_result3").innerHTML = '';
  };

  //function to start the count down until photo is taken and takes 3 photos in a row
  function divCreater (){
    console.log("called function " + counter);
    $countDiv.removeClass("hide").addClass("show").html(counter);
    counter -= 1;
    if(counter > -1) {
      setTimeout(divCreater, 1000);
    } else  {
      $countDiv.removeClass("show").addClass("hide");
      photoCounter += 1; // keeps track of the number of photos taken
      counter = 5; // resets the counter so the count down can beging again
      takeAPhoto();
      if (photoCounter <= 2){ // resarts the process untill three photos are taken
        divCreater();
      } else { // once all of the photos are taken stops taken photos and puts the start button back
        setTimeout(submitForm, 1000);
        $button.removeClass("hide").addClass("start");
        $loadDiv.hide();
        photoCounter = 0;
      }
   };
  }

  // takes the photo
  function takeAPhoto (){
      Webcam.snap( function(data_uri) {
        var elementID = "my_result" + photoCounter;
        document.getElementById(elementID).innerHTML = '<img src="'+data_uri+'"/>';

        var raw_image_data = data_uri.replace(/^data\:image\/\w+\;base64\,/, '');
        var dataID = 'mydata' + photoCounter;
        document.getElementById(dataID ).value = raw_image_data;
   });
 };

 function submitForm (){
      console.log("submitting form")
      $loadDiv.show();
      document.getElementById('myform').submit();
 };

});
