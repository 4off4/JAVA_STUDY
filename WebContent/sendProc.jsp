<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>
 <!DOCTYPE html> 
 <html> 
 <head> 
 <meta charset="UTF-8"> 
 <title>sendProc</title> 
 </head> 
 <body> 
	 method : <%=request.getMethod() %>
	 <br /> 
	 name : <%=name %>
	 <br /> 
	 email : <%=email %>
 </body> 
 </html> 