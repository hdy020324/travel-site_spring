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
<script src="resources/js/GuamSaipan.js"></script>
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
		<span><img src="<%=vImgUrl %>GuamSaipanMain01.png" id="mainImg"></span>
	</article>

	<p><b>추천 상품</b></p>
	<article  id="object">	
		<a onclick="location.href='<%=vUrl %>/GuamSaipanGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>GuamSaipan01_01.png"></p>
			<p class="g_ex">[FLEX][오전출발] 사이판 PIC 실버셀렉트or골드카드 4일/5일</p>
			<p class="g_price">1,039,000 원~</p>
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/GuamSaipanGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>GuamSaipan02_01.png"></p>
			<p class="g_ex">[제주항공/오전출발] 괌 호시노리조나레(구.온워드)+워터파크+조식포함 4일</p>
			<p class="g_price">679,000 원~</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/GuamSaipanGoods03'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>GuamSaipan03_01.png"></p>
			<p class="g_ex">[선착순 프리미어디럭스룸UP][오전4일-7C] 사이판 켄싱턴 호텔(로얄디럭스)+슬림카드+마나가하섬 4일</p>
			<p class="g_price">1,170,200 원~</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/GuamSaipanGoods04'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>GuamSaipan04_01.png"></p>
			<p class="g_ex">[제주항공/오전출발 4일] 괌 닛코호텔 오션프론트</p>
			<p class="g_price">699,000 원</p>
		</div>	
		</a>
	</article>			

<!-- 	<p><b>관광 명소</b></p> -->
	

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
