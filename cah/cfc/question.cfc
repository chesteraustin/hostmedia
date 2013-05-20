<cfcomponent>

<cffunction name="nextQuestion" access="remote" returntype="Query" >
	<cfquery name="nextQuestion_sql" datasource="chestera_cah">
		SELECT question_rowid, question
		FROM questions
		ORDER BY rand()
		LIMIT 5
	</cfquery>
	<cfreturn nextQuestion_sql>
</cffunction> 

<cffunction name="thisQuestion" access="remote" returntype="Query" >
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">

	<cfquery name="thisQuestion_sql" datasource="chestera_cah">
		SELECT c.cardPlayed, q.question
		FROM questions q, cards c
		WHERE 0=0
		AND c.cardPlayed = q.question_rowID
		AND gameID = #GAMEID#
		AND turnID = #TURNID#
		AND role = 'QUESTION'
	</cfquery>
	<cfreturn thisQuestion_sql>
</cffunction> 


</cfcomponent>