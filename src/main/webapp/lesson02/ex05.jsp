<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 - Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); // Singleton(디자인패턴에서 나오는 개념)이 아님(이름만 따라함)
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 DD일 HH:mm:ss");
	out.println(sdf.format(today.getTime()) + "<br>"); // Calendar -> Date객체로 변환 후 format적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance(); // 오늘 날짜가 들어감
	yesterday.add(Calendar.DATE, -1); // 하루 전(어제)
	//yesterday.add(Calendar.MONTH, -1); // 한달 전
	//yesterday.add(Calendar.YEAR, -1); // 일년 전
	
	out.println("어제 날짜:" + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교
	// .compareTo
	// 1 0 -1
	// 기준값(앞에 있는 대상)이 크면 1
	// 같으면 0
	// 기준값(앞에 있는 대상)이 작으면 -1
	int result = today.compareTo(yesterday);
	if(result > 0) {
		out.print("today가 더 크다");
	} else if (result == 0) {
		out.print("두 날짜는 같다");
	} else { // 0보다 작음
		out.print("today가 작다");
	}
%>
</body>
</html>