<cfcomponent>

<cffunction name="getFile" access="remote">
	<cfargument name="fileURL" default="" required="true">

	<!---Get File --->
	<cfhttp url="#ARGUMENTS.FILEURL#" method="get" name="CSVFile">
	</cfhttp>

	<cfset application.checkin = csvFile>
	<cfset thisJSON = serializeJSON(csvFile)>
	<cfreturn thisJSON>
</cffunction>

<cffunction name="checkName" access="remote">
	<cfargument name="firstName" default="">
	<cfargument name="lastName" default="">
	<cfargument name="email" default="">
	
	<cfquery name="checkName_sql" dbtype="query">
		SELECT *
		FROM application.checkIn
		WHERE 0=0
		AND (firstName like '%ARGUMENTS.FIRSTNAME%'
		OR lastName like '%ARGUMENTS.LASTNAME%'
		OR email like '%ARGUMENTS.EMAIL%')
	</cfquery>

	<cfreturn serializeJSON(checkName_sql, "struct")>
</cffunction>
</cfcomponent>