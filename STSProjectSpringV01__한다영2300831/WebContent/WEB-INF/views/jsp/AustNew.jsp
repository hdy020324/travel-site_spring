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
<script src="resources/js/AustNew.js"></script>
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
		<img src="<%=vImgUrl %>AustNewMain01.png" id="mainImg"></span>
	</article>

	<p><b>추천 상품</b></p>
	<article  id="object">	
		<a onclick="location.href='<%=vUrl %>/AustNewGoods01'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>AustNew01_01.png"></p>
			<p class="g_ex">뉴질랜드 북섬 7일 #떴다캡틴킴 #와이토모동굴 #와이헤케섬</p>
			<p class="g_price">2,099,000 원</p>
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/AustNewGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>AustNew02_01.png"></p>
			<p class="g_ex">뉴질랜드 남/북섬 8일 #보잉787드림라이너 #선착순특가</p>
			<p class="g_price">2,499,000 원</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/AustNewGoods03'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>AustNew03_01.png"></p>
			<p class="g_ex">뉴질랜드 남/북섬 9일 #자연그대로 #온천 #밀포드사운드</p>
			<p class="g_price">2,799,000 원</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/AustNewGoods04'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>AustNew04_01.png"></p>
			<p class="g_ex">호주/뉴질랜드 남북섬 10일 #비즈니스 탑승 #블루마운틴 허니문브릿지</p>
			<p class="g_price">6,699,000 원</p>
		</div>
		</a>	
	</article>			

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
