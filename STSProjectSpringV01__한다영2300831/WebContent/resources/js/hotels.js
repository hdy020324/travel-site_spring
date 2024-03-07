let tableList = document.getElementsByClassName("calendar");

$(document).ready(function(){

	$("#cityName").click(function(){
		$("#memNum").hide();
		$("#all").hide(); 
		$("#cityResult").toggle();
	});
	$("#cityText").keyup(function(e){	
		if(e.keyCode == 13){
			$("#cityName").val($(this).val());
			$("#cityResult").hide();
		}
	});

//-------------------------------
	
	$("#personnel").click(function(){
		$("#cityResult").hide();
		$("#all").hide(); 
		$("#memNum").toggle();
	});	


//======================================================

	$(".chkInOut").eq(0).click(function(){ //체크인 버튼 클릭 시
		$("#all").show(); 
		$("#cityResult").hide();
		$("#memNum").hide();
		
		if (tableList.length > 0) { 
			tableList[0].remove();
		}

		const d = new Date(); //오늘 날짜

		var year = d.getFullYear(); 
		var month = d.getMonth() + 1;
		var today = d.getDate();

		mCalendar(year, month, today,"chkIn");

		$("#yearMonth").html(year+"년 "+month+"월");

		$("#down").click(function(){

			if (tableList.length > 0) {	
				tableList[0].remove();
			}
			month--;
			if(month == 0){
				year--;
				month = 12;
			}
			mCalendar(year, month, today,"chkIn");
			$("#yearMonth").html(year+"년 "+month+"월");
			
		});

		$("#up").click(function(){
			if (tableList.length > 0) {	
				tableList[0].remove();
			}
			month++;
			if(month == 13){
				year++;
				month = 1;
			}
			mCalendar(year, month, today,"chkIn");
			$("#yearMonth").html(year+"년 "+month+"월");
		});

	});

	$(".chkInOut").eq(1).click(function(){	//체크아웃 버튼 클릭 시

		if ($(".chkInOut").eq(0).val() == "체크인") {
			$("#all").hide();
		} else {
			$("#all").show();
		}


		if (tableList.length > 0) {	
			tableList[0].remove();
		}

		//const d = new Date();

		//var year = d.getFullYear();
		//var month = d.getMonth()+1;
		//var today = d.getDate();

		var year = Number($(".chkInOut").eq(0).val().substring(0,4));
		var month = Number($(".chkInOut").eq(0).val().substring(6,$(".chkInOut").eq(0).val().indexOf('월')));
		var today = Number($(".chkInOut").eq(0).val().substring($(".chkInOut").eq(0).val().indexOf('월')+2,$(".chkInOut").eq(0).val().indexOf('일')));

		mCalendar(year, month, today,"chkOut");
		$("#yearMonth").html(year+"년 "+month+"월");

		$("#down").click(function(){

			if (tableList.length > 0) {	
				tableList[0].remove();
			}
			month--;
			if(month == 0){
				year--;
				month = 12;
			}
			mCalendar(year, month, today,"chkOut");
			$("#yearMonth").html(year+"년 "+month+"월");
			
		});

		$("#up").click(function(){
			if (tableList.length > 0) {	
				tableList[0].remove();
			}
			month++;
			if(month == 13){
				year++;
				month = 1;
			}
			mCalendar(year, month, today,"chkOut");
			$("#yearMonth").html(year+"년 "+month+"월");
		});

	});



});

function mCalendar(year, month, today, inout){

	const week = new Date(year, month-1, 1);

	var sDay = week.getDay(); //요일

	//평년 윤년 계산
	if((month%4)==0){
		day = 29;
		if((month%100)==0) {
			day = 28;
			if((month%400)==0){
				day = 29;
			}
		}
	} else {
		day= 28;
	}
	
	//현재 달이 몇일인지 계산
	switch (month) {
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:
			day = 31;
		break;
		case 4: case 6: case 9: case 11:
			day = 30;
		break;
		case 2:
		break;
		default:
			tableList[0].remove();
		break;
	}

// 캘린더 table 생성 ---------------------
	var eTable = document.createElement("table"); //<table></table> 생성
	eTable.className="calendar";
	var eTbody = document.createElement("tbody"); //<tbody></tbody> 생성

	let index = 0; //첫번째 칸부터
	let idx = 1; //1일 부터
		
	while (idx <= day) {
		var eTr = document.createElement("tr");
		
		for(let j = 0 ; j <= 6 ; j++){	
			var eTd = document.createElement("td");
			var node = document.createTextNode(idx);
		
			if(idx > day){
				node = document.createTextNode("");
			}
			if(index < sDay){
				node = document.createTextNode("");
			} else {
				idx++;
			}
			
			index++;

			eTd.appendChild(node);
			eTr.appendChild(eTd);
		}
		eTbody.appendChild(eTr);
	}

	eTable.appendChild(eTbody); 
	document.getElementById("calendar").appendChild(eTable);

//----------------------------------

	let todayNum = 8 + sDay + today; //table에서 현재 날짜 위치

	const ymd = new Date(); //현재 날짜

	var now_year = ymd.getFullYear(); //현재 년도 
	var now_month = ymd.getMonth()+1; //현재 달
		

	$("td").click(function(){ //td를 클릭하면 
		//만약 가져온 년, 달, 일이 현재 날짜보다 크거나 같다면
		if(year >= now_year && month >= now_month && $(this).html() >= today){ 
			if(isNaN($(this).html())==false){	 //만약 클릭한 td의 값이 숫자라면
				$("td").css("background-color", "#ffffff"); //td의 배경색 전부 리셋
				$(this).css("background-color", "skyblue"); //클릭한 td의 배경색 하늘색

				//선택한 날짜 값 넣기
				if (inout == "chkIn") {
					$(".chkInOut").eq(0).val($("#yearMonth").html() + " " + $(this).html() + "일"); 
				} else if (inout == "chkOut") {
					$(".chkInOut").eq(1).val($("#yearMonth").html() + " " + $(this).html() + "일"); 
				}				
			}
		}
	});

		//만약 가져온 년,달이 현재 년달과 같다면
		if(year == ymd.getFullYear() && month == (ymd.getMonth()+1)){ 			
			if(inout=="chkIn"){ //chkIn의 경우
				document.getElementsByTagName("td")[todayNum].style.backgroundColor="#ffc7c7";
				//td의 현재 날짜에 배경색 넣기 
			} else if (inout="chkOut") {  //chkOut의 경우
				document.getElementsByTagName("td")[todayNum].style.backgroundColor="#cfcfcf";
				//td의 현재 날짜에 배경색 넣기 
			}
		}
}



