$(document).ready(function () {
	$("button").click(function(){
		var action = $(this).attr("id");
		$("."+action+"Response_li").remove();
		$.ajax({
			type: 'post',
//			url: 'http://www.chesteraustin.us/cfc/cards.cfc?ReturnFormat=json', //with CORS
			url: 'http://www.chesteraustin.us/cfc/cards.cfc?ReturnFormat=json', //without CORS
//			url: '../cfc/cards.cfc?ReturnFormat=json', //without CORS
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
													+'<li class="'+action+'Response_li">'+text_value+'</li>'
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

