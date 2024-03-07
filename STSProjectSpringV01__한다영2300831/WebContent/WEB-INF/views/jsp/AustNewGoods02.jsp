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
<p id="title"><b>뉴질랜드 북섬 7일 #떴다캡틴킴 #와이토모동굴 #와이헤케섬</b></p>

<hr>

	<p>상품번호 |  PNP1005-240226NZ00</p>
	<p>◆ 백신 미접종자도 출발 전 코로나 검사없이도 뉴질랜드 여행 가능!</p>
	<p>◆ 뉴질랜드 국적기-에어뉴질랜드 직항, 드림라이너 보잉787이용!</p>
	<p>◆ 머리와 마음까지 깨끗해지는 순수 100%의 "뉴질랜드" 자연을 만끽할 수 있는 뉴질랜드 남북섬 정통 일주!!</p>
	<p>◆ 8일동안 다녀오는 부담없는 상품!</p>
	<p>◆ 뉴질랜드 다양한 현지식, 이국적인 도시 그리고 아름다운 자연과 함께 레스토랑에서 식사</p>


<img src="<%=vImgUrl %>AustNew02_01.png">
<img src="<%=vImgUrl %>AustNew02_02.png">
<img src="<%=vImgUrl %>AustNew02_03.png">
</nav>

<!---------------------------------------------------------->

<section>
<br>
<table id="secT01">
	<tr>
		<td>여행 기간</td>
		<td>6박8일</td>
	</tr>
	<tr>
		<td>이용 교통</td>
		<td>뉴질랜드항공</td>
	</tr>
	<tr>
		<td>방문도시</td>
		<td>인천 → 오클랜드 → 와이토모 → 로토루아 → 오클랜드 → 퀸스타운 → 밀포드사운드 → 마운트쿡 → 크라이스트처치 → 오클랜드 → 인천</td>
	</tr>
	<tr>
		<td>예약현황</td>
		<td>예약 : 3석    남은좌석 : 17석 ( 최소출발 8명 )</td>
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
		<td>2,499,000 원</td>
		<td>2,499,000 원</td>
		<td>400,000 원</td>
	</tr>
	<tr>
		<td>유류할증료</td>
		<td>0 원</td>
		<td>0 원</td>
		<td>0 원</td>
	</tr>
	<tr>
		<td><b>총 상품가</b></td>
		<td>2,499,000 원</td>
		<td>2,499,000 원</td>
		<td>400,000 원</td>
	</tr>
</table>

<ul>
	<li>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</li>
	<li>아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</li>
</ul>

<br><br><br>

<p>상품 안내</p>
<img src="<%=vImgUrl %>AustNew02_ex01.png">

</section>

<!---------------------------------------------------------->

<aside>
<table id="infor">
	<tr>
		<td><b>출발</b></td>
		<td>2024.02.26 (월) 20:50</td>
	<tr>
	<tr>
		<td><b>도착</b></td>
		<td>2024.03.04 (월) 19:15</td>
	<tr>
	<tr>
		<td><b>교통</b></td>
		<td>뉴질랜드항공</td>
	<tr>
	<tr>
		<td><b>남은좌석</b></td>
		<td>17석</td>
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
		<td class="price">2,499,000 원</td>
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
		<td class="price">2,499,000 원</td>
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
		<td class="price">400,000 원</td>
	</tr>
</table>


<hr>

<table id="totalPrice">
	<tr>
		<td>총 금액</td>
		<td>2,499,000 원</td>
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