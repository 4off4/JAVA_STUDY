<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<script>
   function send_go()
   {
      
      if(document.f_join.name.value == "")
         {
         
            alert("이름은 필수 입력입니다.");
            document.f_join.name.focus();
            return;
         }
      
      if(document.f_join.id.value == "")
         {
            alert("아이디는 필수 입력입니다.");
            document.f_join.id.focus();
            return;
      
         }
      if(document.f_join.pwd1.value == "")
      {
         alert("패스워드는 필수 입력입니다.");
         document.f_join.pwd1.focus();
         return;
   
      }
      else if(document.f_join.pwd1.value != document.f_join.pwd2.value) 
      {
         alert("패스워드가 일치하지 않습니다. 다시 입력하세요.");
         document.f_join.pwd2.focus();
         return;
         
      }
            
      //입력이 정상일경우
      document.f_join.action="join_result.jsp"
      document.f_join.submit();
   }

</script>

</head>
<body>

<h1>회원가입</h1>
<form name="f_join" action="join_result.jsp" method="post">
   <h3 style="color:red;">*는 필수 입력 사항입니다.</h3>
   *이름 : <input type= "text" name ="name"><br><br>
   *아이디 : <input type= "text" name ="id"><br><br>
   *패스워드: <input type= "password" name ="pwd1"><br><br>
   *패스워드 확인 : <input type= "password" name ="pwd2"><br><br>
   이메일: <input type= "text" name ="email"><br><br>
   취미 : <input type="checkbox" name="hobby" value="운동" />운동
       <input type="checkbox" name="hobby" value="게임" />게임
       <input type="checkbox" name="hobby" value="영화" />영화
       <input type="checkbox" name="hobby" value="독서" />독서<br><br>
   <input type="button" value="회원가입" onclick="send_go()">
   <input type="reset" value="취소">
</form>
</body>