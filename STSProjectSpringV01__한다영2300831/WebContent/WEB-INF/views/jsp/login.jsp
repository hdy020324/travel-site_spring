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

String vLogChk = request.getParameter("logChk");
String vId = request.getParameter("gue_id");
String vPwd = request.getParameter("gue_pwd");
String vNo = request.getParameter("gue_no");
%>
<link rel="stylesheet" href="resources/css/login.css">
<script>
function mMsgChk(){
	msg = "<%=vMsg%>";

	if(msg != "null" && msg != ""){
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

<nav>
    <ul id="menuMain">
        <li><a onclick="location.href='<%=vUrl %>/Europe'">유럽</a></li>
        <li><a onclick="location.href='<%=vUrl %>/seAsia'">동남아</a></li>
        <li><a onclick="location.href='<%=vUrl %>/japan'">일본</a></li>
        <li><a onclick="location.href='<%=vUrl %>/GuamSaipan'">괌/사이판</a></li>
        <li><a onclick="location.href='<%=vUrl %>/AustNew'">호주/뉴질랜드</a></li>
        <li><a href="#">미주/하와이/중남미</a></li>
        <li><a href="#">홍콩/마카오/대만</a></li>
		<li><a href="#">중국/몽골/중앙아시아</a></li>
    </ul>
</nav>



<!-- ====================================== -->

<section>
<form method="get" action="<%=vUrl+"/frmLog"%>">
	<input type="hidden" name="category" value="loginTour">
	<input type="hidden" name="logChk" value="<%=vLogChk%>">
	<input type="hidden" name="gue_no" value="<%=vNo%>">
	<input type="hidden" name="gue_id" value="<%=vId%>">
	<input type="hidden" name="gue_pwd" value="<%=vPwd%>">	
<p><b>로그인</b></p>

<ul id="login">
	<li><input class="logText" type="text" name="mem_id" placeholder="아이디 입력"></li>
	<li><input class="logText" type="password" name="mem_pwd" placeholder="비밀번호 입력"></li>
	<li><input type="submit" value="로그인"></li>
</ul>

<ul id="find">
	<li><a href="<%=vUrl %>/project/jsp/insert.jsp">회원가입</a></li>
	<li><a href="#">아이디 찾기</a></li>
	<li><a href="#">비밀번호 찾기</a></li>
</ul>
</form>
</section>
<!-- ====================================== -->

<br><br><br>

<img id="ad" src="<%=vImgUrl %>_adv07.png">

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