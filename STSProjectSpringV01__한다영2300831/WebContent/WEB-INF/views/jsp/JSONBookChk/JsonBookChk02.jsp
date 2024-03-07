<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트</title>
<script src="./_jQueryLib/jquery-3.7.0.js"></script>
<script>
	$(function(){
		$("#checkJson").click(function(){
			
			var jsonStr = '{"name":"박지성", "age": 25, "gender":"남자", "nickname" : "날쌘돌이"}';
			var jsonInfo = JSON.parse(jsonStr);

			var output = "회원 정보<br>";
			output += "==========<br>";
			
			output += "이름 : " + jsonInfo.name + "<br>";
			output += "나이 : " + jsonInfo.age + "<br>";
			output += "성별 : " + jsonInfo.gender + "<br>";
			output += "별명 : " + jsonInfo.nickname + "<br>"
			
			$("#output").html(output);
		});		
	});
</script>
</head>
<body>

<a id="checkJson" style="cursor:pointer">출력</a> <br><br>
<div id="output"></div>

</body>
</html>