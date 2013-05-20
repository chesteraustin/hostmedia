<!DOCTYPE html> 
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<title>My Friends</title> 
	<link rel="stylesheet" href="css/jquery.mobile-1.1.0.min.css" />
	<script src="javascript/jquery-1.7.2.min.js"></script>
	<script src="javascript/jquery.mobile-1.1.0.min.js"></script>

</head> 

<body onload="init()"> 

<div class="container">

	<div data-role="header">
		<h1>Do you want to be my friend?</h1>
	</div>


	<div id="contact_form">  
	<form name="contact" method="post" action="act_friend.cfm">  
	<fieldset>  
		<label for="name" id="name_label">Name</label>  
		<input type="text" name="name" id="name" size="30" value="" class="text-input" placeholder="What shall I call you?"/>  
		
		<label for="email" id="email_label">Email</label>  
		<input type="text" name="email" id="email" size="30" value="" class="text-input" placeholder="If you're special enought to have one."/>  
		
		<label for="phone" id="phone_label">Phone</label>  
		<input type="text" name="phone" id="phone" size="30" value="" class="text-input" placeholder="Ugg...we're still on this?"/>  
		
		<input type="radio" name="answer" id="answer_yes" value="yes" disabled><label for="answer_yes" id="answer_yes_label">Yes</label>
		<input type="radio" name="answer" id="answer_no" value="no" checked><label for="answer_no" id="answer_no_label">No</label>

		<br />  
		<input type="submit" name="submit" class="button" id="submit_btn" value="Submit" />  
	</fieldset>
	</form>  
	</div>  

	<div data-role="footer">
		<h4>Aren't you lucky?</h4>
	</div>	
</div><!--./container-->


</body>
</html>