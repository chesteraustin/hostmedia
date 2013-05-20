$("#indexPage").live("pageinit", function() {
	console.log("Getting remote list");
	//$.mobile.showPageLoadingMsg();
	//$.get("http://127.0.0.1:8500/conversion/service/artservice.cfc?method=data&returnformat=json", {}, function(res) {
	//$.get("http://www.chesteraustin.us/friend/services/friend.cfc?method=data&returnformat=json", {}, function(res) {
	//$.get("http://127.0.0.1:8500/friend/friend.cfc?method=data&returnformat=json", {}, function(res) {
		$.mobile.hidePageLoadingMsg();
		var s = "";
		for(var i=0; i<res.length; i++) {
			s+= "<li><a href='detail.html?id=" + res[i].id + "'>" + res[i].name + "</a></li>";
			}
		$("#data").html(s);
		$("#data").listview("refresh");
	},"json");

});

$("#detailPage").live("pageshow", function() {
	var page = $(this);
	var query = page.data("url").split("?")[1];
	var id = query.split("=")[1];
	console.log("Getting remote detail for "+id);
	$.mobile.showPageLoadingMsg();
	$.get("http://127.0.0.1:8500/friend/friend.cfc?method=getDetail&returnformat=json", {id:id}, function(res) {
	//$.get("http://www.chesteraustin.us/friend/services/friend.cfc?method=getDetail&returnformat=json", {id:id}, function(res) {
		$.mobile.hidePageLoadingMsg();
		$("h1",page).text("Name " + res.name);
		var s = "<p> Name: " + res.name + "</p>";
			s +="<p> Email: " + res.email + "</p>";
			s +="<p> Phone: " + res.phone + "</p>";
			s +="<p> Answer: " + res.answer + "</p>";	
			$("#detailContent").html(s);
	},"json");
	
});