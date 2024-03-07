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

String vUrl = request.getContextPath();
String vImgUrl = "resources/img/";
%>
<link rel="stylesheet" href="resources/css/menuMain.css">
<script src="resources/js/seAsia.js"></script>
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

<!--------------------------------------------------------------------------------->

<section>

	<article>
		<span><img src="<%=vImgUrl %>_southeastAsiaMain01.png" id="mainImg"></span>
	</article>

	<p><b>추천 상품</b></p>
	<article  id="object">	
		<a onclick="location.href='<%=vUrl %>/seAsiaGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>seAsia01_01.png"></p>
			<p class="g_ex">[라오스] 비엔티엔/방비엥+블루라군+카약킹+마사지 5일</p>
			<p class="g_price">549,000 원</p>
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/seAsiaGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>seAsia02_01.png"></p>
			<p class="g_ex">[코타키나발루/초특급/써차지포함]샹그릴라 탄중아루 호핑투어+자유일정 씨뷰UP! 5일</p>
			<p class="g_price">699,000 원</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/seAsiaGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>seAsia03_01.png"></p>
			<p class="g_ex">[발리/NO쇼핑]누사두아위치 품격이 다른 물리아 리조트 6일</p>
			<p class="g_price">2,099,000 원</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/seAsiaGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>seAsia04_01.png"></p>
			<p class="g_ex">[단독] 싱가포르 프리미엄 특급호텔 1일자유 5일 (NO팁/NO옵션/NO쇼핑)</p>
			<p class="g_price">1,149,000 원</p>
		</div>	
		</a>
	</article>			


	<p><b>관광 명소</b></p>
	

</section>

<!--------------------------------------------------------------------------------->
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
