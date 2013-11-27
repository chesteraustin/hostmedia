$(document).ready(function () {
	$("button").click(function(){
		var action = $(this).attr("id");
		$.ajax({
			type: 'post',
			url: '../cfc/cards.cfc?ReturnFormat=json',
			data: {
				'method': action
			},
			dataType: 'json',
			success: function(response){
				for(var i=0; i<response.DATA.length; i++) {
					var id_value = response.DATA[i][0];
					var text_value = response.DATA[i][1];
//					console.log(id_value);
//					console.log(question_value);
					$("#"+action+"Response").append(''
//													+'<li> <a href="#" id="'+id_value+'">'+question_value+'</a></li>'
													+'<li>'+text_value+'</li>'
						+'')
					}//end LOOP
				}//end success
			});//end AJAX

//		console.log(action);
	});    	
	$("#refresh").click(function(){
		window.location.reload();
	});
});

