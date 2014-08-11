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
	<cfreturn addName_sql>
</cffunction>
</cfcomponent>