<h1>Write a method to determine whether a string is a palindrome.</h1>
<form method="post" action="answers.cfm">
	<label>
		<p>Type a string:</p>
		<input type="text" name="word" placeholder="Type here">	
	</label>
	<label>
		<input type="submit" name="subForm" value="Is this a palindrome?">	
	</label>
</form>

<hr>

<h1>In an array of integers where all values except one appear in the array an even number of times, find the value that appears an odd number of times. Example: [6 2 8 6 8] - looking for 2</h1>
<form method="post" action="answers.cfm">
	<label>
		<p>Type a list of integers, seperated by a comma (,):</p>
		<input type="text" name="numbers" placeholder="Enter numbers here" value="6,2,8,6,8">	
	</label>
	<label>
		<input type="submit" name="subForm" value="Which number appears an odd number of times?">	
	</label>
</form>

<hr>

<h1>This is a random number from 1 to 20</h1>
<cfset myRandom = randrange(1, 20)>
<cfoutput>#myRandom#</cfoutput>

<hr>

<h1>How would you subtract 3 quarters from the following date: 31 December 2011?</h1>
<cfset myDate = dateformat("31 December 2011", "dd mmmm yyyy" )>
<cfset thisQuarter = dateadd("q", -3, myDate)>
<cfoutput>
<p>3 quarters from #myDate# is <strong>#dateformat(thisQuarter, "dd mmmm yyyy")#</strong>.</p>
</cfoutput>