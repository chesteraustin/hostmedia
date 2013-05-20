<cfcomponent>

<cffunction name="addPlayer" access="public" output="true" returntype="boolean" >
	<cfargument name="cfid" default="">
	<cfargument name="gameID" default="">
	<cfargument name="playerRole" default="">
	
	<cfquery name="addPlayer_sql" datasource="chestera_cah">
		INSERT INTO players (
			cfid,
			gameid,
			playerRole
		)
		VALUES (
			#CFID#,
			#GAMEID#,
			'#PLAYERROLE#'
		)
	</cfquery> 
	<cfreturn true>
</cffunction>

</cfcomponent>