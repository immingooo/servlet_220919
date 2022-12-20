package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03Insert extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description"); // 아무내용 없으면 ""
		String pictureUrl = request.getParameter("pictureUrl"); // 아무내용 없으면 ""
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into `used_goods`"
				+ " (`sellerId`, `title`, `description`, `price`, `pictureUrl`)"
				+ " values"
				+ " (" + id + ", '" + title + "', '" + description + "', " + price + ", '" + pictureUrl + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
