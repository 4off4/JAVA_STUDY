<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
	boolean connection = false;
	Connection conn = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "iciauser", "1234");
		
		if(conn == null){
			System.out.println("DB연결 실패ㅠ");
		}
		else{
			connection = true;
			System.out.println("DB연결 성공:)");
		}
	}
	catch(Exception e){
		connection = false;
		System.out.println("DB연결 실패..");
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오라클 연결</title>
</head>
<body>
	<%
		if(connection == true){

	%>
	<h1>정상적으로 연결되었습니다.</h1>
	<%			
		}
		else{
	%>
	<h1>연결실패</h1>
	<%			
		}
	%>
</body>
</html>