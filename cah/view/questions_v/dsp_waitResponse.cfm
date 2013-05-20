<cfoutput query="thisQuestion">
<div>
	<h1>#THISQUESTION.QUESTION#</h1>
</div>
</cfoutput>

<cfoutput query="thisResponse">
<div>
	<a href="index.cfm?fuseaction=cards.chooseWinner&id=#ANSWER_ROWID#" class="btn">#ANSWER#</a>	
</div>
</cfoutput>

<div>
	<a href="index.cfm?fuseaction=cards.waitResponse">Refresh</a>
</div>