<cfcomponent>
<cffunction name="insert" access="remote">
	<!---Create new user --->
	<cfargument name="userName" default="" required="true">	
	<cfargument name="role" default="user">	

	<cfset var.cfid = client.cfid>
	<cfset var.cftoken = client.cftoken>
	<cfset var.uuid = createUUID()>
	
	<cfquery name="insertRecord" datasource="chestera_main">
		INSERT INTO users (
			cfid,
			cftoken,
			username,
			role,
			uuid
		)
		VALUES (
			'#VAR.CFID#',
			'#VAR.CFTOKEN#',
			'#ARGUMENTS.USERNAME#',
			'#ARGUMENTS.ROLE#',
			'#VAR.UUID#'
		)
	</cfquery>
</cffunction>

<cffunction name="update" access="remote">
	<cfargument name="userName" default="" required="true">	
	<cfargument name="role" default="user">	

	<cfquery name="updateRecord" datasource="chestera_main">
		UPDATE users
		SET 
			username = '#ARGUMENTS.USERNAME#',
			role = '#ARGUMENTS.ROLE#'
		WHERE 0=0
		AND pumpID = #ARGUMENTS.USERNAME#
	</cfquery>
</cffunction>

<cffunction name="delete" access="remote">
	<cfargument name="userName" default="" required="true">	

	<cfquery name="deleteRecord" datasource="chestera_main">
		DELETE FROM users
		WHERE 0=0
		AND username = #ARGUMENTS.USERNAME#
	</cfquery>	
</cffunction>

<cffunction name="search" access="remote">
	<cfargument name="userName" default="">	
	<cfargument name="role" default="">
	<cfargument name="CFID" default="">
	<cfargument name="CFTOKEN" default="">
	<cfargument name="UUID" default="">

	<cfquery name="generalSearch_sql" datasource="chestera_main">
		SELECT *
		FROM USERS
		WHERE 0=0
		<cfif arguments.USERNAME neq "">
		and username = #ARGUMENTS.USERNAME#
		</cfif>
		<cfif arguments.ROLE neq "">
		and role = #ARGUMENTS.ROLE#
		</cfif>
		<cfif arguments.CFID neq "">
		and CFID = #ARGUMENTS.CFID#
		</cfif>
		<cfif arguments.CFTOKEN neq "">
		and CFTOKEN = #ARGUMENTS.CFTOKEN#
		</cfif>
		<cfif arguments.UUID neq "">
		and UUID = #ARGUMENTS.UUID#
		</cfif>
	</cfquery>
	<cfreturn generalSearch_sql>
</cffunction>


</cfcomponent>