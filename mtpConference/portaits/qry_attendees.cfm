<!---Get list of attendees --->
<!---Read CSV --->
<!---
http://127.0.0.1:8500/mtpConference/portraits/qry_attendees.cfm
--->
<cfset var.url=cgi.http_host & "/mtpConference/">
<cfhttp method="get" url= var.url & "attendees.csv" name="attendees">
<cfdump var="#cfhttp#">
