<cfcomponent>

<cffunction name="getQuestion" access="remote" returnformat="JSON">

	<cfquery name="getQuestion_sql" datasource="chestera_cah">
		SELECT question_rowid, question
		FROM questions
		ORDER BY rand()
		LIMIT 1
	</cfquery>

	<cfreturn getQuestion_sql>
</cffunction>

</cfcomponent>