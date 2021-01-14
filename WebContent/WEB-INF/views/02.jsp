<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>연산</h1>
	
	${5 }+${2 } <br>
	\${5+2 } --> ${5+2 } <br> <!-- 바닥이 기본적으로 html임. 연산은 괄호 안에서. \쓰면 문자 그대로 보임. -->
	\${5-2 } --> ${5-2 } <br>
	\${5*2 } --> ${5*2 } <br>
	\${5/2 } --> ${5/2 } <br>
	\${5 div 2} --> ${5 div 2 } <br>
	\${5%2 } --> ${5%2 } <br>
	\${5 mod 2 } --> ${5 mod 2 } <br>
	<br>
	
	\${5>2 } --> ${5>2 } <br> <!-- boolean / 기호대신 ppt에 있는 문자를 쓰기도 함. -->
	\${5 gt 2 } --> ${5 gt 2 } <br>
	\${5<2 } --> ${5<2 } <br>
	\${5 lt 2 } --> ${5 lt 2 } <br>
	<br>
	
	\${5>=2 } --> ${5>=2 } <br> 
	\${5 ge 2 } --> ${5 ge 2 } <br>
	\${5<=2 } --> ${5<=2 } <br>
	\${5 le 2 } --> ${5 le 2 } <br>
	<br>
	
	\${5 == 2 } --> ${5 == 2 } <br>
	\${5 eq 2 } --> ${5 eq 2 } <br>
	\${5 != 2 } --> ${5 != 2 } <br>
	\${5 ne 2 } --> ${5 ne 2 } <br>
	<br>
	
	<!-- 조건 ? 참일 때 값 : 거짓일 때 값 -->
	\${5>2 ? 5 : 2 } --> ${5>2 ? 5 : 2 } <br>
	\${5<2 ? 5 : 2 } --> ${5<2 ? 5 : 2 } <br>
	<br>
	
	\${5>2 } || ${2>10 } --> ${5>2 } || ${2>10 } <br>
	\${5>2 || 2>10 } --> ${5>2 || 2>10 } <br> <!-- 위가 아니라 이렇게 해야 됨 -->
	\${5>2 && 2>10 } --> ${5>2 && 2>10 } <br>
	\${!(5>2)} --> ${!(5>2)} <br>
	!${(5>2)}  <!-- 안 됨 -->
	<br>
	<br>
	 
	 <!-- 변수가 비었냐고 물어보는 연산자 -->
	 \${reqVal} --> ${reqVal} <br>
	\${empty str} --> ${empty str} <br>
	\${empty reqVal} --> ${empty reqVal} <br>
	
	
</body>
</html>