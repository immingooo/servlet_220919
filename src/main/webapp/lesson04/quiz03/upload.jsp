<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="p-5">
	<div class="display-4 d-flex">물건 올리기</div>
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