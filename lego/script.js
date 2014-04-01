/*
$(document).ready(function () {
	$("[type='radio']").click(function(){

		var clickedValue = $(this).val(); //gets the value of the radio button clicked
		var addNote = $("#messageValue").html(clickedValue); //puts that value in between tags
		var showNote = $("#message").show(); //makes DIV visible

		console.log("You clicked " + clickedValue); //log to console

	})//end click 
})//end DOCUMENT = READY function

*/

$(document).ready(function () {
	$("#submit").click(function(){
        var setName = $("input[name='setName']").val();
        var setNumber = $("input[name='setNumber']").val();
        var setTheme = $("input[name='setTheme']").val();

        var retailPrice = $("input[name='retailPrice']").val();
        var purchaseStore = $("input[name='purchaseStore']").val();
        var purchaseDate = $("input[name='purchaseDate']").val();
        var purchasePrice = $("input[name='purchasePrice']").val();

        var condition = $("input[name='condition']").val();

        var sellPrice = $("input[name='sellPrice']").val();
        var sellStore = $("input[name='sellStore']").val();
        var selldate = $("input[name='selldate']").val();

        console.log(setName);
        console.log(setNumber);
        console.log(setTheme);
        console.log(retailPrice);
        console.log(purchaseStore);   
        console.log(purchaseDate);
        console.log(purchasePrice);
        console.log(condition);    
        console.log(sellPrice);
        console.log(sellStore);
        console.log(selldate);

	$.ajax({
		type: 'get',  //there's two options, post and get --> we want post, here
//		url: '../cfc/entry.cfc?ReturnFormat=json',  
		url: 'http://www.chesteraustin.us/cfc/entry.cfc?ReturnFormat=json',  
		data: {
			method: 'setEntry',
            Set_Name: setName, //CFARGUMENT: JS_VARIABLE
            Set_Number: setNumber,
            Set_Theme: setTheme,
            Retail_Price: retailPrice,
            Purchase_From: purchaseStore,
            Purchase_Price: purchasePrice,
            Purchase_Date: purchaseDate,
            Status: condition,
            Sell_price: sellPrice,
            Sell_from: sellStore,
            Sell_date: selldate
			},
		contentType: 'json',
		dataType: 'json',
		success: function(response) {
            console.log("you da man");
            }
		});    
	});	
});//end DOCUMENT = READY function

$(document).ready(function() {
    $('#myTable').dataTable({
        "bProcessing": true,
        "bServerSide": true,
        "sAjaxSource": "http://www.chesteraustin.us/cfc/entry.cfc?ReturnFormat=json&method=getEntry",
        "fnServerParams": function ( aoData ) {
            aoData.push( {
                "ReturnFormat": "json", 
                "method": "getEntry" } );
        }
    });
} );