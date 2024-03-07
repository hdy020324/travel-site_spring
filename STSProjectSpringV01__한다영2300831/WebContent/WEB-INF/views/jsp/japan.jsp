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
<script src="resources/js/japan.js"></script>
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
		<span><img src="<%=vImgUrl %>japanMain01.png" id="mainImg"></span>
	</article>

	<p><b>추천 상품</b></p>
	<article  id="object">	
		<a onclick="location.href='<%=vUrl %>/japanGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>japan01_01.png"></p>
			<p class="g_ex">[슬기로운큐슈여행]정통료칸호텔+온천호텔+아소미니열차◇구마모토,아소,유후인,후쿠오카 3일</p>
			<p class="g_price">499,000 원</p>
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/japanGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>japan02_01.png"></p>
			<p class="g_ex">[잇츠 오사카타임]◇온천호텔2박+노팁+1일자유◇ 오사카,교토,아라시야마 3일</p>
			<p class="g_price">4,399,000 원</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/japanGoods03'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>japan03_01.png"></p>
			<p class="g_ex">[고품격온천큐슈기행]◇특급힐튼+고급히젠야+나카스크루즈◇벳부,유후인,구마모토3일</p>
			<p class="g_price">549,000 원</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/japanGoods04'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>japan04_01.png"></p>
			<p class="g_ex">[★출발확정★]◇온야도교토+가이유칸수족관+간식비제공◇ 오사카,교토 3일</p>
			<p class="g_price">679,000 원</p>
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
