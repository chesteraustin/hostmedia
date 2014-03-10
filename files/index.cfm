<cfhttp url="http://www.google.com">

</cfhttp>

<cfset var.myResponse = cfhttp.fileContent>

<cfdocument format="PDF">
	<cfoutput>
		#var.myResponse#
	</cfoutput>
</cfdocument>