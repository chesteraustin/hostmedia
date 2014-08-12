<cfcomponent>
<cfprocessingdirective suppresswhitespace="true">

<cffunction name="addName" access="remote">
	<cfargument name="name" default="name">
	<cfargument name="position" default="1">
	<cfargument name="gender" default="gender">

	<cfquery name="addName_sql" datasource="chestera_main">
		INSERT INTO TPNames (
				TPName,
				Name_Position,
				Gender
			)
		VALUES (
				'#ARGUMENTS.NAME#',
				#ARGUMENTS.POSITION#,
				'#ARGUMENTS.GENDER#'
			)
	</cfquery>
	<cfquery name="checkName" datasource="chestera_main">
		SELECT *
		FROM TPNames
	</cfquery>
	<cfreturn checkName>
</cffunction>

<cffunction name="clearGender" access="remote">
	<cfargument name="gender" default="gender">

	<cfquery name="addName_sql" datasource="chestera_main">
		DELETE TPNames
		WHERE 0=0
		AND Gender = '#ARGUMENTS.GENDER#'
	</cfquery>
	<cfquery name="checkName" datasource="chestera_main">
		SELECT *
		FROM TPNames
	</cfquery>
	<cfreturn checkName>
</cffunction>

<cffunction name="getNames" access="remote">
	<cfargument name="gender" default="">

	<cfquery name="checkName" datasource="chestera_main">
		SELECT *
		FROM TPNames
		WHERE 0=0
		<cfif arguments.gender neq "">
		AND Gender = '#ARGUMENTS.gender#'
		</cfif>
		ORDER BY Name_Position
	</cfquery>
	<cfreturn getName>
</cffunction>

</cfprocessingdirective>
</cfcomponent>