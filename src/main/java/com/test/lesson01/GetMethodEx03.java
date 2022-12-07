package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// request parameter(인풋값) 꺼내기. 키로 꺼낸다.
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age")); // 오류: null인걸 valueOf로 변환할 수 없다.
		
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation) String으로 response 구성하기. 객체 모양을 본떠 만든 스트링이다.
		// {"user_id":"aoo620", "name":"김민경", "age":20}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
