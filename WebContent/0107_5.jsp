<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test 1page</title>
</head>
<body>
	<h1>사용자 요청 하나의 이름 name에 여러개의 value 가져가기</h1>
	<form action="0107_6.jsp" method="post">
		이름 : <input type="text" name="name" /><br/>
		취미 : 
		<input type="checkbox" name="hobby" value="수영"/>수영
		<input type="checkbox" name="hobby" value="소비"/>소비
		<input type="checkbox" name="hobby" value="주식"/>주식
		<input type="checkbox" name="hobby" value="코딩"/>코딩
		<input type="checkbox" name="hobby" value="음주"/>음주<br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>