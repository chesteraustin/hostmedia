<cfcomponent>
<cfheader name="Access-Control-Allow-Origin" value="*" />
<cfheader name="Access-Control-Allow-Methods" value="GET,PUT,POST,DELETE" />
<cfheader name="Access-Control-Allow-Headers" value="Content-Type" />

<cffunction name="setEntry" access="remote">
	<cfreturn 1>
</cffunction>

</cfcomponent>