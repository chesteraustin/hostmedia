<cfif client.playerRole eq "question">
	<!---Get winner ID --->
	<cfinvoke component="chestera_cah3.cfc.cfc.game" 
			  method="getWinner"  
			  returnVariable="getWinner" >
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
		<cfinvokeargument name="answerID" value="#URL.ID#" />
	</cfinvoke>

	<!---Post Winner --->
	<cfinvoke component="chestera_cah3.cfc.cfc.game" 
			  method="addWinner">
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
		<cfinvokeargument name="winnerID" value="#getWinner.winnerID#" />
	</cfinvoke>

	<!---What was the question? --->
	<cfinvoke component="chestera_cah3.cfc.cfc.question" 
			  method="thisQuestion"
			  returnvariable="thisQuestion">
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
	</cfinvoke>


	<!---Who won? --->
	<cfinvoke component="chestera_cah3.cfc.cfc.game" 
			  method="broadcastWinner"
			  returnVariable="winner" >
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
	</cfinvoke>

<cfelse>
	<!---Who won? --->
	<cfinvoke component="chestera_cah3.cfc.cfc.game" 
			  method="broadcastWinner"
			  returnVariable="winner" >
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
	</cfinvoke>
	

</cfif>