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
<link rel="stylesheet" href="resources/css/hotels01.css">
<script src="resources/js/jquery-3.7.0.js"></script>
<script src="resources/js/hotels.js"></script>
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

<article id="searchHotels">
	<p>숙소 찾기</p>

	<ul>
		<li><input type="button" id="cityName" value="여행지"></li>
		<li><input type="button" class="chkInOut" value="체크인"></li>
		<li><input type="button" class="chkInOut" value="체크아웃"></li>
		<li><input type="button" id="personnel" value="숙박 인원"></li>
		<li><input type="button" id="serch" value="검색" id="Hserch"></li>
	</ul>
	
	
	<!-- 도시명 입력 --------------------------------->
	<div id="cityResult">
		<input type="text" id="cityText" placeholder="도시명을 입력하세요">
	</div>
	<!------------------------------------------------>


	<!-- 체크인 -------------------------------------->
	<div id="check">
		<div id="all">
			<div id="selectMonth"> 
				<input type="button" id="down" value="◀">
				<p id="yearMonth">2023년 8월</p>
				<input type="button" id="up" value="▶">
			</div>

			<div  align="center">
			<table>
				<tr>
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
			</table>

			<div id="calendar"></div>
			</div>

		</div>
	</div>

	<!------------------------------------------------>




	<!-- 숙박 인원 선택 -------------------------------->
	<div id="memNum">
	<table id="people">
		<tr>
			<td>성인</td>
			<td class="select">
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>아동</td>
			<td>
				<select>
					<option>0</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</td>
		</tr>
	</table>
	</div>
	<!------------------------------------------------>
</article>

<article id="promotion">
	<p>프로모션</p>

	<img src="<%=vImgUrl %>hotelPromotion01.png">
	<img src="<%=vImgUrl %>hotelPromotion02.png">

</article>


<article  id="object">	
	<p>인기 숙소</p>

	<a href="#">
	<div class="goods">
		<p class="g_img"><img src="<%=vImgUrl %>KorbestHotels01_01.png"></p>
		<p class="g_ex">그랜드 조선 제주</p>
		<p class="g_price">306,278 원</p>
	</div>
	</a>
	<div class="goods">
		<p class="g_img"><img src="<%=vImgUrl %>KorbestHotels02_01.png"></p>
		<p class="g_ex">메이필드호텔 서울</p>
		<p class="g_price">165,000 원</p>
	</div>
	<div class="goods">
		<p class="g_img"><img src="<%=vImgUrl %>KorbestHotels03_01.png"></p>
		<p class="g_ex">가평 끌레르키즈풀빌라 펜션</p>
		<p class="g_price">139,000 원</p>
	</div>	
	<div class="goods">
		<p class="g_img"><img src="<%=vImgUrl %>KorbestHotels04_01.png"></p>
		<p class="g_ex">히든 베이 호텔</p>
		<p class="g_price">124,140 원</p>
	</div>	
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
