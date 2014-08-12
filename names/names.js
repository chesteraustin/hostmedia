$(document).ready(function () { 
	addName();
	console.log("document ready");
});

function addName(){
	var name = "jsName";
	var position = 7;
	var gender = "jsGen";

	$.ajax({
		type: 'get', 
		url: 'http://www.chesteraustin.us/cfc/TPNames.cfc?ReturnFormat=json',  
		data: {
			'method': 'clearGender',
			'Name': name,
			'Position': position,
			'Gender': gender
			},
		contentType: 'json',
		dataType: 'json',
		success: function(response) {
			console.log("addName run");
		}	
	});
}