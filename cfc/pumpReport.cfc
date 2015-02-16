<cfcomponent>

<cffunction name="generalSearch"  access="remote">
	<cfargument name="pumpID" default="" required="true"> 
	<cfquery name="generalSearch_sql" datasource="chestera_main">
		SELECT 
			pumpID,
			date_format(pumpDate, '%m-%d-%Y') as pumpDate,
			pumpTime,
			pumpTotal,
			pumpUnit,
			leftSide,
			rightSide,
			storageLocation,
			username
		FROM pumpRecord
		WHERE 0=0
		<cfif arguments.pumpID neq "">
		and pumpID = #ARGUMENTS.PUMPID#
		</cfif>
	</cfquery>
	<cfreturn generalSearch_sql>
</cffunction>

</cfcomponent>