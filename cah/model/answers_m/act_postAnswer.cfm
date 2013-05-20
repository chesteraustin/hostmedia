<!---Post ANSWER to gameRecord table --->
<cfinvoke component="ca_CAH.cfc.game" 
		  method="postQuestion"  
		  returnVariable="game" >
	<cfinvokeargument name="CFID" value="#CLIENT.CFID#" />
	<cfinvokeargument name="GAMEID" value="#CLIENT.GAMEID#" />
	<cfinvokeargument name="TURNID" value="#CLIENT.TURNID#" />
	<cfinvokeargument name="CARDPLAYED" value="#URL.ID#" />
	<cfinvokeargument name="ROLE" value="ANSWER" />
</cfinvoke>

<cflocation url="index.cfm?fuseaction=cards.waitResponse" addtoken="false" >