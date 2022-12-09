<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz04_1</title>
	<!-- 제이쿼리 원본, 부트스트랩 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int firstNum = Integer.parseInt(request.getParameter("firstNum"));
		String calculation = request.getParameter("calculation");
		int secondNum = Integer.parseInt(request.getParameter("secondNum"));
		
		double result = 0;
		String a = null;
		/* switch (calculation) {
		case "+":
			result = firstNum + secondNum;
			break;
		case "-":
			result = firstNum - secondNum;
			break;
		case "*":
			result = firstNum * secondNum;
			break;
		case "/":
			result = (double)firstNum / secondNum;
			break;
		} */
		
		if (calculation.equals("+")) {
			result = firstNum + secondNum;
			a = "+";
		} else if (calculation.equals("-")) {
			result = firstNum - secondNum;
			a = "-";
		} else if (calculation.equals("*")) {
			result = firstNum * secondNum;
			a = "X";
		} else if (calculation.equals("/")) {
			result = (double)firstNum / secondNum;	
			a = "÷";
		}
	%>

	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-4"><%= firstNum %> <%= a %> <%= secondNum %> = <span class="text-primary"><%= result %></span></div>
		<%-- <%
			out.print(firstNum + " " + a + " " + secondNum + " = ");
		%> --%>
	</div>
</body>
</html>