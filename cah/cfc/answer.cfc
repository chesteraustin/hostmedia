<cfcomponent>

<cffunction name="thisAnswer" access="remote" returntype="Query" >
	<cfquery name="thisAnswer_sql" datasource="chestera_cah">
		SELECT answer_rowid, answer
		FROM answers
		ORDER BY rand()
		LIMIT 5
	</cfquery>
	<cfreturn thisAnswer_sql>
</cffunction> 

</cfcomponent>