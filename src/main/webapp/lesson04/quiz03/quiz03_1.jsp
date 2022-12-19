<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
	<!-- 제이쿼리 원본, 부트스트랩 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style>
		#wrap {height: 1000px;}
		header {height: 100px;}
		nav {height: 70px;}
		.contents {min-height: 300px;}
		
		footer {height: 50px;}
		
		.bgcolor-orange {background-color: #ff8000;}
		.font-size-20 {font-size: 20px;}
		.text-organge {color: #ff8000;}
		.borderd {border: 2px solid #ff8000;}
		.media-box {width: 350px;}
		.media-parent-box {gap: 20px 25px;}
		article:hover {background-color: #FF9900;}
		.div-size {width: 300px; height: 150px;}
		
		.content1 {height: 50px;}
	</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="bgcolor-orange d-flex justify-content-center align-items-center text-light">
			<jsp:include page="/lesson04/quiz03/header.jsp"/>
		</header>
		<nav class="bgcolor-orange d-flex justify-content-center align-items-center">
			<jsp:include page="/lesson04/quiz03/menu.jsp"/>
		</nav>
		<section class="contents">
			<div class="p-5">
				<div class="display-4 content1 bg-dark">물건 올리기</div>
				<form method="post" action="/lesson04/quiz03_insert">
					<select class="fomt-control">
						<option>-아이디 선택</option>
					</select>
					<input type="text" name="title" placeholder="제목" class="fomt-control">
					<input type="text" name="price" placeholder="가격" class="fomt-control"><br>
					<textarea name="description" rows="5" cols="50" class="fomt-control"></textarea>
					<input type="submit" value="저장" class="btn">
				</form>
			</div>
			<%-- <jsp:include page="/lesson04/quiz03/upload.jsp"/> --%>
		</section>
		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="/lesson04/quiz03/footer.jsp"/>
		</footer>
	</div>
</body>
</html>