<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09</title>
</head>
<body>
	<h2>오늘부터 1일</h2>
	<%
		Calendar today = Calendar.getInstance();
		today.add(Calendar.DATE, -1); // 오늘부터로 하면 0일이기 때문에 하루를 빼준다.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
		
		// out.print(sdf.format(today.getTime()));

		for(int i = 100; i <= 1000; i += 100) {
			today.add(Calendar.DATE, 100);
	%>
	<h1>
		<span><%= i %>일:</span>
		<span class="text-danger"><%= sdf.format(today.getTime()) %></span>
	</h1>
	<%
		}
	%>
</body>
</html>