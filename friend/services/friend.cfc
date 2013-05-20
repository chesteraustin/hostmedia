component {
	
	remote struct function getDetail(required numeric id) {
		var q = new com.adobe.coldfusion.query();
		q.setDatasource("chestera_friend");
		q.setSQL("select id, name, email, phone, answer from friend where id = :id");
		q.addParam(name="id", value=arguments.id, cfsqltype="cf_sql_integer");
		var result = q.execute().getResult();
		//convert the Query into a simple structure
		var detail = {"id"=result.id[1], "name"=result.name[1], "email"=result.email[1], "phone"=result.phone[1], 
				  "answer"=result.answer[1]};
		return detail;
	}

	remote array function data() {
		var q = new com.adobe.coldfusion.query();
		q.setDatasource("chestera_friend");
		q.setSQL("select id, name from friend order by 1 asc");
		var data = q.execute().getResult();
		var result = [];
		for(var i=1; i<= data.recordCount; i++) {
			arrayAppend(result, {"id"=data.id[i], "name"=data.name[i]});
		}
		return result;
	}

}