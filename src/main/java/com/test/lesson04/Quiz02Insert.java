package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesso04/quiz02_insert")
public class Quiz02Insert extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter 꺼내기 (중간점검)
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결(하고 바로 연결 해제 코드작성하기)
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert query (중간점검)
		String insertQuery ="insert into `favorites`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 즐겨찾기 목록 화면으로 이동 (Redirect)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
