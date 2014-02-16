<cfset var.myFile = "text.txt">
<cfset var.myFile = "letter.pdf">
<cfset var.myFile = "letter.docx">

<cfinvoke component="files" method="getFile" returnvariable="thisFile">
	<cfinvokeargument name="myFile" value="#var.myFile#">
</cfinvoke>

<cfdump var="#variables#">
<cfdump var="#thisFile#">