<cfif form.subForm eq "Is this a palindrome?">
	<cfinvoke component="cfc.z57"
			  method="isPalindrome" 
			  returnvariable="isPalindrome">
		<cfinvokeargument name="myString" value="#FORM.WORD#">
	</cfinvoke>
	<cfif isPalindrome eq "TRUE">
		<cfset answer = "is a palindrome.">
	<cfelseif isPalindrome eq "FALSE">
		<cfset answer = "is <strong>NOT</strong> a palindrome.">	
	</cfif>	

<cfoutput>
<h1>The word you entered was #FORM.WORD#.</h1>
<p><emphasis>#FORM.WORD#</emphasis> #ANSWER#</p>
</cfoutput>

<cfelseif form.subForm eq "Which number appears an odd number of times?">
	<cfinvoke component="cfc.z57"
			  method="isOdd" 
			  returnvariable="isOdd">
		<cfinvokeargument name="numbers" value="#FORM.NUMBERS#">
	</cfinvoke>
<cfoutput>
<h1>The numbers you entered was #FORM.NUMBERS#.</h1>
<h2>This can be viewed as:</h2>
	<cfloop list="#FORM.NUMBERS#" index="numbers" delimiters=",">
		#numbers# <br>
	</cfloop>
<p>The number that appears an odd number of times is <strong>#isOdd#</strong>.</p>
</cfoutput>
</cfif>