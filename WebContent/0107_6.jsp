<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test 2 page</title>
</head>
<body>
	<h1>request로 넘어온 값 받기</h1>
	<%
		//name,hobby 파라미터 받기
		String name = request.getParameter("name");
		String hobby = request.getParameter("hobby");
		
	%>
	이름 : <%=name %><br/>
	취미 : <%=hobby %><br/>
	<hr color="red"> 
	
	<%
		String hobbies[] = request.getParameterValues("hobby"); //배열로 체크된게 들어감
	%>
	선택한 취미는 : 
	<%
		for(String str : hobbies) {
	%>
	<%=str+ " "%>
	<%	
		}
	%>
	입니다.
</body>
</html>