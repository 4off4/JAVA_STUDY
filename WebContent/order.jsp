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
	h1 {
		color: blue;
	}
	submit {
		color: red;
	}
</style>
<script>
	function sub() {
		int coffee = Integer.parseInt(request.getParameter("coffee"));
		
		if(coffee == 1){
			alert("아메리카노를 선택하셨습니다.");
			return;
		}
		else if(coffee == 2){
			alert("라떼를 선택하셨습니다.");
			return;
		}
		else if(coffee == 3){
			alert("에스프레소를 선택하셨습니다.");
			return;
		}
		else {
			alert("얼그레이티를 선택하셨습니다.");
			return;
		}
	}
</script>

<title>메뉴판</title>
</head>
<body>
	<h1>커피 메뉴</h1>
	<form action="result.jsp" method="post">
	<input type="radio" name="coffee" value="1"/> 아메리카노 (3000won)<br/>
	<input type="radio" name="coffee" value="2"/> 카페라떼 (3300won)<br/>
	<input type="radio" name="coffee" value="3"/> 에스프레소 (2500won)<br/>
	<input type="radio" name="coffee" value="4"/> 얼그레이티 (3500won)<br/>
	수량 :<input type="number" name="su" size="3"/><br/>
	입금액 :<input type="number" name="money" size="10"/>
	<input type="submit" value="주문처리" onclick="sub()"/>
	</form>
</body>
</html>