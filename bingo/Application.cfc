<cfcomponent>
	<cfset this.datasource = "CCC_Enterprise">
	<cfset this.dsn = "CCC_Enterprise">
	<cfset this.name = "TEST">

<cfif structKeyExists(url,'reset')>
  <cfset OnApplicationStart() />
</cfif>

<cffunction name="onRequestStart">
	<cfinclude template="header.cfm">
</cffunction>

<cffunction name="onRequestEnd">
	<cfinclude template="footer.cfm">
</cffunction>

</cfcomponent>