package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// request에서 request parameter를 꺼낸다
		int number1 = Integer.valueOf(request.getParameter("number1")); // 여기에 브레이크포인트를 걸어서 값이 들어왔나 검증하는게 좋음
		int number2 = Integer.valueOf(request.getParameter("number2"));
		
		// 사칙연산을 한다
		// json으로 구성한다
		// {"addtion": 1570, "subtraction": 1430, "multiplication": 105000, "division": 21}
		PrintWriter out = response.getWriter();
		out.print("{\"addtion\":" + (number1 + number2) 
				+ ", \"subtraction\":" + (number1 - number2) 
				+ ", \"multiplication\":" + (number1 * number2) 
				+ ", \"division\":" + (number1 / number2) + "}");
	}
}
