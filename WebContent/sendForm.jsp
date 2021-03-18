<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sendForm</title>
</head>
<body>

   <a href="/localhost/sendProc.jsp?name=인천일보&email=icia@naver.com">GET 방식 전송</a> 
   <br />
  	<br />
   <form name="form" method="post" action="/localhost/sendProc.jsp"> 
   이름 : <input type="text" name="name" style="width:200px;" /> 
  	<br />  
   이메일: <input type="text" name="email" style="width:200px;" /> 
   <br /> 
   <button type="button" onclick="submit()">POST 방식 전송</button>  
   </form> 
   
</body>
</html> 