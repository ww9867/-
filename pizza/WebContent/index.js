/**
 * 
 */
function nullChk() {
	var array = new Array();
	var submit = document.getElementById("submit");
	
	for(var i = 0; i < 5; i++){
		array[i] = document.getElementsByTagName('input')[i].value;
		if(array[i] == ""){
			alert("값을 입력하세요");
			array[i].focus();
			return false;
		}
	}		
}
