<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="vo.UserVo" %>

<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		<div id="header">
			<h1><a href="/mysite2/main">MySite</a></h1>
			
			<%if (authUser == null) { %>
			<ul>
				<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
				<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
			</ul>

			<%} else { %>
			<ul>
				<li><%=authUser.getName() %> 님 안녕하세요^^</li>
				<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite2/user?action=mform">회원정보수정</a></li>
			</ul>
			<%} %>

		</div>
		<!-- //header -->
		
		<br><br>
		
		<div id="header">
			<h1><a href="/mysite2/main">MySite</a></h1>
			
		<%--값 표현식은 el이고 c태그는 jstl
			sessionScope.authUser == null 보단 empty 쓰는 게 좋음. jstl이랑 자바문법이랑 같이 쓰면 안 됨. 
			{authUser == null}도 되고 {authUser eq null}도 되고 {empty authUser}도 됨.--%>
			<c:choose>
				<c:when test="${empty sessionScope.authUser}">
					<ul>
					
						<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
						<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
					</ul>
				</c:when>
				
				<c:otherwise>
					<ul>
						<li>${sessionScope.authUser.name} 님 안녕하세요^^</li>
						<li>${authUser.name} 님 안녕하세요^^</li> <%--이름 겹치는 거 없어서 가능 --%>
						<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
						<li><a href="/mysite2/user?action=mform">회원정보수정</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- //header -->
</body>
</html>