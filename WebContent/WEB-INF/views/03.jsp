<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>파라미터</h1>
	<!-- http://localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->
	
	<h2>자바 문법 파라미터 꺼내쓰기</h2>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
	%>
	
	<!-- 그냥 03으로 접속하면 각 변수들은 null이라 아무 값도 없는 거임. 파라미터로 넣어야 제대로 나옴. -->
	id = <%=id %> <br>
	pw = <%=pw %> <br>
	name = <%=name %> <br>
	num1 = <%=num1 %> <br>
	num2 = <%=num2 %> <br>
	
	<br><br>
	
	<h2>el 파라미터 꺼내쓰기</h2>
	
	id = ${param.id } <br> <!-- 파라미터에 있는 id라는 뜻 -->
	pw = ${param.pw } <br> 
	name = ${param.name } <br>
	num1 = ${param.num1 } <br>
	num1 = ${param.num2 } <br>
	<br>
	
	sum = ${param.num1 + param.num2 } <br>
	sum = ${param.num1} + ${param.num2 } <br>
	
</body>
</html>