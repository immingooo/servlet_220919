<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `seller`";
	ResultSet rs = ms.select(selectQuery);
%>

<div class="p-5">
	<div class="display-4 content1 pr-4 pl-4">
		물건 올리기
	</div>
	<form method="post" action="/lesson04/quiz03_insert">
		<div class="pr-4 pl-4 form-size">
			<div class="d-flex justify-content-around">
				<select class="form-control col-3" name="id" id="id">
					<option value="">-아이디 선택-</option>
					<%
						while (rs.next()) {
					%>
					<option value="<%= rs.getInt("id") %>"><%= rs.getString("nickname") %></option>
					<%
						}
					%>
				</select>
				<input type="text" name="title" placeholder="제목" class="form-control col-5" id="title">
				<div class="input-group col-3">
					<input type="text" name="price" placeholder="가격" class="form-control" id="price">
					<span class="input-group-text">원</span>
				</div>
			</div>
			<textarea name="description" rows="5" cols="50" class="form-control mt-3 mb-3" id="description"></textarea>
			<div class="input-group mb-3">
				<span class="input-group-text">이미지 url</span>
				<input type="text" name="pictureUrl" class="form-control" id="pictureUrl"> <!-- type="file" -->
			</div>
			<input type="submit" value="저장" class="btn w-100" id="saveBtn">
		</div>
	</form>
</div>
<%
	ms.disconnect();
%>