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
<link rel="stylesheet" href="resources/css/menuMain.css">
<script src="resources/js/Europe.js"></script>
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
		<span>
		<img src="<%=vImgUrl %>_europeMain01.png" id="mainImg"></span>
	</article>

	<p><b>추천 상품</b></p>
	<article  id="object">	
		<a onclick="location.href='<%=vUrl %>/EuropeGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>_europe01_01.png"></p>
			<p class="g_ex">[스위스/이탈리아 10일 OZ] 베니스 전세기_융프라우+아펜첼/루체른+나/폼/소+돌로미티</p>
			<p class="g_price">3,490,000 원</p>
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/EuropeGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>_europe02_01.png"></p>
			<p class="g_ex">[스위스 일주 9일] 마테호른/융프라우[노옵션/노쇼핑+파노라마 열차]</p>
			<p class="g_price">4,399,000 원</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/EuropeGoods03'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>_europe03_01.png"></p>
			<p class="g_ex">[돌체 이탈리아 9일 OZ] 슬로우 라이프_오르비에토/토스카나+나/폼/소+10대 맛체험</p>
			<p class="g_price">2,382,000 원</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/EuropeGoods04'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>_europe04_01.png"></p>
			<p class="g_ex">[이탈리아/스위스 9일] 가슴을 뛰게 만드는 여행 휘르스트+루체른+나/폼/소</p>
			<p class="g_price">2,399,000 원</p>
		</div>
		</a>	
	</article>			
<!--
	<p><b>관광 명소</b></p>
	<article id="spot">
		<ul> 에펠탑 /루브르 박물관 /콜로세움/ 베르사유 궁전 /시스티나 성당
			<li><img src="./../img/europeTravel01.png"></li>
			<li><img src="./../img/europeTravel02.png"></li>
			<li><img src="./../img/europeTravel03.png"></li>
			<li><img src="./../img/europeTravel04.png"></li>
			<li><img src="./../img/europeTravel05.png"></li>
		</ul>
	</article>-->

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
