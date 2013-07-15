<!DOCTYPE html>

<html>
	<head>
		<title>Chester's Version of the Cards Against Humanity Game</title>
		<!-- Bootstrap -->
		<link href="css/bootstrap.css" rel="stylesheet" media="screen">
		<link href="css/questions.css" rel="stylesheet" media="screen">

		<!--Scripts -->
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</head>

<body>

<!--- 
<cfset var.clearClient = structClear(client)>
<cfset client.turnID = "">
--->
<cfdump var="#client#">

<cfoutput>
	<div class="row-fluid">
		<div class="span2 well well-large">#admin#</div>
		<div class="span6 well well-large">#body#</div>
		<div class="span2 well well-large">#games#</div>
	</div>
</cfoutput>
<cfdump var="#variables#">
</body>

</html>

