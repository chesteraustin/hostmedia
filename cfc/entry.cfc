<cfcomponent>
<cfheader name="Access-Control-Allow-Origin" value="*">

<cffunction name="setEntry" access="remote" returnformat="JSON">
	<cfargument name="Set_Name" default="">
	<cfargument name="Set_Number" default="">
	<cfargument name="Set_Theme" default="">
	<cfargument name="Purchase_Price" default="">
	<cfargument name="Purchase_From" default="">
	<cfargument name="Purchase_Date" default="">
	<cfargument name="Status" default="">
	<cfargument name="Sell_Price" default="">
	<cfargument name="Sell_From" default="">
	<cfargument name="Sell_date" default="">
	<cfquery name="setEntry" datasource="chestera_main">
			INSERT INTO entry (
				Set_Name,
				Set_Number, 
				Set_Theme, 
				Purchase_Price, 
				Purchase_From, 
				Purchase_Date, 
				Status, 
				Sell_Price, 
				Sell_From, 
				Sell_Date ) 
			VALUES (
				'#arguments.set_name#', 
				'#arguments.set_number#', 
				'#arguments.set_theme#', 
				'#arguments.pruchase_price#', 
				'#arguments.purchase_from#', 
				'#arguments.purchase_date#', 
				'#arguments.status#', 
				'#arguments.sell_price#', 
				'#arguments.sell_from#', 
				'#arguments.sell_date#');
	</cfquery>
	<cfreturn setEntry>
</cffunction>

<cffunction name="getEntry" access="remote" returnformat="JSON">
	<cfquery name="getEntry_sql" datasource="chestera_main">
		SELECT *
		FROM entry
	</cfquery>
	<cfreturn getEntry_sql>
</cffunction>
</cfcomponent>