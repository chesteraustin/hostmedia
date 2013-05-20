<cfquery name="trunc_cards" datasource="chestera_cah">
	TRUNCATE TABLE cards
</cfquery>

<cfquery name="trunc_gameRecord" datasource="chestera_cah">
	TRUNCATE TABLE gameRecord
</cfquery>

<cfquery name="trunc_Players" datasource="chestera_cah">
	TRUNCATE TABLE players
</cfquery>

<cflocation url="index.cfm" addtoken="false">