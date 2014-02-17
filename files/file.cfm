<!---
<cfset var.myFile = "text.txt">
<cfset var.myFile = "letter.docx">
<cfset var.myFile = "letter.pdf">
--->
<cfset var.myFile = "letter_2.docx">

<!---Local Call --->
<cfinvoke component="files" method="getFile" returnvariable="thisFile">
	<cfinvokeargument name="myFile" value="#var.myFile#">
</cfinvoke>
<cfdump var="#thisFile#">

<!---
<!---Remote call (regular) --->
<cfhttp url="www.chesteraustin.us/files/files.cfc" method="get" result="getFile" >
	<cfhttpparam type="url" name="method" value="getFile">
	<cfhttpparam type="url" name="myFile" value="#var.myFile#">
</cfhttp>
<cfdump var="#getFile#" label="getFile - cfm">

<!---Remote call (binary) --->
<cfhttp url="www.chesteraustin.us/files/files.cfc" method="get" result="getFile_binary">
	<cfhttpparam type="url" name="method" value="getFile_binary">
	<cfhttpparam type="url" name="myFile" value="#var.myFile#">
</cfhttp>
<cfdump var="#getFile_binary#" label="getFile_binary cfm">
--->
<!---
<cfdump var="#variables#">
--->