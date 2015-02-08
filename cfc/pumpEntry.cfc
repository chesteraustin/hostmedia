<cfcomponent>
<cffunction name="insert" access="remote">
	<cfargument name="pumpDate" default="#now()#">	
	<cfargument name="pumpTime" default="#now()#">	
	<cfargument name="pumpUnit" default="mL">	
	<cfargument name="leftSide" default="0">
	<cfargument name="rightSide" default="0">
	<cfargument name="storageLocation" default="freezer bag">
	<cfargument name="username" default="" required="required">

	<cfset var.pumpTotal = arguments.leftSide + arguments.rightSide>

	<cfquery name="insertRecord" datasource="chestera_main">
		INSERT INTO pumpRecord (
			pumpDate,
			pumpTime,
			pumpTotal,
			pumpUnit,
			leftSide,
			rightSide,
			storageLocation,
			username
		)
		VALUES (
			'#ARGUMENTS.PUMPDATE#',
			'#ARGUMENTS.PUMPTIME#',
			#VAR.PUMPTOTAL#,
			'#ARGUMENTS.PUMPUNIT#',
			#ARGUMENTS.LEFTSIDE#,
			#ARGUMENTS.RIGHTSIDE#,
			'#ARGUMENTS.STORAGELOCATION#',
			'#ARGUMENTS.USERNAME#'
		)
	</cfquery>
</cffunction>

<cffunction name="update" access="remote">
	<cfargument name="pumpID" default="" required="true"> 
	<cfargument name="pumpDate" default="#now()#">	
	<cfargument name="pumpTime" default="#now()#">	
	<cfargument name="pumpTotal" default="0">	
	<cfargument name="pumpUnit" default="mL">	
	<cfargument name="leftSide" default="0">
	<cfargument name="rightSide" default="0">
	<cfargument name="storageLocation" default="freezer bag">
	
	<cfquery name="updateRecord" datasource="chestera_main">
		UPDATE pumpRecord
		SET 
			pumpDate = '#ARGUMENTS.PUMPDATE#',
			pumpTime = '#ARGUMENTS.PUMPTIME#',
			pumpTotal = #ARGUMENTS.PUMPTOTAL#,
			pumpUnit = '#ARGUMENTS.PUMPUNIT#',
			leftSide = #ARGUMENTS.LEFTSIDE#,
			rightSide = #ARGUMENTS.RIGHTSIDE#,
			storageLocation = '#ARGUMENTS.STORAGELOCATION#'
		WHERE 0=0
		AND pumpID = #ARGUMENTS.PUMPID#
	</cfquery>
</cffunction>

<cffunction name="delete" access="remote">
	<cfargument name="pumpID" default="" required="true"> 

	<cfquery name="deleteRecord" datasource="chestera_main">
		DELETE FROM pumpRecord
		WHERE 0=0
		AND pumpID = #ARGUMENTS.PUMPID#
	</cfquery>
	
</cffunction>

</cfcomponent>