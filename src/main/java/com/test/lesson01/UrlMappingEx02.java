package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 브라우저가 html을 보고 이제 돔트리를 만들어야겠군
		
		PrintWriter out = response.getWriter();
		
		// 서블릿: 자바 + html (역할을 확실하게 해야함 -> 원래 언어에 따라 분리해서 코드를 짜야함. 근데 서블릿은 섞여있음. 그래서 서블릿은 안좋음)
		// 1 ~ 10 합계 : 1+2+....+10
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.println("<html><head><title>합계</title></head><body>"); // html은 줄바꿈 안먹음. br로 해야함
		out.print("합계:<strong>" + sum + "</strong>");
		out.print("</body></html>");
	}
}
