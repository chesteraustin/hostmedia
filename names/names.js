$(document).ready(function () { 
	dialog = $("#newNameModal").dialog({
		autoOpen: false,
		height: 300,
		width: 350,
		modal: true,
		buttons: {
			"Add Name": function() {
				addName();
				getNames();
			},
			Close: function() {
				dialog.dialog("close");
			}
		},
		close: function() {
//			form[0].reset();
//			allFields.removeClass( "ui-state-error" );
		}
	});

	$("#newNameBtn").button().on( "click", function() {
		dialog.dialog( "open" );
	});

	$("#clearNamesBtn").button().on( "click", function() {
		clearNames();
	});

	$("#saveNamesBtn").button().on( "click", function() {
		saveNames();
	});

	getNames();
	$("#listNames").sortable();
	console.log("document ready");
});

function getNames(){
	//Clear all entries
	$("#listNames").empty();

	var gender = "male";

	$.ajax({
		type: 'get', 
		url: 'http://www.chesteraustin.us/cfc/TPNames.cfc?ReturnFormat=json',  
		data: {
			'method': 'getNames',
			'Gender': gender
			},
		contentType: 'json',
		dataType: 'json',
		success: function(response) {
			console.log(response);
			for(var i=0; i < response.DATA.length; i++) {
				var name = response.DATA[i][1];
				var newItem = document.createElement("li");
				newItem.className = "ui-state-default";
				newItem.innerHTML = name;

//				var addID = newItem.innerText(name);
				$("#listNames").append(newItem);
			};
		}
	});
}

function addName(){
	var newName = $("#newName").val();
	var gender = "male";
	var currentPosition = $("#listNames li").length + 1;

	$.ajax({
		type: 'get', 
		url: 'http://www.chesteraustin.us/cfc/TPNames.cfc?ReturnFormat=json',  
		data: {
			'method': 'addName',
			'name': newName,
			'position': currentPosition,
			'gender': gender
			},
		contentType: 'json',
		dataType: 'json',
		success: function(response) {
			console.log("addName run");
		}	
	});
}

function clearNames(){
	var gender = "male";

	$.ajax({
		type: 'get', 
		url: 'http://www.chesteraustin.us/cfc/TPNames.cfc?ReturnFormat=json',  
		data: {
			'method': 'clearGender',
			'gender': gender
			},
		contentType: 'json',
		dataType: 'json',
		success: function(response) {
			console.log("clearNames run");
		}	
	});

	//Repull names
	getNames();
}

function saveNames(){ 
	//Empty list
	clearNames();

	//Add Name
	$("li").each(function(index){
		var newName = $(this).text();
		var gender = "male";
		var currentPosition = index;

		$.ajax({
			type: 'get', 
			url: 'http://www.chesteraustin.us/cfc/TPNames.cfc?ReturnFormat=json',  
			data: {
				'method': 'addName',
				'name': newName,
				'position': currentPosition,
				'gender': gender
				},
			contentType: 'json',
			dataType: 'json',
			success: function(response) {
				console.log("addName run");
			}	
		});
	});

	//Repull names
	getNames();
}