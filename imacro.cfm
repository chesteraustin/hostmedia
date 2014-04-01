<cfparam name="form.entry" default="">
<cfparam name="form.submit" default="">
<cfparam name="var.entry" default="">
<form action="imacro.cfm" method="post">
	<input type="text" name="entry" id="entry">
	<input type="submit" name="submit" id="submit">
</form>

<cfset var.entry = var.entry & form.entry>
<cfdump var="#form#">
<cfdump var="#var#">