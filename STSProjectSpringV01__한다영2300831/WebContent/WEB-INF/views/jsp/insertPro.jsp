<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");

String vUrl = request.getContextPath();
%>
</head>
<body>

	<sql:setDataSource var="dataSource"
		url="jdbc:oracle:thin:@localhost:1521:XE"
		driver="oracle.jdbc.driver.OracleDriver"
		user="hr" password="hr"/>
						
	<sql:update dataSource="${dataSource}" var="resultSet">
		insert into tourmember values (?,?,?,?,?,?)
		<sql:param value="${param.mem_id}"/>
		<sql:param value="${param.mem_pwd}"/>
		<sql:param value="${param.mem_name}"/>
		<sql:param value="${param.mem_email}"/>
		<sql:param value="${param.mem_phone}"/>
		<sql:param value="${param.mem_birth}"/>
	</sql:update>
	
	
	<c:if test="${resultSet != 0}">
		<c:set var="vMsg" value="${param.mem_name}님 회원 가입 성공"></c:set>
	</c:if>
	<c:if test="${resultSet == 0}">
		<c:set var="vMsg" value="${param.mem_name}님 회원 가입 실패"></c:set>
	</c:if>
	
		
 	<c:redirect url="<%=vUrl %>/project/jsp/login.jsp">
		<c:param name="msg" value="${vMsg}"/>
	</c:redirect>

</body>
</html>