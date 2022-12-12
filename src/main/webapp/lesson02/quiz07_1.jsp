<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz07_1</title>
	<!-- 제이쿼리 원본, 부트스트랩 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	/* 
		모든 자료형을 허용할 수 있는 Object(어떤 데이터인지 모르는 상태)로 해놓음
		값을 사용하려면	다운 캐스팅을 해서 사용해야함
	*/

	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);
	
	String keyword = request.getParameter("keyword");
	String starPointFilter = request.getParameter("starPointFilter");
	boolean exclude = starPointFilter != null; // true:체크됨. true && 4점 이하 제외
	//out.print(keyword + "<br>");
	//out.print(starPointFilter); 아무것도 없을 땐 null(String아님)
	// 체크 했으면: "true", 체크 안되어있으면 : null
%>

	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
			<%
				for (Map<String, Object> item : list) {
					/* String menu = (String)item.get("menu") 
						menu.contains(keyword)로 할 수 있음		
					*/
					if (item.get("menu").equals(keyword)) {
						if (exclude && (double)item.get("point") <= 4) { // 보여지면 안되는 조건 => 체크가 되어있고, 4점 이하 제외
							continue;
						}
			%>
			<%-- <%
				Iterator<Map<String, Object>> iter = list.iterator();
				while (iter.hasNext()) {
					Map<String, Object> item = iter.next(); // {name="버거킹", "menu"="햄버거", "point":4.3}
					if (item.get("menu").equals(keyword)) {
						if (starPointFilter.equals("true")) { // 4점 이하 제외
							double pointd =(double)item.get("point");
							// out.print(pointd);
							if (pointd > 4);
							
			%> --%>
				<tr>
					<td><%= item.get("menu") %></td>
					<td><%= item.get("name") %></td>
					<td><%= item.get("point") %></td>
				</tr>
				
			<%

						/* } else { // 4점 이하 제외
							
							
						} */
					}
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>