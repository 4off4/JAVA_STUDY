<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--데이터 접근해서 가져오는 jsp -->
<%@ page import="java.sql.*" %>
<%!
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블정보조회</title>
</head>
<body>
	<h1>현재 등록되어 있는 TEACHER테이블 정보입니다.(Statement)</h1>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>생년월일</td>
			<td>성별</td>
			<td>가입일</td>
		</tr>
		<%
			Connection conn = null;	//쿼리 연결
			Statement stmt = null;	//쿼리 날림
			ResultSet rs = null;	//쿼리 날려서 받는곳 
			
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, "ICIAUSER", "1234");
				stmt = conn.createStatement(); //statement생성해주고
				rs = stmt.executeQuery("SELECT tecno, tecname, tecbirth, " +
			            "gender, TO_CHAR(REGDATE, 'YYYYMMDD') REGDATE " +
			             " FROM teacher");
				while(rs.next()){
					%>
					<tr>
						<!-- 0부터가 아니라 1부터임 -->
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
						<td colspan="5">SQLException 발생 : <%=ex.getMessage() %></td>
					</tr>
				<%
			}
			catch(Exception ex) {
				%>
				<tr>
					<td colspan="5">예외 발생 : <%=ex.getMessage() %></td>
				</tr>
				<%
			}
			finally {
				if(rs != null) {	//rs가 열려있으면
					try {
						rs.close();
					}
					catch(SQLException ex) {}
				}
				if(stmt != null) {	
					try {
						stmt.close();
					}
					catch(SQLException ex) {}
				}
				if(conn != null) {
					try {
						conn.close();
					}
					catch(SQLException ex) {}
				}
			}
		%>
	</table>
</body>
</html>