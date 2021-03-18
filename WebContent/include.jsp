<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 페이지</title>
</head>
<body>
<%-- <%! 
	String str = "여기는 include 페이지~";
	
%>
<%
	out.println(str + "<br>");
%> --%>

<%!
	String id;
	String pw;
%> 
<%
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	
	out.println("id : "+ id + "<br>");
	out.println("pw : "+ pw + "<br>");
%>

</body>
</html>