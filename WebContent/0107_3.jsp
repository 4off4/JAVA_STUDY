<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1번째의 임의 정수: 1002500219
	...
	10번째의 임의 정수: 531668785
	//값 다 다르게 나옴
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP에서 랜덤발생/합</title>
</head>
<body>
	<%
		java.util.Random random = new java.util.Random();//import
	
		for(int i=1; i<=10; i++){
			int rn = random.nextInt();
	%>
	<h3><%=i %>번째의 임의 정수: <%=rn%><br/></h3>
	<%			
		}	
	%>
	<br/>
	<% 
		int sum = 0;
		int count = 1;
		
		while(count <= 100) {
			sum += count;
			count++;
		}
	%>
	<h2>1~100까지의 합은 : <%=sum %></h2>
</body>
</html>