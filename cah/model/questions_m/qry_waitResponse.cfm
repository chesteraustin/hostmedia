<!---Get the question for this turn --->
<cfinvoke component="chestera_cah.cfc.question" 
		  method="thisQuestion"  
		  returnVariable="thisQuestion" >
	<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#">
	<cfinvokeargument name="turnID" value="#CLIENT.TURNID#">
</cfinvoke>

<!---Get Responses --->
<cfinvoke component="ca_CAH.cfc.game" 
		  method="getResponse"  
		  returnVariable="thisResponse" >
	<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#" />
	<cfinvokeargument name="turnID" value="#CLIENT.TURNID#" />
</cfinvoke>
