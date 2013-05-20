<cfinvoke component="chestera_friend.services.friend_old" 
		  method="data"
		  returnvariable="data">
</cfinvoke>

<!DOCTYPE html> 
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<title>My Friends</title> 
	<link rel="stylesheet" href="css/jquery.mobile-1.1.0.min.css" />
	<script src="javascript/jquery-1.7.2.min.js"></script>
	<script src="javascript/jquery.mobile-1.1.0.min.js"></script>
	<script src="javascript/main.js"></script>
	<script src="javascript/getFriends.js"></script>
</head> 

<body onload="init()"> 

<div data-role="page" id="indexPage">

	<div data-role="header">
		<h1>My Friends are:</h1>
	</div>

	<div data-role="content">	
	<cfoutput query="data">
		<cfif answer eq "yes">
			<cfset var.response = "my friend">
		<cfelse>
			<cfset var.response = "my <strong>NOT</strong> friend">
		</cfif>
		<ul data-role="listview" data-inset="true" id="data">#NAME# is #var.response#.</ul>
	</cfoutput>
	</div>
	
	<div data-role="content">
		<form></form><input type="button" value="Add yourself." onclick="window.location.href='friend.cfm'"></form>
	</div>
	<div data-role="footer">
		<h4>Aren't you lucky?</h4>
	</div>	

</div>

</body>
</html>