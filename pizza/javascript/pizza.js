$(document).ready(function () {
	$("#subForm").click(function(){
		var pizza1_size = $("#pizza1_size").val();
		var pizza1_unit = $("#pizza1_unit").val();
		var pizza1_slices = $("#pizza1_slices").val();
		var pizza1_cost = $("#pizza1_cost").val();

		var pizza2_size = $("#pizza2_size").val();

		var pizza1_costPerSlice = pizza1_cost / pizza1_slices;
		var pizza1_area = Math.PI * (pizza1_size/2)^2; //pi*r^2
		var pizza1_areaPerSlice = pizza1_area / pizza1_slices; 

		var pizza2_area = Math.PI * (pizza2_size/2)^2; //pi*r^2
		var pizza2_similarSlices = pizza2_size / pizza1_areaPerSlice; 

		console.log(pizza1_area);
		var replaceText = $("#pizza1_costPerSlice").text(pizza1_costPerSlice);
		var replaceText = $("#pizza1_areaPerSlice").text(pizza1_areaPerSlice);
		var replaceText = $("#pizza2_similarSlices").text(pizza2_similarSlices);
	});    	
});