package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿이 호출될 URL 패턴을 어노테이션으로 설정
//  "/greeting" --> "*.do"로 바꿀수 있어 이렇게 되면 aaa.do vvv.do로 쳐도 안녕하세요가 나옴
//어노테이션을 이용하는 방법은 직접 기재하지 않고 만들 때 기재해도 됩니다.
@WebServlet({ "/DoController", "/greeting/*" })
public class DoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DoController() {
        super();
    }

    //get 방식의 요청을 처리하는 매소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		/*
	//안녕하세요 출력
	
		//출력할 문서의 종류를 설정 - 생략하면 html
		response.setContentType("text/html; charset=UTF-8");
		//출력객체 가져오기
		PrintWriter out = response.getWriter();
		//출력
		out.println("<html><head><title>서블릿 응답</title></head>");
		out.println("<body><p>안녕하세요</p></body></html>");
		out.close();
		*/
		
		//전달할 데이터 저장
		request.setAttribute("msg", "안녕하세요");
		//결과 페이지로 포워딩
		  RequestDispatcher dispatcher = request.getRequestDispatcher("response.jsp");
		  dispatcher.forward(request, response);
	}

	
	//post 방식의 요청이 왔을때 처리하는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식의 요청도 doGet에서 처리하도록 호출
		doGet(request, response);
	}

}
