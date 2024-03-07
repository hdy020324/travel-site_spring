<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>  
<%
String vMsg = request.getParameter("msg");
String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";

String vId = request.getParameter("mem_id");
%>
<link rel="stylesheet" href="resources/css/index.css">
<script src="resources/index.js"></script>
<script>
function mMsgChk(){
/* 	alert("test01");
	
	msg = ${"#msgChk"}.html;
	
	alert(msg);

	if(msg != "null"){
		alert(msg);
	} */
}
</script>
</head>
<body onload="mMsgChk(), mInit(), mCngImg()" align="center">
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

<section>
	<article>
		<span><img src="<%=vImgUrl %>_main01.png"></span>
	</article>
<!--
	<article  id="object">			
		<p>베스트 상품</p>
		<div class="goods">
			<p class="g_img"><img src="./../img/_ex02main.png"></p>
			<p class="g_ex"><b>[QR바로입장] 롯데월드 어드벤처 종합이용권</b></p>
			<p class="g_price">19,400원</p>
		</div>
	</article>
-->
	<br><br>

	<article id="best">
		<p><b>인기 여행지</b></p>
		<ul>
			<li onclick="location.href='<%=vUrl %>/japan'">
				<img src="<%=vImgUrl %>_mBest01.png">
				<p>오키나와, 일본</p>
			</li>
			<li onclick="location.href='<%=vUrl %>/Europe'">
				<img src="<%=vImgUrl %>_mBest02.png">
				<p>시에나, 이탈리아</p>
			</li>
			<li>
				<img src="<%=vImgUrl %>_mBest03.png">
				<p>호놀룰루, 하와이</p>
			</li>
			<li onclick="location.href='<%=vUrl %>/japan'">
				<img src="<%=vImgUrl %>_mBest04.png">
				<p>요코하마, 일본</p>
			</li>
			<li onclick="location.href='<%=vUrl %>/GuamSaipan'">
				<img src="<%=vImgUrl %>_mBest05.png">
				<p>타무닝, 괌</p>
			</li>
			<li onclick="location.href='<%=vUrl %>/Europe'">
				<img src="<%=vImgUrl %>_mBest06.png">
				<p>파리, 프랑스</p>
			</li>
	<!--<li><img src="./img/_mBest07.png"><p>싱가포르, 싱가포르<p></li>-->
		</ul>
	</article>

	<br>

	<article id="review">
		<p><b>여행 후기</b></p>
		<div id="bestReview">
			<p><img src="<%=vImgUrl %>_review01.png"></p>
			<p id="reviewTitle"><b>번아웃을 극복하게 해준 서유럽 3개국 여행기</b></p>
			<p>
				만족도 200%의 완벽한 여행을 가이드 해주신 최승자 팀장님에게 감사의 인사를 전하며 이탈리아+스위스+파리 7박 9일 여행기를 시작합니다.
				직장 생활 20년, 야근과 격무에 지쳐 번아웃을 겪던 차에 남편과 둘이 서유럽 여행을 하게 되었습니다.
				여행 후 일주일이 지난 지금은 유럽여행을 또 가기 위해서라도 직장 생활을 계속 해야겠다는 마음으로 바뀌었습니다.
				그리고 대출 받아서 큰집으로 이사 가...
			</p>
		</div>

		<table>
			<tr><td>2023년 5월 7일 태국 치앙마이 여행</td></tr>
			<tr><td>두바이 사막에서 4박 5일</td></tr>
			<tr><td>대한민국 서울 투어 이야기</td></tr>
			<tr><td>네덜란드 암스테르담에서의 추억</td></tr>
			<tr><td>개인관광 인도네시아의 우붓 후기!</td></tr>
		</table>

	</article>
</section>

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
