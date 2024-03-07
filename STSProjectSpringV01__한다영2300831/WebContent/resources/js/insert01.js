/*let memData;*/
let vName;
let vId;
let vPwd;
let vEmail;
let vPhone;
let vAddr;

function memIns() {
	
	vName = document.getElementById("mem_name").value;
	vId = document.getElementById("mem_id").value;
	vPwd = document.getElementById("mem_pwd").value;
	vEmail = document.getElementById("mem_email").value;
	vPhone = document.getElementById("mem_phone").value;
	vAddr = document.getElementById("mem_birth").value;

	$.ajax({
		type: "post", //Specifies the type of request. (GET or POST)
		url: "insertPro.jsp", //Specifies the URL to send the request to. Default is the current page
		dataType: "text", //The data type expected of the server response.
		data:	{ //Specifies data to be sent to the server
			mem_id : vId, 
			mem_pwd : vPwd,
			mem_name : vName,
			mem_email : vEmail,
			mem_phone : vPhone,
			mem_addr : vAddr
		},
		success: function(data, textStatus){ //A function to be run when the request succeeds
			/*$("#memContent").html(data);*/
		}, 
		error : function(data, textStatus) { //A function to run if the request fails.
			console.log('error');
		}
	});
	
	alert("test03");
}
