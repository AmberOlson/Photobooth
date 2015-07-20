
$( document ).ready(function() {

var $addButton = $("#addButton");
var $submit = $("#submit");
var $form = $("#formbackground");
var i = 1;

function buildHTML (i){
  var html = ('<label for="name"> Name: </label>');
      html += ('<input type="text" id="name" name="name' + i + '"/>');
      html += ('<label for="email"> Email: </label>');
      html += ('<input type="email" id="email" name="email' + i + '"/>');
      html += ('<br>');
  return html;
};

$form.append(buildHTML(i));

$addButton.bind("click", (function (event) {
  console.log("button was pressed")
  event.preventDefault();
  i += 1;
  $form.append(buildHTML(i));
}));

});
