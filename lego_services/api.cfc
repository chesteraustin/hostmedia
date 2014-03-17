<cfcomponent>

<cffunction name="walmartAPI" access="remote" returnformat="JSON">
<!---
http://127.0.0.1:8500/hostmedia/lego_services/api.cfc?method
http://walmartlabs.api.mashery.com/v1/search?query=lego+123&format=json&apiKey=brm6htxsunbvq8ff2xyvv693
--->
	<cfargument name="searchTerm" default="">

	<cfset this.API_url = "http://walmartlabs.api.mashery.com/v1/search">
	<cfset this.API_key = "brm6htxsunbvq8ff2xyvv693">
	
<cfhttp url="#this.API_URL#" method="get" timeout="60">
<!---
    <cfhttpparam type="header" name="Content-Type" value="application/json" />
---> 
    <cfhttpparam type="url" name="apiKey" value="#this.API_key#">
    <cfhttpparam type="url" name="query" value="#arguments.searchTerm#">
	<cfhttpparam type="url" name="format" value="json">
</cfhttp>

<!---
<cfdump var="#cfhttp#">
<cfabort>	
--->
	<cfset walmartAPI_JSON = cfhttp.filecontent>		
	<cfreturn walmartAPI_JSON>
</cffunction>

<cffunction name="walmartAPI_test" access="remote" returnformat="JSON">
<!---
http://127.0.0.1:8500/hostmedia/lego_services/api.cfc?method
http://walmartlabs.api.mashery.com/v1/search?query=lego+123&format=json&apiKey=brm6htxsunbvq8ff2xyvv693
--->
	<cfargument name="searchTerm" default="">

	<cfset this.API_url = "http://walmartlabs.api.mashery.com/v1/search?query=lego+123&format=json&apiKey=brm6htxsunbvq8ff2xyvv693">
	<cfset this.API_key = "brm6htxsunbvq8ff2xyvv693">
	
<cfhttp url="#this.API_URL#" method="post" timeout="60">
</cfhttp>
	<cfdump var="#cfhttp#">
	<cfset walmartAPI_JSON = cfhttp.filecontent>		
	<cfreturn walmartAPI_JSON>
</cffunction>

</cfcomponent>