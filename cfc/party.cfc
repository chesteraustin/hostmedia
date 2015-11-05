<cfcomponent>

<cffunction name="guestList"  access="remote">
	<cfargument name="guestID" default=""> 
	<cfquery name="guestList_sql" datasource="chestera_main">
		SELECT
			guestID,
			address,
			city,
			state,
			zip,
			printedAddress,
			attending,
			guests
		FROM partyGuests
		WHERE 0=0
		<cfif arguments.guestID neq "">
		and pumpID = #ARGUMENTS.GUESTID#
		</cfif>
		ORDER BY 1
	</cfquery>
	<!---Serialize and Deserialize the cfquery to shortcut obtaining a Structure--->
	<cfset queryAsStruct = DeSerializeJSON(SerializeJSON(guestList_sql))>
	<!---Now serialize the data key of the struct--->
	<cfset guestList_JSON = SerializeJSON(queryAsStruct.data)>
	<cfreturn guestList_JSON>
</cffunction>

</cfcomponent>