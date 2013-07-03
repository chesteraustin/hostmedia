<!---Get the question for this turn --->
<cfinvoke component="chestera_cah2.cfc.question" 
		  method="thisQuestion"  
		  returnVariable="thisQuestion" >
	<cfinvokeargument name="gameID" value="#CLIENT.GAMEID#">
	<cfinvokeargument name="turnID" value="#CLIENT.TURNID#">
</cfinvoke>
<cfinvoke component="chestera_cah2.cfc.answer" 
		  method="thisAnswer"  
		  returnVariable="thisAnswer" >
</cfinvoke>
