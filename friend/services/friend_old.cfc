<cfcomponent>
	
<cffunction name="add" access="remote" returntype="boolean" >
	<cfargument name="name" default="">
	<cfargument name="email" default="">
	<cfargument name="phone" default="">
	<cfargument name="answer" default="">
	
	<cfquery name="new_friend" datasource="chestera_friend">
		INSERT INTO friend (
			name,
			email,
			phone,
			answer
		)
		VALUES (
			'#NAME#',
			'#EMAIL#',
			'#PHONE#',
			'#ANSWER#'
		) 
	</cfquery>
	<cfreturn true>
</cffunction>

<cffunction name="data" access="remote" output="false" returnformat="JSON" >
	<cfquery name="new_friend" datasource="chestera_friend">
		SELECT
			f.id as id,
			f.name as name,
			f.email as email,
			f.phone as phone,
			f.answer as answer
		FROM friend f
	</cfquery>
	<cfreturn new_friend>
</cffunction>

</cfcomponent>