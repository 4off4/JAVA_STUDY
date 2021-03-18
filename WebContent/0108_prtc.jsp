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
<title>연습/테이블 정보 조회</title>
</head>
<body>
	<h1>course 테이블 정보</h1>
	<table border="1">
		<tr>
			<td>수업번호</td>
			<td>이름</td>
			<td>선생님번호</td>
			<td>과목번호</td>
			<td>등록일</td>
		</tr>
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try{
				conn = DriverManager.getConnection(url,"ICIAUSER","1234");
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT COUNO,COUNAME,TECNO,SUBNO,TO_CHAR(REGDATE,'YYYYMMDD') REGDATE FROM COURSE");	
				while(rs.next()){
		%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
			</tr>
		<%
		
				}
			}
			catch(SQLException ex) {
		%>
			<tr>
				<td colspan="5"><%=ex.getMessage() %></td>
			</tr>
		<%		
			}
			catch(Exception ex) {
		%>
			<tr>
				<td colspan="5"><%=ex.getMessage() %></td>
			</tr>
		<%		
			}
			finally {
				if(conn != null) {
					try{
						conn.close();
					}
					catch(SQLException ex){}
				}
				else if(rs != null) {
					try{
						rs.close();
					}
					catch(SQLException ex){}
				}
				else if(stmt != null) {
					try{
						stmt.close();
					}
					catch(SQLException ex){}
				}
			}
		%>
	</table>
</body>
</html>