<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보인다 -->
	<%-- JSP 주석: 소스보기에서 보이지 않는다. 자바코드여서 벌써 읽히고 없어짐 --%>
	
<%
	// 자바 문법 시작. 자바 영역임
	// scriptlet - 메인 메소드 같은 느낌
	
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
%>
<strong>합계:</strong>
<input type="text" value="<%=sum %>">
<br>

<%! 
	// 선언문 - 클래스 같은 느낌
	
	// 필드
	private int num = 100;

	// 메소드
	public String getHelloWorld() {
		return "Hello world!";
	}
%>

<%= num + 200 %><br>

<%= getHelloWorld() %>

<% 
	// ctrl + space로 import하거나 java.util.*로 바꿔서 전체 다 import해오거나
	List<Integer> list = new ArrayList<>();
%>
</body>
</html>