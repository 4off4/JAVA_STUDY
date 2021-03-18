<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<style>
	* {
		font-family: 'Poor Story', cursive;
	}
	h1,h3 {
		color: blue;
	}
</style>
	<%
		//parameter
		int coffee = Integer.parseInt(request.getParameter("coffee"));
		int su = Integer.parseInt(request.getParameter("su"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		//변수 초기화
		String memo = "맛있게 드세요 :)";
		String m_coffee = "얼그레이티";
		int price = 3500;
		int total = 0;
		int change = 0;
		
		//메뉴별 가격, 메뉴명 
		switch(coffee) {
		case 1: 
			m_coffee="아메리카노"; price=3000; 
			break;
		case 2:
			m_coffee="카페라떼"; price=3300;
			break;
		case 3:
			m_coffee="에스프레소"; price=2500;
			break;
		default: 
			break;
		}
		
		//입금액, 거스름돈 계산
		total = price*su;
		change = money-total;
		if(money < total) {
			change = 0;
			memo = "입금액이 부족합니다.";
		}
	%>
<title>result</title>
</head>
<body>
	<h1>주문계산 결과</h1>
	<ul>
		<li>커피종류 : <%=m_coffee %></li>
		<li>1개 가격 : <%=price %></li>
		<li>수량 : <%=su %></li>
		<li>총 금액 : <%=total %></li>
		<li>입금액 : <%=money %></li>
		<li>거스름돈 : <%=change %></li>
	</ul>
	<h3><%=memo %></h3>
</body>
</html>