<script type="text/javascript">
	$('.carousel').carousel({
		interval: false
	});
</script>

<cfoutput query="question">
<div>
	<a href="index.cfm?fuseaction=cards.postQuestion&id=#QUESTION_ROWID#" class="btn">#QUESTION#</a>	
</div>
</cfoutput>
<!---
<form method="post" action="index.cfm?fuseaction=cards.postQuestion">
<cfoutput query="question">
<div>
	<input type="submit" name="postQuestion" value="#QUESTION#">
</div>
</cfoutput>

<div id="myCarousel" class="carousel slide">
	<!-- Carousel items -->
	<div class="carousel-inner center">
		<cfoutput query="question">
		<div id="" class="item">
			<input type="submit" name="postQuestion" value="#QUESTION#">
		</div>
		</cfoutput>
	</div>

	<!-- Carousel nav -->
	<a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
	<a class="carousel-control right" href="#myCarousel" data-slide="next"></a>
</div>	
</form>
--->
