<cfcomponent displayname="Application" output="true" hint="Handle the application.">
	<!--- Set up the application. --->
	<cfset THIS.Name = "AppCFC" />
	<cfset THIS.clientManagement = "Yes" />
	<cfset THIS.clientStorage = "cookie" />

	<cfset THIS.ApplicationTimeout = CreateTimeSpan( 365, 0, 0, 0 ) />
	<cfset THIS.SessionManagement = true />
	<cfset THIS.SetClientCookies = false /> 
</cfcomponent>