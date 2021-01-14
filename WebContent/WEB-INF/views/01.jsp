<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>데이터형</h1>
	
	<!-- 서블릿에서 넘어온 겂들을 표현할 때 사용. 간결해짐. -->
	정수형 : ${10 } <br>
	실수형 : ${7.5 } <br>
	문자열 : ${"문자열"} <br> <!-- 그냥 문자열 변수명을 넣는 건 괜찮은데 직접 입력할 경우는 '' 또는 ""있어야 됨. -->
	논리형 : ${true } <br>
	null : ${null } <br>
	
	예제 : ${name }
	
</body>
</html>