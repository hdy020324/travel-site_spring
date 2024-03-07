<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");

String vMsg = request.getParameter("msg");
String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";
%>
<link rel="stylesheet" href="resources/css/insert.css">
<script src="resources/js/insert.js"></script>
<script>
function mMsgChk(){
	msg = "<%=vMsg%>";

	if(msg != "null"){
		alert(msg);
	}
}
</script>
</head>
<body align="center" onLoad="mMsgChk()">
<div id="wrap" align="center">

<header>
    <div id="topMenu">
		<img class="icon" src="<%=vImgUrl %>_icon02.png">
		<p><a  onclick="location.href='<%=vUrl %>/index'">여행떠나요</a></p>

		<div id="search">
			<table>
				<tr>
					<td>
						<span><input type="text"></span>
					</td>
					<td>
						<span><img src="<%=vImgUrl %>search.png"></span>
					</td>
				</tr>
			</table>
		</div>

		<ul>
			<li><a onclick="location.href='<%=vUrl %>/login'">로그인</a></li>
			<li class="lastLi"><a onclick="location.href='<%=vUrl %>/insert'">회원가입</a></li>
		</ul>
    </div>
	
	<hr>

    <div id="mainMenu">
		<ul>
			<li><a onclick="location.href='<%=vUrl %>/airport'">항공권</a></li>
			<li><a onclick="location.href='<%=vUrl %>/hotels'">해외숙소</a></li>
			<li><a onclick="location.href='<%=vUrl %>/hotelsKor'">국내숙소</a></li>
			<li><a onclick="location.href='<%=vUrl %>/packageTrip'">패키지</a></li>
			<li><a onclick="location.href='<%=vUrl %>/travelInsurance'">여행자 보험</a></li>
			<li><a onclick="location.href='<%=vUrl %>/review'">여행후기</a></li>
			<li><a onclick="location.href='<%=vUrl %>/introCom'">회사소개</a></li>
			<li>찾아오시는길</li>
		</ul>
    </div>
</header>

	<hr>
	

<!-- ====================================== -->

<section>
<form method="get" action="<%=vUrl+"/frmIns"%>">
	<input type="hidden" name="category" value="insertTour">
	<p><b>회원가입</b></p>
	<ul id="insert">
		<li><input type="text" name="mem_id" placeholder="아이디" class="text"></li>
		<li><% out.print(""); %> &nbsp; &nbsp; <input type="button" value="중복 확인"></li>
		<li><input type="password" name="mem_pwd" placeholder="비밀번호(영문 숫자 특수문자 조합, 8~16자리)" class="text"></li>
		<li><input type="password" placeholder="비밀번호 확인" class="text"></li>
		<li><input type="text" name="mem_name" placeholder="이름" class="text"></li>
		<li>
			<input type="text" name="mem_email" placeholder="이메일" class="text">
			<!--<select>
				<option></option>
				<option></option>
				<option></option>
			</select>-->		
		</li>
		<li><input type="text" name="mem_phone" placeholder="휴대폰번호(숫자만 입력)" class="text"></li>
		<li><input type="text" name="mem_birth" placeholder="생년월일 (예 : 19900101)" class="text"></li>
	</ul>

	<ul id="checkInsert">
		<li><input type="checkbox">약관 전체 동의</input></li>
		<li><input type="checkbox">(필수) 노랑풍선 이용약관 동의</input></li>
		<li><input type="checkbox">(필수) 만14세 이상 확인</input></li>
		<li><input type="checkbox">(필수) 개인정보 수집 및 이용 동의</input></li>
		<li><input type="checkbox">(선택) 개인정보 수집 및 이용 동의</input></li>
		<li><input type="checkbox">(선택) 마케팅 정보 수신 동의</input></li>

	</ul>

	<input type="submit" value="가입 완료" >
</form>
</section>
<!-- ====================================== -->

<br>
<footer>
	<ul>
		<li>개인정보처리방침</li>
		<li>회사소개</li>
		<li>찾아오시는길</li>
		<li>이용약관</li>
		<li>여행자보험</li>
		<li>고객센터</li>
	</ul>
</footer>

</div>
</body>
</html>