function update_text() {
	var lname = document.getElementById('laminate_name').value;
	var lcode = document.getElementById('laminate_code').value;
	var values = [];
	
	if (lname != "") {
		values.push(lname);
	} else {
		alert("Please enter a lamination name")
		document.getElementById('laminate_name').focus();
		return false;
	}

	if (lcode != "") {
		values.push(lcode);
	} else {
		alert("Please enter a lamination code")
		document.getElementById('laminate_code').focus();
		return false;
	}	

	if (values.length != 0){
		window.location = 'skp:get_laminatevalues@' + values;
	}
}