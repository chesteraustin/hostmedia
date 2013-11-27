$(document).ready(function () {
	$("button").click(function(){
		var action = $(this).attr("id");
		$.ajax({
			type: 'post',
			url: 'http://www.chesteraustin.us/cfc/cards.cfc?ReturnFormat=json',
			data: {
				'method': 'remote_'+action
			},
			dataType: 'json',
			success: function(response){
					console.log(response);
				}//end success
			})//end AJAX

		console.log(action);
	});    	
});