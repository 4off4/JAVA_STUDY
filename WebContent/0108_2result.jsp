<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
%>
<%
String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test 2 page</title>
</head>
<body>
	<h1>table생성받기</h1>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "INSERT INTO SUBJECT (SUBNO, SUBNAME, REGDATE) VALUES (?, ?, SYSDATE)"; 
		//SU020 도덕
			try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"ICIAUSER","1234");
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, "SU020");
		pstmt.setString(2, name);
		
		pstmt.executeUpdate();
		
		%>
			<h1>"<%=name %>" 과목 추가 성공.</h1>
		<%

	} catch(SQLException ex) {
		%>
			<h1>SQLException 예외 발생 : <%=ex.getMessage() %></h1>
		<%
	} catch(Exception ex) {
		%>
			<h1>Exception 예외 발생 : <%=ex.getMessage() %></h1>
		<%
	}
	finally {
		if(rs != null) {
			try{
				rs.close();
			} catch(SQLException ex) {}
		}
		else if(pstmt != null) {
			try{
				pstmt.close();
			} catch(SQLException ex){}
		}
		else if(conn != null) {
			try{
				conn.close();
			}catch(SQLException ex){}
		}	
	}
	%>
	

</body>
</html>