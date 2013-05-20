<cfoutput query="thisQuestion">
<div>
	<h1>#THISQUESTION.QUESTION#</h1>
</div>
</cfoutput>

<cfoutput query="thisAnswer">
<div>
	<a href="index.cfm?fuseaction=cards.postAnswer&id=#ANSWER_ROWID#" class="btn">#ANSWER#</a>	
</div>
</cfoutput>