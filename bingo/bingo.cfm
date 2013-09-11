<script src="js/bingo.js"></script>
<link href="css/bingo.css" rel="stylesheet">
<div class="table-responsive">
<table id="bingo" class="table">
	<thead>
		<tr id="row0">
			<th>B</th>
			<th>I</th>
			<th>N</th>
			<th>G</th>
			<th>O</th>
		</tr>
	</thead>
	<cfoutput>
	<tbody>
		<cfloop from="1" to="5" index="bRow">
		<tr id="row#bRow#">
			<cfloop from="1" to="5" index="bCol">
			<cfif bRow eq "3" and bCol eq "3">
			<td>
				<h5>Free Space</h5>
			</td>
			<cfelse>
			<td id="#bRow#_#bCol#">
				<input type="button" name="#bRow#_#bCol#" id="#bRow#_#bCol#" value="#bRow#_#bCol#" class="btn">
				</input>
			</td>
			</cfif>
			</cfloop>
		</tr>
		</cfloop>
	</tbody>
	</cfoutput>
</table>
</div>
