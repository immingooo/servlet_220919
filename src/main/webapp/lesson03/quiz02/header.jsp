<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-2">
	<h2 class="font-weight-bold">
		<a href="/lesson03/quiz02/list_template.jsp" class="text-success">Melong</a>
	</h2>
</div>
<div class="input-group col-10 ">
	<form method="get" action="/lesson03/quiz02/detail_template.jsp" class="d-flex">
	  <input type="text" class="form-control" name="search" value="<%= request.getParameter("search") %> "> <!-- 검색어가 없을 땐 if문으로 null일 때 출력안하도록 할 수 있음 -->
	  <div class="input-group-append">
	    <button class="btn bg-info text-light" type="submit">검색</button>
	  </div>
	</form>
</div>