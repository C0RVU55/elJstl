<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>

<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>반복문</h1>

	<h2>자바</h2>
	
	<table border="1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
		</tr>
		
		<%for (int i =0; i<userList.size(); i++) { %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
			</tr>
		<%} %>
		
		<%for (UserVo vo : userList) { %>
			<tr>
				<td><%=vo.getNo() %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getEmail() %></td>
			</tr>
		<%} %>
	</table>
	
	<br><br>
	
	<h2>jstl el</h2>
	
	<table border="1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>index</td>
			<td>count</td>
		</tr>
		
		<%--for(UserVo vo : userList) 향상된 for문과 비슷함. item="전체리스트" 
			status(임의로 정한 이름)으로 index와 count 기능 쓸 수 있는 거(보통 화면에 뿌리려고 씀)
			begin, end 쓰면 일부 구간만 돌릴 수도 있음. --%>
		<c:forEach items ="${userList}" var ="vo" varStatus="status">
		<tr>
			<td>${vo.no }</td>
			<td>${vo.name }</td>
			<td>${vo.email }</td>
			<td>${status.index }</td>
			<td>${status.count }</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>