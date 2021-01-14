<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>객체 접근</h1>
	
	<h2>자바 문법</h2>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	userVo --> name = <%=userVo.getName() %> <br>
	userVo --> email = <%=userVo.getEmail() %> <br>
	userVo --> password = <%=userVo.getPassword() %> <br>
	userVo --> gender = <%=userVo.getGender() %> <br>
	<br>
	
	num = <%=num %> <br>
	str = <%=str %> <br>
	<br><br>
	
	
	<h2>el 문법</h2>
	
	userVo --> name = ${requestScope.userVo.name } <br> <!-- getName()이 작동하는 코드. getName() 없으면 오류남. -->
	userVo --> email = ${requestScope.userVo.email } <br>
	userVo --> password = ${requestScope.userVo.password } <br>
	userVo --> gender = ${requestScope.userVo.gender } <br>
	<br>
	
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	
</body>
</html>