function addRow (rowID){
	//a_b_c
	var arrayRow = rowID.split('_'); //thisRow_thisIncrement
	var thisRow = arrayRow[0];
	var thisIncrement = arrayRow[1];
	var newIncrement = (parseInt(thisIncrement)+1);
	var newAddRow = thisRow+'_'+newIncrement;

	newHTMLROW = 	'<td>&nbsp;</td>'
					+'<td>'
						+'<input type="text" name="row_'+thisRow+'_A_'+newIncrement+'" id="row_'+thisRow+'_A_'+newIncrement+'" value="row_'+thisRow+'_A_'+newIncrement+'">'
					+'</td>'
					+'<td>'
						+'<input type="text" name="row_'+thisRow+'_B_'+newIncrement+'" id="row_'+thisRow+'_B_'+newIncrement+'" value="row_'+thisRow+'_B_'+newIncrement+'">'
					+'</td>'
					;
	$('#tableRow_'+thisRow).after('<tr id="newRow_'+newIncrement+'">'+newHTMLROW+'</tr>');
	$('#addButton_'+thisRow).attr({
			onclick: 'Javascript:addRow(\''+newAddRow+'\')'
		});
}