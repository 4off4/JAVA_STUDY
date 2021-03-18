<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블 정보조회2</title>
</head>
<body>
	<h1>현재 등록되어있는 subject 테이블 정보 입니다.</h1>
	<table border="1">
	<tr>
		<td>과목번호</td>
		<td>과목명</td>
		<td>등록일</td>
	</tr>
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,"ICIAUSER","1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT subno,subname,TO_CHAR(regdate,'YYYYMMDD')regdate FROM subject");
		
			while(rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
				</tr>
				<%
			}
		} catch(SQLException ex) {
			%>
			<tr>
				<td colspan="3">SQLException 예외 발생 : <%=ex.getMessage() %></td>
			</tr>
			<%
		} catch(Exception ex) {
			%>
			<tr>
				<td colspan="3">Exception 예외 발생 : <%=ex.getMessage() %></td>
			</tr>
			<%
		}
		finally {
			if(rs != null) {
				try{
					rs.close();
				} catch(SQLException ex) {}
			}
			else if(stmt != null) {
				try{
					stmt.close();
				} catch(SQLException ex){}
			}
			else if(conn != null) {
				try{
					conn.close();
				}catch(SQLException ex){}
			}	
		}
	%>
	</table>
</body>
</html>