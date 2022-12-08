<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03_1</title>
</head>
<body>
	<%
		String result;
		
		int height = Integer.valueOf(request.getParameter("height"));
		int weight = Integer.valueOf(request.getParameter("weight"));
		
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		
		if (bmi < 20) {
			result = "저체중";
		} else if (bmi < 25) {
			result = "정상";
		} else if (bmi < 30) {
			result = "과체중";
		} else {
			result ="비만";
		}
	%>
	
	<h1>BMI 측정 결과 당신은 <%= result %> 입니다.</h1>
	BMI 수치: <%= bmi %>
</body>
</html>