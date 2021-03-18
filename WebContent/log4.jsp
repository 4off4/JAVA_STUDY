<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파일 읽어온 내용</h1><br/>
	<%
		//파일을 읽은거 log4j를 사용한걸 보이기 위함
		java.io.BufferedReader br = null;
	
		try {
			java.io.FileReader fr = new java.io.FileReader("/Users/ahneunhee/project/webapps/localhost/WebContent/WEB-INF/logs/localhost.log");
			br = new java.io.BufferedReader(fr);
			
			String line;
			while((line = br.readLine()) != null) { //내용을 읽었다는말
	%>
	<%=line %><br/>
	<%
	
			}//while
		}
		catch(java.io.FileNotFoundException ex) {
	%>
	<font color="red">파일이 존재하지 않습니다.</font>
	<%
			
		}
		catch(java.io.IOException ex) {
	%>
	<font color="red">예외가 발생했습니다.</font>
	<%
		}
		finally {
			if(br != null) {
				try {
					br.close();
				}
				catch(java.io.IOException ex) {}
			}
		}
	%>
</body>
</html>