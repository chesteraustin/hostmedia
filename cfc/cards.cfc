<cfcomponent>

<cffunction name="getQuestion" access="remote" returnformat="JSON">

	<cfquery name="getQuestion_sql" datasource="chestera_cah">
		SELECT question_rowid, question
		FROM questions
		ORDER BY rand()
		LIMIT 1
	</cfquery>

	<cfreturn getQuestion_sql>
</cffunction>

<cffunction name="remote_getQuestion" access="remote" returnType="any" returnFormat="plain" output="false">
    <cfargument name="callback" type="string" required="false">
    <cfset var data = getQuestion()>
    
    <!--- serialize --->
    <cfset data = serializeJSON(data)>
    
    <!--- wrap --->
    <cfif structKeyExists(arguments, "callback")>
        <cfset data = arguments.callback & "(" & data & ")">
    </cfif>
    
    <cfreturn data>
</cffunction>

</cfcomponent>