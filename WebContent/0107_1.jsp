<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String message = "테스트 문자열";

	int a = 2;
	int a(int a) {
		return a+a; 
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 형식 문제</title>
</head>
<body>
	<h1>2+2 = <%=a(a) %></h1>
	<h1><%=message %>에 가나다를 더하면 <%=message+"가나다"%>입니다.</h1>
</body>
</html>