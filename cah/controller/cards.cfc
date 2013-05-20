<cfcomponent output="false">
	
	<cffunction name="postfuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		
		<!--- do the layout --->
		<cfset myFusebox.do( action="cards_v.admin", contentvariable="admin" ) />
		<cfset myFusebox.do( action="cards_v.games", contentvariable="games" ) />
		<cfset myFusebox.do( action="main.template" ) />
	</cffunction>

	<cffunction name="home">
		<cfset myFusebox.do( action="cards_v.home", contentvariable="body" ) />
		<cfset myFusebox.do( action="cards_v.admin", contentvariable="admin" ) />
	</cffunction>

	<!---Creating a New Game --->
	<cffunction name="new">
		<!--- do model fuse --->
		<cfset myFusebox.do( action="cards_m.act_new" ) />
		<cfset myFusebox.do( action="questions_m.act_new" ) />

		<!--- do display fuse and set content variable body --->
		<cfset myFusebox.do( action="questions_v.dsp_new", contentvariable="body" ) />
	</cffunction>

	<!---Join an Existing Game --->
	<cffunction name="look">
		<!--- do model fuse --->
		<cfset myFusebox.do( action="cards_m.qry_join" ) />

		<!--- do display fuse and set content variable body --->
		<cfset myFusebox.do( action="cards_v.dsp_join", contentvariable="body" ) />
	</cffunction>

	<cffunction name="join">
		<!--- do model fuse --->
		<cfset myFusebox.do( action="cards_m.act_join" ) />
	</cffunction>

	<cffunction name="postQuestion">
		<!--- do model fuse --->
		<cfset myFusebox.do( action="questions_m.act_postQuestion" ) />
	</cffunction>

	<cffunction name="postAnswer">
		<!--- do model fuse --->
		<cfset myFusebox.do( action="answers_m.act_postAnswer" ) />
	</cffunction>

	<cffunction name="waitResponse">
		<cfset myFusebox.do( action="questions_m.qry_waitResponse" ) />

		<!--- do display fuse and set content variable body --->
		<cfset myFusebox.do( action="questions_v.dsp_waitResponse", contentvariable="body" ) />
	</cffunction>

	<cffunction name="getAnswers">
		<cfset myFusebox.do( action="answers_m.qry_answers" ) />

		<!--- do display fuse and set content variable body --->
		<cfset myFusebox.do( action="answers_v.dsp_answers", contentvariable="body" ) />
	</cffunction>

	<cffunction name="chooseWinner">
		<cfset myFusebox.do( action="answers_m.act_chooseWinner" ) />

		<!--- do display fuse and set content variable body --->
		<cfset myFusebox.do( action="answers_v.dsp_chooseWinner", contentvariable="body" ) />
	</cffunction>

	<cffunction name="newTurn">
		<cfset myFusebox.do( action="cards_m.act_newTurn" ) />
	</cffunction>

	<cffunction name="clearClient">
		<cfset myFusebox.do( action="cards_m.act_clearClient" ) />
	</cffunction>

	<cffunction name="clearGames">
		<cfset myFusebox.do( action="cards_m.act_clearGames" ) />
	</cffunction>

</cfcomponent>