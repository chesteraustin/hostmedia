<!---Post Question to gameRecord table --->
<cfinvoke component="chestera_cah3.cfc.game" 
		  method="postQuestion"  
		  returnVariable="game" >
	<cfinvokeargument name="CFID" value="#CLIENT.CFID#" />
	<cfinvokeargument name="GAMEID" value="#CLIENT.GAMEID#" />
	<cfinvokeargument name="TURNID" value="#CLIENT.TURNID#" />
	<cfinvokeargument name="CARDPLAYED" value="#URL.ID#" />
	<cfinvokeargument name="ROLE" value="QUESTION" />
</cfinvoke>

<cflocation url="index.cfm?fuseaction=cards.waitResponse" addtoken="false" >