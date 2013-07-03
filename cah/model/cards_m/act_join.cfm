<cfparam name="client.turnID" default="">
<cfparam name="client.playerRole" default="answer">

<!---Join Game --->
<cfset client.gameID = url.ID>

<!---If there is no turnID, start with 1--->
<cfif client.turnID eq "">
	<cfset client.turnID = "1">
<cfelse>
	<cfset client.turnID = client.turnID + 1>
</cfif>

<!---Add a player --->
<cfinvoke component="chestera_cah3.cfc.player" 
		  method="addPlayer"  
		  returnVariable="player" >
	<cfinvokeargument name="cfid" value="#CLIENT.CFID#" />
	<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
	<cfinvokeargument name="playerRole" value="#CLIENT.PLAYERROLE#" />
</cfinvoke>
<!---<cfdump var="#client#">
<cfabort>
---><cflocation url="index.cfm?fuseaction=cards.getAnswers" addtoken="false">