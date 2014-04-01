<cfcomponent>
<cfprocessingdirective suppresswhitespace="true">

<cffunction name="QueryToArray" access="public" returntype="array" output="false"
	hint="This turns a query into an array of structures.">

	<!--- Define arguments. --->
	<cfargument name="Data" type="query" required="yes" />

	<cfscript>

		// Define the local scope.
		var LOCAL = StructNew();

		// Get the column names as an array.
		LOCAL.Columns = ListToArray( ARGUMENTS.Data.ColumnList );

		// Create an array that will hold the query equivalent.
		LOCAL.QueryArray = ArrayNew( 1 );

		// Loop over the query.
		for (LOCAL.RowIndex = 1 ; LOCAL.RowIndex LTE ARGUMENTS.Data.RecordCount ; LOCAL.RowIndex = (LOCAL.RowIndex + 1)){

			// Create a row structure.
			LOCAL.Row = StructNew();

			// Loop over the columns in this row.
			for (LOCAL.ColumnIndex = 1 ; LOCAL.ColumnIndex LTE ArrayLen( LOCAL.Columns ) ; LOCAL.ColumnIndex = (LOCAL.ColumnIndex + 1)){

				// Get a reference to the query column.
				LOCAL.ColumnName = LOCAL.Columns[ LOCAL.ColumnIndex ];

				// Store the query cell value into the struct by key.
				LOCAL.Row[ LOCAL.ColumnName ] = ARGUMENTS.Data[ LOCAL.ColumnName ][ LOCAL.RowIndex ];

			}

			// Add the structure to the query array.
			ArrayAppend( LOCAL.QueryArray, LOCAL.Row );

		}

		// Return the array equivalent.
		return( LOCAL.QueryArray );

	</cfscript>
</cffunction>

<cffunction name="setEntry" access="remote" returntype="boolean">
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

	<cfscript>
		local.myString = StructNew();
  		local.myString['aaData'] = QueryToArray(getEntry_sql);
  		return local.myString;
	</cfscript>
</cffunction>

<cffunction name="testEntry" access="remote" returnformat="JSON">
<!---
http://127.0.0.1:8500/hostmedia/cfc/entry.cfc?ReturnFormat=json&method=testEntry
 --->
	<cfset JSONString = queryNew("ID, Name", "integer, VarChar")>
	<cfset newRow = QueryAddRow(JSONString, 1)>
	<cfset thisCell = QuerySetCell(JSONString, "ID", 1)>
	<cfset thisCell = QuerySetCell(JSONString, "Name", "myName")>

	<cfscript>
		local.myString = StructNew();
  		local.myString['aaData'] = QueryToArray(JSONString);
  		return local.myString;
	</cfscript>
<!---
	<cfreturn var.JSONString>
--->
</cffunction>
</cfprocessingdirective>
</cfcomponent>
