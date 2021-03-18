<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	double[] val = {1.3, 4.5, 3.3};

	public void jspInit() {
		System.out.println("jspInit() method called.");
		//처음에 해지가 안되어서 이것만 뜨고 (와스 올라갈 때 한번 호출)
	}
	
	public void jspDestory() {
		System.out.println("jspDestory() method called.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 형식 연습</title>
</head>
<body>
	<h1>[1.3, 4.5, 3.3]의 평균 : <%=avg(val) %> </h1>
	<br>
</body>
</html>

<%!
double avg(double[] values) {
	double sum = 0.0;
	
	for(int i = 0; i<values.length; i++) {
		sum += values[i];
	}
	
	return sum/values.length;
}
%>