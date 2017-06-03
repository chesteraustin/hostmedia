<cfcomponent>
<cfsetting enableCFoutputOnly="true">
<cfprocessingdirective suppressWhiteSpace="true">
<cffunction name="getRecommendations" access="remote">
    <cfargument name="term" default="" required="true">
    <cfargument name="location" default="" required="true">
    <cfargument name="latitude" default="" required="true">
    <cfargument name="longitude" default="" required="true">
    <cfargument name="categories" default="" required="true">
    <cfargument name="radius" default="" required="true">
    <cfargument name="open_now" default="" required="true">
    <cfargument name="sort_by" default="" required="true">
    <cfargument name="limit" default="" required="true">
    <cfargument name="key" default="" required="true">
    <cfset local.correctKey = "1234567890">
    <cfif arguments.key eq local.correctKey>
        <cfhttp url="https://api.yelp.com/v3/businesses/search?" method="get">
            <cfhttpparam type="Header" name="Authorization"  value="Bearer 5u1vBzlUZtkYZgd-AGdYh17UWZiTW69u70bpFgnGUEwwhCLXjJV9qoveHkK6QKyryr81NwG4YtckIsnfA88qa7GZAov95IvyOaJnjvArumbCjlvp2eXr3UOPrP8kWXYx"> 
            <cfhttpparam type="url" name="term" value="#URLEncodedFormat(arguments.term)#">
            <cfhttpparam type="url" name="location" value="#URLEncodedFormat(arguments.location)#">
            <cfhttpparam type="url" name="latitude" value="#arguments.latitude#">
            <cfhttpparam type="url" name="longitude" value="#arguments.longitude#">
            <cfhttpparam type="url" name="categories" value="#URLEncodedFormat(arguments.categories)#">
            <cfhttpparam type="url" name="radius" value="#URLEncodedFormat(arguments.radius)#">
            <cfhttpparam type="url" name="open_now" value="#URLEncodedFormat(arguments.open_now)#">
            <cfhttpparam type="url" name="sort_by" value="#arguments.sort_by#">
            <cfhttpparam type="url" name="limit" value="#URLEncodedFormat(arguments.limit)#">
        </cfhttp>
        <cfset yelpResponse = trim(cfhttp.fileContent)>
    <cfelse>
        <cfset yelpResponse = "Wrong Key">
    </cfif>
	<cfreturn trim(yelpResponse)>
</cffunction>

<cffunction name="sendEmail" access="remote">
    <cfargument name="from" default="" required="true">
    <cfargument name="to" default="" required="true">
    <cfargument name="eventID" default="" required="true">
    <cfargument name="userID" default="" required="true">
    <cfargument name="key" default="" required="true">
    <cfset local.correctKey = "1234567890">
    <cfif arguments.key eq local.correctKey>

        <cfmail from="#arguments.from#" to="#arguments.to#" subject="You have been invited!" type="html">
        <cfoutput>
        <h1>Someone invited you to a meetup.</h1>
        <a href="https://lavinnakimberly.github.io/Project-1/invite.html?id=#arguments.userID#&eventID=#arguments.eventID#">Click here to view invitation.</a>
        </cfoutput>
        </cfmail>
        <cfset emailResponse = "Message Sent">
    <cfelse>
        <cfset emailResponse = "Wrong Key">
    </cfif>

	<cfreturn trim(emailResponse)>

</cffunction>
</cfprocessingdirective>
</cfcomponent>