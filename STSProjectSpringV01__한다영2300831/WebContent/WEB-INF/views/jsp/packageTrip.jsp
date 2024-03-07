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
<link rel="stylesheet" href="resources/css/packageTrip01.css">
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
	<p><b>BEST 패키지 상품</b></p>
	<article  id="object">	
	
		<a onclick="location.href='<%=vUrl %>/EuropeGoods04'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>_europe04_01.png"></p>
			<p class="g_ex">[이탈리아/스위스 9일] 가슴을 뛰게 만드는 여행 휘르스트+루체른+나/폼/소</p>
			<p class="g_price">2,399,000 원</p>
		</div>
		</a>	
		<a onclick="location.href='<%=vUrl %>/AustNewGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>AustNew02_01.png"></p>
			<p class="g_ex">뉴질랜드 남/북섬 8일 #보잉787드림라이너 #선착순특가</p>
			<p class="g_price">2,499,000 원</p>			
		</div>
		</a>
		<a onclick="location.href='<%=vUrl %>/GuamSaipanGoods03'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>GuamSaipan03_01.png"></p>
			<p class="g_ex">[선착순 프리미어디럭스룸UP][오전4일-7C] 사이판 켄싱턴 호텔(로얄디럭스)+슬림카드+마나가하섬 4일</p>
			<p class="g_price">1,170,200 원~</p>
		</div>	
		</a>
		<a onclick="location.href='<%=vUrl %>/japanGoods02'">
		<div class="goods">
			<p class="g_img"><img src="<%=vImgUrl %>japan02_01.png"></p>
			<p class="g_ex">[잇츠 오사카타임]◇온천호텔2박+노팁+1일자유◇ 오사카,교토,아라시야마 3일</p>
			<p class="g_price">4,399,000 원</p>			
		</div>
		</a>
	</article>
	
	<br>

	<p><b>유럽 패키지 상품</b></p>
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
	
	<p><b>호주/뉴질랜드 패키지 상품</b></p>	
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
	<p><b>괌/사이판 패키지 상품</b></p>		
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
	<p><b>일본 패키지 상품</b></p>	
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
	<p><b>동남아 패키지 상품</b></p>	
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
