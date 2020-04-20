
// Check submit
function checkSubmit() {
	var status = false;
	var name = document.getElementById("txtName");
	var phone = document.getElementById("txtPhone");
	var position = document.getElementById("txtAddress");

	if(name.value == ''){
		name.style.border = "2px solid red";
	}
	else{
		name.style.border = "2px solid green";
	}
	if(phone.value == ''){
		phone.style.border = "2px solid red";
	}
	else{
		phone.style.border = "2px solid green";
	}
	if(position.value == ''){
		position.style.border = "2px solid red";
	}
	else{
		position.style.border = "2px solid green";
	}
	if(name.value != '' && phone.value != '' && position.value != ''){
		status = true;
	}
	return status;
}