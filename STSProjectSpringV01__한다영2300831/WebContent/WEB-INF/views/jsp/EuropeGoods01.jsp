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
<p id="title"><b>[스위스/이탈리아 11일 OZ] 유럽의 지붕 융프라우/체르마트+루체른+나/폼/소+돌로미티</b></p>

<hr>

	<p>상품번호 | EWP2365-230829OZ00</p>
	<p>스위스와 이탈리아의 인기도시는 물론 이탈리아의 자연경관을 조망할 수 있는 소도시까지 알차게 즐길 수 있는 최적의 상품입니다.</p>

<img src="<%=vImgUrl %>_europe01_01.png">
<img src="<%=vImgUrl %>_europe01_02.png">
<img src="<%=vImgUrl %>_europe01_03.png">
</nav>

<!---------------------------------------------------------->

<section>
<br>
<table id="secT01">
	<tr>
		<td>여행 기간</td>
		<td>9박 11일</td>
	</tr>
	<tr>
		<td>이용 교통</td>
		<td>아시아나 항공</td>
	</tr>
	<tr>
		<td>방문도시</td>
		<td>인천 → 베니스(1) → 베로나 → 베니스(1) → 미주리나 → 코르티나담페초 → 인스부르크(1) → 아펜첼 → 루체른 → 인터라켄(1) → 이젤발트 → 융프라우 → 인터라켄(1) → 체르마트 → 밀라노(1) → 피렌체 → 몬테카티니(1) → 시에나 → 오르비에토 → 로마(1) → 폼페이 → 소렌토 → 나폴리 → 로마(2) → 인천</td>
	</tr>
	<tr>
		<td>예약현황</td>
		<td>예약 : 30석    남은좌석 : 2석 ( 최소출발 20명 )</td>
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
		<td>3,390,000</td>
		<td>3,390,000</td>
		<td>800,000</td>
	</tr>
	<tr>
		<td>유류할증료</td>
		<td>0</td>
		<td>0</td>
		<td>0</td>
	</tr>
	<tr>
		<td><b>총 상품가</b></td>
		<td>3,390,000</td>
		<td>3,390,000</td>
		<td>800,000</td>
	</tr>
</table>

<ul>
	<li>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</li>
	<li>아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</li>
</ul>

<br><br><br>

<p>상품 안내</p>
<img src="<%=vImgUrl %>_europe01_ex.png">

</section>

<!---------------------------------------------------------->

<aside>
<table id="infor">
	<tr>
		<td><b>출발</b></td>
		<td>2023.08.29 (화) 10:05</td>
	<tr>
	<tr>
		<td><b>도착</b></td>
		<td>2023.09.08 (금) 13:55</td>
	<tr>
	<tr>
		<td><b>교통</b></td>
		<td>아시아나항공</td>
	<tr>
	<tr>
		<td><b>남은좌석</b></td>
		<td>2석</td>
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
		<td class="price">3,390,000</td>
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
		<td class="price">3,390,000</td>
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
		<td class="price">800,000</td>
	</tr>
</table>


<hr>

<table id="totalPrice">
	<tr>
		<td>총 금액</td>
		<td>3,390,000원</td>
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
<!--
스위스 어쩌구
https://www.ybtour.co.kr/product/detailPackage.yb?menu=PKG&dspSid=AAAA000&goodsCd=EWP2365

-->