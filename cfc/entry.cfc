<cfcomponent>
<cfheader name="Access-Control-Allow-Origin" value="*" />
<cfheader name="Access-Control-Allow-Methods" value="GET,PUT,POST,DELETE,OPTIONS" />
<cfheader name="Access-Control-Allow-Headers" value="Content-Type" />
<!---
<cffunction name="setEntry" access="remote">
	<cfscript>
		var response = getPageContext().getResponse();
		response.setHeader("Access-Control-Allow-Origin","*");
		response.setHeader("Access-Control-Allow-Headers","Origin, X-Authorization");
		response.setHeader("Access-Control-Allow-Methods","GET, PUT, POST, DELETE, OPTIONS");
	</cfscript>
	<cfargument name="Set_Name" default="" />
	<cfargument name="Set_Number" default="" />
	<cfargument name="Set_Theme" default="" />
	<cfargument name="Purchase_Price" default="" />
	<cfargument name="Purchase_From" default="" />
	<cfargument name="Purchase_Date" default="" />
	<cfargument name="Status" default="" />
	<cfargument name="Sell_Price" default="" />
	<cfargument name="Sell_From" default="" />
	<cfargument name="Sell_date" default="" />

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
				'#arguments.purchase_price#', 
				'#arguments.purchase_from#', 
				'#arguments.purchase_date#', 
				'#arguments.status#', 
				'#arguments.sell_price#', 
				'#arguments.sell_from#', 
				'#arguments.sell_date#')
	</cfquery>
	<cfreturn true>
</cffunction>

<cffunction name="getEntry" access="remote" returnformat="JSON">
	<cfquery name="getEntry_sql" datasource="chestera_main">
		SELECT *
		FROM entry
	</cfquery>
	<cfreturn getEntry_sql>
</cffunction>
--->

<cffunction name="testEntry" access="remote" returnformat="JSON">
	<cfsavecontent variable="myString">
{
    "firstName": "John",
    "lastName": "Smith",
    "isAlive": true,
    "age": 25,
    "height_cm": 167.64,
    "address": {
        "streetAddress": "21 2nd Street",
        "city": "New York",
        "state": "NY",
        "postalCode": "10021-3100"
    },
    "phoneNumbers": [
        { "type": "home", "number": "212 555-1234" },
        { "type": "fax",  "number": "646 555-4567" }
    ]
}
	</cfsavecontent>
	<cfreturn myString>
</cffunction>
</cfcomponent>