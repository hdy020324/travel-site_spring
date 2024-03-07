<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>  
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");

String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";
String vNo = request.getParameter("gue_no");
%>
<link rel="stylesheet" href="resources/css/singleReview01.css">
<script>
function valSend(){
	let obj = document.getElementById("reviewUpd");
	obj.submit();
}
function valSend02(){
	let obj = document.getElementById("reviewDel");
	obj.submit();
}
</script>
</head>
<body onload="mInit(), mCngImg()" align="center">
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

<!--======================================-->


<br>
<c:forEach var="dtoL" items="${dtoL}">
<section>
	<p><b>${dtoL.gue_id}님의 후기</b></p>
	
	<div id="divUpdDel">
	 	<button class="UpdDel" onclick="valSend()">수정</button>
		<button class="UpdDel" onclick="">삭제</button>
	</div>

 <article id="write">
	<table>
		<tr>
			<td class="title">제목</td>
			<td><input type="text" placeholder=" 제목을 입력하세요." value="${dtoL.gue_subject}"></td>
			<td id="subex">${dtoL.gue_id} 님 &ensp; | &ensp; ${dtoL.gue_logtime}</td>
		</tr>
		<tr>
			<td class="title">내용</td>
			<td colspan="2"><textarea maxlength="1000">${dtoL.gue_content}</textarea></td>		
		</tr>
	</table>
	
 
 <form action="<%=vUrl %>/review">
	<p><input type="submit" value="목록"></p>
 </form>
 
 
 </article>
</section>
</c:forEach>


	
<!-- --------------------------------- -->
<form id="reviewUpd" action="<%=vUrl%>/login">
	<input type="hidden" name="logChk" value="UpdDelLogChk">	
	<input type="hidden" name="gubun" value="gubun">
	<c:forEach var="dtoL" items="${dtoL}">
		<input type="hidden" name="gue_no" value="${dtoL.gue_no}">	
		<input type="hidden" name="gue_id" value="${dtoL.gue_id}">	
		<input type="hidden" name="gue_pwd" value="${dtoL.gue_pwd}">	
	</c:forEach>
</form>
<!-- --------------------------------- -->	

<!--======================================-->
<br><br>
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