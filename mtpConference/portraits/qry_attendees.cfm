<!---Get list of attendees --->
<!---Read CSV --->
<!---
http://127.0.0.1:8500/mtpConference/portraits/qry_attendees.cfm
--->
<cfparam name="url.act" default="ALL">
<cfset var.url=cgi.http_host & "/mtpConference">
<cfhttp method="get" url="#var.url#/attendees.csv" name="attendees">

<!--- --->

<cfquery name="getAttendees" dbtype="query">
  SELECT *
  FROM attendees
  WHERE 0=0
  <cfif url.act neq "ALL">
  and category = '#ucase(url.act)#'
  </cfif>
</cfquery>
<!---
<cfdump var="#getAttendees#">
--->
