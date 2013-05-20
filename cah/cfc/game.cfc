<cfcomponent>

<cffunction name="nextGameID" access="public" output="true" returntype="Query" >
	<cfquery name="nextGameID_sql" datasource="chestera_cah">
		SELECT max(gameID) + 1 as nextID
		FROM gameRecord
	</cfquery> 
	<cfreturn nextGameID_sql>
</cffunction>

<cffunction name="findGame" access="public" output="true" returntype="Query" >
	<cfquery name="findGame_sql" datasource="chestera_cah">
		SELECT c.gameID as gameID
		FROM cards c
			LEFT JOIN gameRecord gr
			ON c.gameID = gr.gameID
		GROUP BY c.gameID
		ORDER BY 1
	</cfquery> 
	<cfreturn findGame_sql>
</cffunction>

<cffunction name="getResponse" access="public" output="true" returntype="Query" >
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">
	<cfquery name="getResponse_sql" datasource="chestera_cah">
		SELECT 
			c.cardPlayed as answer_rowID,
			a.answer as answer
		FROM cards c, answers a
		WHERE 0=0
		AND role = 'ANSWER'
		AND c.cardPlayed = a.answer_rowid
		AND gameID = #GAMEID#
		AND turnID = #TURNID#
		ORDER BY rand()
	</cfquery> 
	<cfreturn getResponse_sql>
</cffunction>

<cffunction name="getWinner" access="public" output="true" returntype="Query" >
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">
	<cfargument name="answerID" default="">
	<cfquery name="getWinner_sql" datasource="chestera_cah">
		SELECT 
			c.cfid as winnerID,
			p.player_id as playerID
		FROM cards c, players p
		WHERE 0=0
		AND c.role = 'ANSWER'
		AND c.cardPlayed = #ANSWERID#
		AND c.gameID = #GAMEID#
		AND c.turnID = #TURNID#
	</cfquery> 
	<cfreturn getWinner_sql>
</cffunction>

<cffunction name="addWinner" access="public" output="true" returntype="boolean" >
	<cfargument name="gameID" default="">
	<cfargument name="winnerID" default="">

	<cfquery name="addWinner_sql" datasource="chestera_cah">
		UPDATE gameRecord
		SET winnerID = #WINNERID#
		WHERE gameID = #GAMEID#
	</cfquery> 
	<cfreturn true>
</cffunction>

<cffunction name="broadcastWinner" access="public" output="true" returntype="Query" >
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">
	<cfquery name="getWinner_sql" datasource="chestera_cah">
	    SELECT a.answer, p.cfid
	    FROM answers a, cards c, gameRecord gr, players p
	    WHERE 0=0
	    AND c.cardPlayed = a.answer_rowID
	    AND c.role = 'ANSWER'
	    AND gr.winnerID = c.cfid
	    AND gr.winnerID = p.cfid
	    AND c.cfid = p.cfid
	    AND gr.gameID = c.gameID
	    AND gr.turnID = c.turnID
		AND c.gameID = #GAMEID#
		AND c.turnID = #TURNID#
	</cfquery> 
	<cfreturn getWinner_sql>
</cffunction>


<cffunction name="addGame" access="public" output="true" returntype="boolean" >
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">
	<cfargument name="winnerID" default="">

	<cfquery name="addGame_sql" datasource="chestera_cah">
		INSERT INTO gameRecord (
			gameID,
			turnID,
			winnerID
		)
		VALUES (
			#GAMEID#,
			#TURNID#,
			#WINNERID#
		)		
	</cfquery> 
	<cfreturn true>
</cffunction>

<cffunction name="addTurn" access="public" output="true" returntype="Query" >
	<cfargument name="cfid" default="">
	<cfargument name="gameID" default="">
	<cfargument name="turnID" default="">
	<cfargument name="cardPlayed" default="">
	<cfargument name="role" default="">

	<cfquery name="addGame_sql" datasource="chestera_cah">
		INSERT INTO cards (
			cfid,
			gameID,
			turnID,
			cardPlayed,
			role
		)
		VALUES (
			#CFID#,
			#GAMEID#,
			#TURNID#,
			#CARDPLAYED#,
			'#ROLE#'
		)		
	</cfquery> 
	<cfreturn addGame_sql>
</cffunction>

<cffunction name="postQuestion" access="public" output="true" returntype="boolean" >
	<cfargument name="CFID" default="">
	<cfargument name="GAMEID" default="">
	<cfargument name="TURNID" default="">
	<cfargument name="CARDPLAYED" default="">
	<cfargument name="ROLE" default="">

	<cfquery name="postQuestion_sql" datasource="chestera_cah">
		INSERT INTO cards (
			cfid,
			gameID,
			turnID,
			cardPlayed,
			role
		)
		VALUES (
			#CFID#,
			#GAMEID#,
			#TURNID#,
			#CARDPLAYED#,
			'#ROLE#'
		)
	</cfquery> 
	<cfreturn true>
</cffunction>

</cfcomponent>