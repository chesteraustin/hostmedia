<cfparam name="client.turnID" default="">
<cfparam name="client.playerRole" default="answer">

<!---Find a Game --->
	<cfinvoke component="chestera_cah2.cfc.game" 
			  method="findGame"  
			  returnVariable="findGame" >
	</cfinvoke>

<!---
	<!---If there is no turnID, start with 1--->
	<cfif client.turnID eq "">
		<cfset client.turnID = "1">
	<cfelse>
		<cfset client.turnID = client.turnID + 1>
	</cfif>

	<!---Add a player --->
	<cfinvoke component="ca_CAH.cfc.player" 
			  method="addPlayer"  
			  returnVariable="player" >
		<cfinvokeargument name="cfid" value="#CLIENT.CFID#" />
		<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
		<cfinvokeargument name="playerRole" value="#CLIENT.PLAYERROLE#" />
	</cfinvoke>
--->