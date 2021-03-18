<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="https://www.flaticon.com/svg/static/icons/svg/743/743164.svg">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<style>
	*{
		font-family: 'Poor Story', cursive;
	}
	h3{
		color : red;
	}
	form {
		border: 2px solid #696660;
        border-radius: 10px;
		width: 400px;
        height: 420px;
        margin: auto;
	}
</style>
<script>
	function send_go() {
		//입력문제처리
		if(document.f_join.name.value == "") {
			alert("이름은 필수입력입니다.");
			document.f_join.name.focus();
			return;
		}
		else if(document.f_join.id.value == "") {
			alert("아이디는 필수입력입니다.");
			document.f_join.id.focus();
			return;
		}
		else if(document.f_join.pswd1.value == ""){
			alert("비밀번호는 필수입력입니다.");
			document.f_join.pswd1.focus();
			return;
		}
		else if(document.f_join.pswd1.value != document.f_join.pswd2.value) {
			alert("비밀번호 일치하지 않습니다! 재입력하세요.");
			document.f_join.pswd2.focus();
			return;
		}

		//입력이 정상일 경우
		alert("회원가입 완료! 환영합니다 \^0^/");
		document.f_join.action = "join_result.jsp";
		document.f_join.submit();
	}
</script>
<title>회원가입창</title>
</head>
<body>
	<form name="f_join" action="join_result.jsp" method="post">
	<h1>회원가입</h1>
	<h3>*는 필수입력 사항입니다.</h3>
	<div>*이름 : <input type="text" name="name" maxlength="5"></div><br/>
	<div>*아이디 : <input type="text" name="id" maxlength="10"></div><br/>
	<div>*패스워드 : <input type="password" name="pswd1" maxlength="20"></div><br/>
	<div>*패스워드 확인 : <input type="password" name="pswd2"></div><br/>
	<div>이메일 : <input type="text" name="email"></div><br/>
	<div>취미 : 
	<input type="checkbox" name="hobby" value="운동"> 운동
	<input type="checkbox" name="hobby" value="게임"> 게임
	<input type="checkbox" name="hobby" value="영화"> 영화
	<input type="checkbox" name="hobby" value="독서"> 독서</div><br/>
	<input type="button" value="회원가입" onclick="send_go()">
	<input type="reset" value="취소">
	</form>
</body>
</html>