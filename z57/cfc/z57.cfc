<cfcomponent>

<cffunction name="isPalindrome" returntype="boolean">
    <cfargument name="myString" default="">
    
    <cfset reverseString = reverse(myString)>
    
    <cfif myString eq reverseString>
        <cfset isPalindrome = "TRUE">
    <cfelse>
        <cfset isPalindrome = "FALSE">
    </cfif>

    <cfreturn isPalindrome>
</cffunction>

<cffunction name="isOdd" returntype="string">
    <cfargument name="numbers" default="">

	<!---Convert list to array --->
	<cfset NUMBERS_ARRAY = listtoarray(numbers)> 
	<!---Add numbers to oddAppearance --->
	<cfset oddAppearance = "">

	<!---Take number from array and loop through and see if you can find that number --->
    <cfloop array="#NUMBERS_ARRAY#" index="findMatch">

		<cfset appears = 0> <!---initial count number appears --->
		<cfloop array="#NUMBERS_ARRAY#" index="checkMatch">
			<cfif checkMatch eq findMatch>
				<cfset appears = appears + 1>
			</cfif>
		</cfloop>
			<cfif appears mod 2 eq 1>
				<cfif oddAppearance eq "">
					<cfset oddAppearance = findMatch>
				<cfelse>
					<cfset oddAppearance = oddAppearance&","&findMatch>
				</cfif>
			</cfif>
	</cfloop>

	<cfreturn oddAppearance>
</cffunction>
</cfcomponent>