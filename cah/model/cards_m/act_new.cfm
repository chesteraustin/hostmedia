<cfparam name="client.turnID" default="">
<cfparam name="client.playerRole" default="question">

<!---Create a New Game --->

	<!---If there is no gameID, start with 1--->
	<cfinvoke component="chestera_cah2.cfc.game" 
			  method="nextGameID"  
			  returnVariable="nextGameID" >
	</cfinvoke>

	<cfif nextGameID.nextID eq "">
		<cfset client.gameID = "1">
	<cfelse>
		<cfset client.gameID = nextGameID.nextID>
	</cfif>

	<!---If there is no turn, start with 1--->
	<cfif client.turnID eq "">
		<cfset client.turnID = "1">
	<cfelse>
		<cfset client.turnID = client.turnID + 1>
	</cfif>

	<!---Add a game --->
	<cfinvoke component="ca_CAH.cfc.game" 
			  method="addGame"  
			  returnVariable="addGame" >
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
		<cfinvokeargument name="winnerID" value="null" />
	</cfinvoke>

	<!---Add a player --->
	<cfinvoke component="ca_CAH.cfc.player" 
			  method="addPlayer"  
			  returnVariable="player" >
		<cfinvokeargument name="cfid" value="#CLIENT.CFID#" />
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="playerRole" value="#CLIENT.PLAYERROLE#" />
	</cfinvoke>
