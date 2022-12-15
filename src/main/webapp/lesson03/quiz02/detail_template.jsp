<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 세부사항</title>
	<!-- 제이쿼리 원본, 부트스트랩 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style>
		#wrap {width: 1200px; margin:auto} /* width */
		header {height: 100px;}
		nav {height: 50px;}
		.contents {min-height:500px}
		.content1 {min-height: 200px;}
		.content2 {min-height: 300px;}
		footer {height: 50px;}
		
		.nav-text {color: black;}
		a:hover {text-decoration:none;}
		
		.music-info-text {font-size:12px; color:#777;}
	</style>
</head>
<body>
	<div id="wrap">
		<header class="d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		<div class="contents">
			<jsp:include page="detail.jsp" />
		</div>
		<hr>
		<footer>
			<jsp:include page="footer.jsp" />			
		</footer>
	</div>
</body>
</html>