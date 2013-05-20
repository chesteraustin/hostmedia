<cfoutput query="thisQuestion">
<div>
	<h1>#THISQUESTION.QUESTION#</h1>
</div>
</cfoutput>

<cfoutput query="winner">
<div>
	<h2>#ANSWER#</h2>
	<h3>by #cfid#</h3>
</div>
</cfoutput>

<div>
	<a href="index.cfm?fuseaction=cards.newTurn">New Turn</a>
</div>