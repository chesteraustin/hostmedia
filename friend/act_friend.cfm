<cfinvoke component="chestera_Friend.services.friend_old" 
		  method="add"
		  returnvariable="true">
	<cfinvokeargument name="name" value="#form.name#">
	<cfinvokeargument name="email" value="#form.email#">
	<cfinvokeargument name="phone" value="#form.phone#">
	<cfinvokeargument name="answer" value="#form.answer#">
</cfinvoke>

<cflocation url="index.cfm">