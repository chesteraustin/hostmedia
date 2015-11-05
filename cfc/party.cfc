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
	<cfreturn guestList_sql>
</cffunction>

</cfcomponent>