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
<link rel="stylesheet" href="resources/css/goods.css">
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
<nav>
<p id="title"><b>★선착순깜짝특가★[고품격온천큐슈기행]◇특급힐튼+고급히젠야+나카스크루즈◇벳후인,구마모토3일</b></p>

<hr>
	<p>상품번호 | JKP1465-230821BX00</p>
	<p>후쿠오카 도시의 화려함, 고즈넉한 일본의 정취까지 한번에 다녀오는 꽉 찬 후쿠오카 프리미엄 여행</p>
	
	<img src="<%=vImgUrl%>japan03_01.png">
	<img src="<%=vImgUrl%>japan03_02.png">
	<img src="<%=vImgUrl%>japan03_03.png">
</nav>

<!---------------------------------------------------------->

<section>
<br>
<table id="secT01">
	<tr>
		<td>여행 기간</td>
		<td>2박3일</td>
	</tr>
	<tr>
		<td>이용 교통</td>
		<td>에어부산</td>
	</tr>
	<tr>
		<td>방문도시</td>
		<td>인천 → 후쿠오카 → 인천</td>
	</tr>
	<tr>
		<td>예약현황</td>
		<td>예약 : 3석 남은좌석 : 22석 ( 최소출발 15명 </td>
	</tr>
</table>

<br><br>

<table id="secT02">
	<tr>
		<td>구분</td>
		<td>성인</td>
		<td>아동</td>
		<td>유아</td>
	</tr>
	<tr>
		<td>기본 상품가</td>
		<td>519,000 원</td>
		<td>519,000 원</td>
		<td>100,000 원</td>
	</tr>
	<tr>
		<td>유류할증료</td>
		<td>30,000 원</td>
		<td>30,000 원</td>
		<td>0 원</td>
	</tr>
	<tr>
		<td><b>총 상품가</b></td>
		<td>549,000 원</td>
		<td>549,000 원</td>
		<td>100,000 원</td>
	</tr>
</table>

<ul>
	<li>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</li>
	<li>아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</li>
</ul>

<br><br><br>

<p>상품 안내</p>
<img src="<%=vImgUrl%>japan03_ex01.png">
<img src="<%=vImgUrl%>japan03_ex02.png">
</section>

<!---------------------------------------------------------->

<aside>
<table id="infor">
	<tr>
		<td><b>출발</b></td>
		<td>2023.08.21 (월) 11:25</td>
	<tr>
	<tr>
		<td><b>도착</b></td>
		<td>2023.08.23 (수) 15:50</td>
	<tr>
	<tr>
		<td><b>교통</b></td>
		<td>에어부산</td>
	<tr>
	<tr>
		<td><b>남은좌석</b></td>
		<td>20석</td>
	<tr>
</table>

<button>출발일 변경</button>

<hr>

<table id="people">
	<tr>
		<td><b>성인</b></td>
		<td rowspan="2" class="select">
			<select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="price">549,000 원</td>
	</tr>
	<tr>
		<td><b>아동</b></td>
		<td rowspan="2">
			<select>
				<option>0</option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="price">549,000 원</td>
	</tr>
	<tr>
		<td><b>유아</b></td>
		<td rowspan="2">
			<select>
				<option>0</option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="price">100,000 원</td>
	</tr>
</table>


<hr>

<table id="totalPrice">
	<tr>
		<td>총 금액</td>
		<td>549,000 원</td>
	</tr>
</table>

<br>
<button id="mainButton">예약하기</button>
<br><br>
</aside>

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
