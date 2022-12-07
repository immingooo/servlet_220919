package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8"); // 브레이크포인트 걸기
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price")); // 값이 안넘어오면 에러발생
		
		PrintWriter out = response.getWriter();
		// 브레이크포인트로 중간점검
//		out.println(address.contains("서울시"));
//		out.println(card);
//		out.println(price);
		
		// 안좋은 경우부터 처리하기!!
//		if (address.contains("서울시") == false) { // startsWith도 가능
//			out.print("배달 불가 지역입니다.");
//		} else if (card.contains("신한") == false) {
//			out.print("결제 불가 카드입니다.");			
//		} else {
//			out.print(address + " <b>배달 준비중</b><br>");
//			out.print("결제금액:" + price + "원");
//		}
		
		out.print("<html><head><title>주문 결과</title></head><body>");
		if (address.contains("서울시")) { // startsWith도 가능
			if (card.contains("신한")) {
				out.print("결제 불가 카드입니다.");
			} else {
				out.print(address + " <b>배달 준비중</b><br>");
				out.print("결제금액:" + price + "원");
			}
		} else {
			out.println("배달 불가 지역입니다.");
		}
		out.print("</body></html>");
	}
}
