<cfcomponent>

<cffunction name="getDates" returnformat="JSON" access="remote" >
	<cfargument name="todayDate" default="#dateformat(now(), "MM-DD-YYYY")#">
	<cfset todayDate_end = dateformat(dateAdd("d", 30, todayDate), "MM-DD-YYYY")>

	<cfquery name="getDates_sql" datasource="CCC_Enterprise">
		Execute WCenter_Get_Appointment_Full
			@Lower_Date = '#todayDate# 00:00:00'
			,@Upper_Date = '#todayDate_end# 00:00:00'
	</cfquery>
	<cfquery name="getDates_sql" dbtype="query">
		SELECT (cast(appointment_date as DATE)) as APPOINTMENT_DATE
		FROM getDates_sql
		GROUP BY appointment_date
		ORDER BY 1
	</cfquery>

	<cfreturn getDates_sql>

</cffunction>

<cffunction name="studentName" returnformat="JSON" access="remote" >
	<cfargument name="studentID" default="Temp122679">

	<cfquery name="Get_Students" datasource="#application.dsn#">
		Execute WCenter_Get_Student	@USCID = '#studentID#'
	</cfquery>	
	<cfreturn Get_Students>
</cffunction>

</cfcomponent>