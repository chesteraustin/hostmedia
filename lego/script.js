$(document).ready(function () {
	$("[type='radio']").click(function(){

		var clickedValue = $(this).val(); //gets the value of the radio button clicked
		var addNote = $("#messageValue").html(clickedValue); //puts that value in between tags
		var showNote = $("#message").show(); //makes DIV visible

		console.log("You clicked " + clickedValue); //log to console

	})//end click 
})//end DOCUMENT = READY function