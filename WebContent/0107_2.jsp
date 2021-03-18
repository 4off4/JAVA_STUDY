<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 형식 문제2</title>
</head>
<body>
<%
	String grade = null;
	String val = request.getParameter("val"); //실행문 localhost:8088/localhost/0107_2.jsp?val=94
	int valInt = Integer.parseInt(val);
	
	switch(valInt/10){
	case 10 : case 9 : grade="A"; break;
	case 8: grade="B"; break;
	case 7: grade="C"; break;
	default: grade="F"; break;
	}
%>
	<h1>당신의 점수는 : <%=valInt%>점 입니다.</h1>
	<h1>평점 : <%=grade%></h1>
</body>
</html>