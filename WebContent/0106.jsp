<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 형식과 테스트</title>
</head>
<body>
<%-- 변수 및 메서드 선언 --%>
<%-- <%! 
	int a;
	int b;
	
	public int sum(int a, int b){
		return a+b;
	}
%>
자바 코드 삽입(실행문)
<% 
	a = 10;
	b = 20;
%>

<!-- 표현식의 결과 값은 30입니다. --> 
<!-- 스크립트의 결과 값은 30입니다. -->
표현식의 결과 값은 <%= sum(a,b) %>입니다. <br>
스크립트의 결과 값은 <% out.println(sum(a,b)); %> 입니다. <br>
<%= sum(a,b) %> <br>

<%
	int i = 0;
	for(i=0; i<6; i++){
		out.println(i + "번째 줄");

%>
<br>=======================<br>
<% 
		if(i>5){
			break;
		}
	}//while
%>


<%-- <%@ include file="include.jsp" %>
<%
	out.println(str + "<br>");
	str = "새로 다시 문자열 변경~";
	out.println(str + "<br>");
%> --%> 


<%-- <jsp:include page="include.jsp" flush="false">
	<jsp:param name="id" value="icia" />
	<jsp:param name="pw" value="12345" />
</jsp:include>

<h1>include 페이지 끝나고 다시 돌아옴.</h1> --%>


<%-- <%@ page import="java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
%>
오늘은 
<%=cal.get(Calendar.YEAR) %>년
<%=cal.get(Calendar.MONTH)+1 %>월
<%=cal.get(Calendar.DATE) %>일 입니다. --%>


<h1>날짜 두 번째 테스트</h1>
<hr><br>
<jsp:useBean id="cal" class="com.icia.web.servlet.CalendarBean" />
오늘은 
<jsp:getProperty name="cal" property="year" />년
<jsp:getProperty name="cal" property="month" />월
<jsp:getProperty name="cal" property="day" />일 입니다.
	
</body>
</html>