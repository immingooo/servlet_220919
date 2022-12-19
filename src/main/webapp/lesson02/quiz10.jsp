<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>
	<!-- 제이쿼리 원본, 부트스트랩 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); // 2022-12-17
	today.add(today.MONTH, -2);
	today.add(today.YEAR, -1);
	today.set(today.DATE, 1); // 12월 1일 2022-12-01
	int year = today.get(today.YEAR);
	int month = today.get(today.MONTH);
%>

	<div class="container">
		<div class="d-flex justify-content-center align-items-center m-2">
			<h1><%= year %>-<%= month + 1 %></h1>
		</div>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
			<%
				int oneDayNum = today.get(Calendar.DAY_OF_WEEK); // 5 오늘날짜가 무슨요일인지(일요일(1) ~ 토요일(7))
				int monthMaxNum = today.getActualMaximum(Calendar.DAY_OF_MONTH); // 31 오늘날짜 월의 마지막 날짜숫자
				int weekSize = today.getActualMaximum(Calendar.WEEK_OF_MONTH); // 5 오늘날짜 월이 몇주가 있는지
				/* out.print(oneDayNum + "<br>");
				out.print(monthMaxNum + "<br>");
				out.print(weekSize); */
				int day = 1;
				for (int i = 0; i < weekSize; i++) { // 0 ~ 4 => 5주
					
			%>
				<tr>
				<%
					for (int j = 1; j <= 7; j++) {  // 0 ~ 6 => 7일
						if (i == 0 && j < oneDayNum) { 
				%>
							<td></td>
				<%
							continue;
						} else if (day <= monthMaxNum) {
				%>
							<td><%= day %></td>
				<%
						}
						day++;
						
					}
				%>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>