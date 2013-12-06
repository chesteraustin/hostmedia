<cffunction name="getQuestion" access="remote" returnformat="JSON">

	<cfif cgi.server_name eq "www.chesteraustin.us">
	<cfquery name="getQuestion_sql" datasource="chestera_cah">
		SELECT question_rowid, question
		FROM questions
		ORDER BY rand()
		LIMIT 5
	</cfquery>
	<cfelse>
	<cfset getQuestion_sql = queryNew("question_rowid, question", "integer, varchar")>

	<cfloop index="i" from="1" to="5">
		<cfset newRow = queryAddRow(getQuestion_sql, 1)>	
		<cfset newCell = querySetCell(getQuestion_sql, "question_rowid", i)>
		<cfset newCell = querySetCell(getQuestion_sql, "question", "Question_"&i)>
	</cfloop>

	</cfif>

	<cfreturn getQuestion_sql>
</cffunction>