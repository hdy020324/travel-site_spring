<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>  
<%
String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";
%>
<link rel="stylesheet" href="resources/css/introCom.css">
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

<section>
<article>
<div id="introMainImg">
	<br><br><br><br>
	<h1 id="introTitle">VISION 2025</h1>
	<h3 class="introSubTitle">Global Tourism & Leisure Group</h3>

	<p>'여행떠나요'는 윤리경영, 고객만족, 동반성장이라는 핵심가치를 토대로</p>
	<p>비전을 체계화하고 있습니다</p>
	<br><br><br><br><br><br><br>
</div>
</article>

<br><br><br>


<br><br><br>

<article>
<p class="introSubTitle">더 자주 경험하는 여행의 즐거움<p>
<pre>죽기 전 떠오르는 기억 중 하나가 여행이 될 만큼, 여행은 인생에서 잊지 못할 추억을 만들어줘요.
하지만, 자주 여행을 떠나기엔 현실적인 어려움들이 있죠. 시간과 돈을 마련해야하고, 함께 떠날 사람도
찾아야하니까요. 만약 이러한 제약들에 대한 고민이 줄어들고, 우리 모두가 매일 여행하듯
살 수 있다면 얼마나 행복할까요?

마이리얼트립은 Travel Everyday라는 비전 아래, 누구든 나다운 여행을 할 수 있는
다양한 여행 서비스를 제공하며, 우리 삶에서 여행의 즐거움을 더 자주 느낄 수 있는 세상을 만들어가고 있습니다.</pre>
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
