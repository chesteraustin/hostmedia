<cfcomponent>

<cffunction name="getFile" access="remote">
	<cfargument name="myFile" default="">
		<cfset thisFile = arguments.myFile>
		<cfset thisFilePath = expandPath("./")>
		<cffile action="readbinary" file="#thisFilePath#/#thisFile#" variable="thisFile">
	<cfdump var="#variables#" label="variables - cfc">
	<cfreturn thisFile>
</cffunction>

</cfcomponent>