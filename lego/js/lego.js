$(document).ready(function () {
	$("#setNumber").blur(function(){
		var setNumber = $(this).val();

		$.ajax({
			type: 'post',
			url: '../lego_services/api.cfc?ReturnFormat=json',
			data: {
				'method': 'walmartAPI',
				'searchTerm': 'LEGO '+setNumber,
			},
			dataType: 'json',
			success: function(response){
				var name = response.items[0].name;  
				var image = response.items[0].thumbnailImage;  
				console.log(name);
				console.log(image);
				$("#thisItem").text(name);
				$("#thisImage").attr("src", image);
			}
		});//end AJAX
//		console.log(setNumber);
	});    	
});