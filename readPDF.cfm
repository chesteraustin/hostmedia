<cfparam name="form.subForm" default="">

<cfif form.subForm neq "">
<cfpdf 	action = "read"
		name = "myPDF_read"
		source = "#form.URLPDF#">	
<cfpdf 	action = "extractText"
		name = "myPDF"
		source = "#form.URLPDF#">	
<cfdump var="#myPDF_read#">
<cfdump var="#myPDF#">
</cfif>

<form action="readPDF.cfm" method="post">
	<input type="text" name="urlPDF">
	<input type="submit" name="subForm" value="Convert PDF">
</form>

