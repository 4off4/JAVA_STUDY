<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<title>회원가입 결과창</title>
<style>
	*{
		font-family: 'Poor Story', cursive;
	}
	
	ul{
		border: 2px solid #696660;
		border-radius: 10px;
		width: 300px;
        height: 100px;
        margin: auto;
	}
</style>
<%
	//parameter
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pswd = request.getParameter("pswd2");
	String email = request.getParameter("email");
	String hobbies[] = request.getParameterValues("hobby");
	String str = null;
%>
</head>
<body>
	<ul>
		<li>이름 : <%=name %></li>
		<li>아이디 : <%=id %></li>
		<li>비밀번호 : <%=pswd %></li>
		<li>이메일 : <%=email %></li>
		<li>취미 : 
		<%
		for(int i=0; i<hobbies.length; i++){
			out.print(hobbies[i] + " ");
		}
		%>
		</li>
	</ul>
</body>
</html>