package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex04")
public class GetMethodEx04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // plain -> html
		
		// request parameter 꺼내기
		// http://localhost/lesson01/ex04?userId=aoo620&name=%EA%B9%80%EB%AF%BC%EA%B2%BD&birth=19981025&email=aoo620%40naver.com
		// GET방식 특징: 쿼리로 붙어서 나옴
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 출력
		PrintWriter out = response.getWriter();
//		out.println("userId:" + userId);
//		out.println("name:" + name);
//		out.println("birth:" + birth);
//		out.println("email:" + email);
		
		// 테이블로 출력
		out.print("<html><head><title>회원 정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table>");
		out.print("</body></html>");
	}
}
