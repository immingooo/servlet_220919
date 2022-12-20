<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId order by A.`id` desc";
	ResultSet rs = ms.select(selectQuery);
%>
    
<div class="media-parent-box d-flex flex-wrap">
	<%
		while(rs.next()) {
	%>
	<article class="media-box borderd p-3">
			<%
       			if (rs.getString("pictureUrl") == null || rs.getString("pictureUrl").equals("")) {
       		%>
					<div class="d-flex justify-content-center align-items-center div-size">
						<h4>이미지 없음</h4>
					</div>
			<%
       			} else {
       		%>
					<img src="<%= rs.getString("pictureUrl") %>" alt="리스트 사진" width="300px" height="150px">
			<%
       			}
       		%>
		<div class="font-weight-bold"><%= rs.getString("title") %></div>
		<div class="text-secondary"><%= rs.getInt("price") %>원
		</div>
		<div class="font-weight-bold text-organge"><%= rs.getString("nickname") %></div>
	</article>
	<%
		}
    %>
</div>

<%
	ms.disconnect();
%>