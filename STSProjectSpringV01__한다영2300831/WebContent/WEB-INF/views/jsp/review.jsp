<%@page import="sample.spring.project.TourDAO"%>
<%@page import="sample.spring.project.ReviewDTO"%>
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
System.out.println("review.jsp TEST01");

response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");

String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";
String vMsg = request.getParameter("msg");

String count = request.getParameter("count");
%>
<link rel="stylesheet" href="resources/css/review.css">
<script>
function mWrite(){
	if (confirm("로그인 후 이용 가능합니다. 로그인 하시겠습니까?") == true){ 
			let obj = document.getElementById("writeFrm");
			obj.logChk.value = "writeLogChk";	
			
			obj.submit();
	}else{
		return ;
	}
}

function mValSend(no){
	let obj = document.getElementById("singleFrm"); 
	obj.gue_no.value = no;		
	obj.submit();
}

function mMsgChk(){
	msg = "<%=vMsg%>";

	if(msg != "null"){
		alert(msg);
	}
}
</script>
</head>
<body onload="mInit(), mCngImg(), mMsgChk()" align="center">
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


<!--------------------------------------------------------------------------------->
<section>

	<p><b>여행 후기</b></p>

	<article id="list">
		<ul id="titleList">
			<li>번호</li>
			<li>제목</li>
			<li>글쓴이</li>
			<li>등록일</li>
		</ul>
		
<!------------------------------------------->
<form id="dtoLNullChk" action="<%=vUrl %>/reviewList">
	<input type="hidden" name="nowPage" value="0">	
	<input type="hidden" name="nowBlock" value="0">	
</form>
<!------------------------------------------->
		<c:if test="${dtoL eq null}">
			<script>
				let obj = document.getElementById("dtoLNullChk"); 
				obj.submit();
			</script>
		</c:if>
		
		<c:forEach var="dtoL" items="${dtoL}">
			<ul id="reviewList" onClick="mValSend(${dtoL.gue_no})" >
				<li>${dtoL.gue_no}</li>
				<li>&nbsp;&nbsp;${dtoL.gue_subject}</li>
				<li>${dtoL.gue_id}</li>
				<li>${dtoL.gue_logtime}</li>
			</ul>
		</c:forEach>

	</article>
	
	<br>
	<article id="write">
		<button onclick="mWrite()">게시물 등록</button>
	</article>
</section>

<!------------------------------------------->
<form id="writeFrm" action="<%=vUrl %>/login">
	<input type="hidden" name="logChk">	
</form>
<!------------------------------------------->

<!------------------------------------------->
<form id="singleFrm" action="<%=vUrl%>/singleReview">
	<input type="hidden" name="gue_no">	
</form>
<!------------------------------------------->

<br>
	<div class="center">
		<div class="pagination">
		<c:if test="${nowBlock !=0}">
			<a href="<%=vUrl%>/reviewList?nowBlock=${nowBlock-1}&nowPage=${(nowBlock-1)*10}">〈</a> 
		</c:if>
		
		<!-- ------------------ -->
	<c:set var="loop_flag" value="false" />
 	<c:forEach var="idx" begin="${nowBlock*10}" end="${nowBlock*10+10}" varStatus="status">
		<c:if test="${not loop_flag }">
			<c:if test="${idx + 1  == totalPage}">
				<c:set var="loop_flag" value="true" />
			</c:if> 
			<a href="<%=vUrl%>/reviewList?nowBlock=${nowBlock}&nowPage=${idx}" onclick="mFocus()" class="page">${idx + 1}</a>
		</c:if>	
	</c:forEach>
 	
 	
		<!-- ------------------ -->
		
	<c:if test="${(nowBlock + 1) < totalBlock}">
		<a href="<%=vUrl%>/reviewList?nowBlock=${nowBlock+1}&nowPage=${(nowBlock+1)*10}">〉</a>
	</c:if>
	</div>
	
<br>
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