$(function() {
  $(".button").click(function(){

/*
    var dataString = 'name='+ name;  
    alert (dataString);return false;  

    $.ajax({  
      type: "POST",  
      url: "bin/process.php",  
      data: dataString,  
      success: function() {  
        $('#contact_form').html("<div id='message'></div>");  
        $('#message').html("<h2>Contact Form Submitted!</h2>")  
        .append("<p>We will be in touch soon.</p>")  
        .hide()  
        .fadeIn(1500, function() {  
          $('#message').append("<img id='checkmark' src='images/check.png' />");  
        });  
      }  
    });  
    return false;  
    */

    	
	var name = $("input#name").val();
	var email = $("input#email").val();
    	var phone = $("input#phone").val();
	var answer = $("input:radio[name=answer]:checked").val();	

	var dataString = 'name='+ name + '&email=' + email + '&phone=' + phone + '&answer=' + answer;

	alert (dataString); //return false;

	$.ajax({
		tpe: "POST",
		url: "http://www.chesteraustin.us/friend/friend.cfc?method=add",
		data: dataString,
		success: function(){
		}
	});
/*
*/
	return false;
	});
});