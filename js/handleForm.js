
// Check submit
function checkSubmit(){
	var name = document.getElementById("txtName").value;
	var phone = document.getElementById("txtPhone").value;
	var position = document.getElementById("txtPosition").value;
	if(name == '' || phone == '' || position == '') return false;
}

console.log(name.value + '\n' + phone.value + '\n' + position.value);