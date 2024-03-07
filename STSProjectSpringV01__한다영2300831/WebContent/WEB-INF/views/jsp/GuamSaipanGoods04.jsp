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
		<img class="icon" src="<%=vImgUrl%>_icon02.png">
		<p><a  onclick="location.href='<%=vUrl %>/index'">여행사이트</a></p>

		<div id="search">
			<table>
				<tr>
					<td>
						<span><input type="text"></span>
					</td>
					<td>
						<span><img src="<%=vImgUrl%>search.png"></span>
					</td>
				</tr>
			</table>
		</div>

		<ul>
			<li><a onclick="location.href='<%=vUrl %>/login'">로그인</a></li>
			<li><a onclick="location.href='<%=vUrl %>/insert'">회원가입</a></li>
			<li class="lastLi">예약확인</li>			
		</ul>
    </div>
	
	<hr>

    <div id="mainMenu">
		<ul>
			<li><a onclick="location.href='<%=vUrl %>/airport'">항공권</a></li>
			<li><a onclick="location.href='<%=vUrl %>/hotels'">해외숙소</a></li>
			<li><a onclick="location.href='<%=vUrl %>/hotelsKor'">국내숙소</a></li>
			<li>투어</li>
			<li>패키지</li>
			<li>렌터카</li>
			<li>여행자 보험</li>
			<li><a onclick="location.href='<%=vUrl %>/review'">여행후기</a></li>
			<li>더보기</li>
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
        <li><a href="#">호주/뉴질랜드</a></li>
        <li><a href="#">미주/하와이/중남미</a></li>
        <li><a href="#">홍콩/마카오/대만</a></li>
		<li><a href="#">중국/몽골/중앙아시아</a></li>
    </ul>
</nav>


<!--======================================-->
<nav>
<p id="title"><b>[제주항공/오전출발 4일] 괌 닛코호텔 오션프론트</b></p>

<hr>
	<p>상품번호 | PGP3001-2309177C00</p>
	<p>■ 에메랄드 빛 바다를 조망할 수 있는 오션프론트 호텔</p>
	<p>■ 괌의 아름다운 투몬 비치와 건비치 바다 경관을 모두 즐길 수 있는 호텔</p>
	<p>■ 스릴 넘치고 짜릿한 경험을 원한다면 괌에서 가장 긴 72M 워터 슬라이드</p>
	<p>■ 투명한 괌 바다를 만끽할 수 있는 비치에서 즐기는 다양한 해양 스포츠</p>

<img src="<%=vImgUrl%>GuamSaipan04_01.png">
<img src="<%=vImgUrl%>GuamSaipan04_02.png">
<img src="<%=vImgUrl%>GuamSaipan04_03.png">
</nav>

<!---------------------------------------------------------->

<section>
<br>
<table id="secT01">
	<tr>
		<td>여행 기간</td>
		<td>3박4일</td>
	</tr>
	<tr>
		<td>이용 교통</td>
		<td>제주항공</td>
	</tr>
	<tr>
		<td>방문도시</td>
		<td>ICN → GUM → ICN</td>
	</tr>
	<tr>
		<td>예약현황</td>
		<td>예약 : 8석    남은좌석 : 12석 ( 최소출발 2명 )</td>
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
		<td>607,300 원</td>
		<td>257,300 원</td>
		<td>150,000 원</td>
	</tr>
	<tr>
		<td>유류할증료</td>
		<td>91,700 원</td>
		<td>91,700 원</td>
		<td>0 원</td>
	</tr>
	<tr>
		<td><b>총 상품가</b></td>
		<td>699,000 원</td>
		<td>349,000 원</td>
		<td>150,000 원</td>
	</tr>
</table>

<ul>
	<li>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</li>
	<li>아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</li>
</ul>

<br><br><br>

<p>상품 안내</p>
<img src="<%=vImgUrl%>GuamSaipan04_ex01.png">
<img src="<%=vImgUrl%>GuamSaipan04_ex02.png">
<img src="<%=vImgUrl%>GuamSaipan04_ex03.png">
<img src="<%=vImgUrl%>GuamSaipan04_ex04.png">
</section>

<!---------------------------------------------------------->

<aside>
<table id="infor">
	<tr>
		<td><b>출발</b></td>
		<td>2023.09.17 (일) 10:40</td>
	<tr>
	<tr>
		<td><b>도착</b></td>
		<td>2023.09.20 (수) 21:10</td>
	<tr>
	<tr>
		<td><b>교통</b></td>
		<td>제주항공</td>
	<tr>
	<tr>
		<td><b>남은좌석</b></td>
		<td>12석</td>
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
		<td class="price">679,000 원</td>
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
		<td class="price">349,000 원</td>
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
		<td class="price">150,000 원</td>
	</tr>
</table>


<hr>

<table id="totalPrice">
	<tr>
		<td>총 금액</td>
		<td>699,000 원</td>
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