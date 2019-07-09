package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PlayerService;
import service.PlayerServiceImpl;

//클라이언트의 시작 요청과 확장자가 do요청에 반응하는 서블릿을 생성
@WebServlet({"/","*.do"})
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Service 클래스의 변수 생성
	private PlayerService playerService;
	
    public FrontController() {
        super();
        playerService = PlayerServiceImpl.getInstance();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 처리");
	//공통된 주소부분을 제외한 주소를 만들기
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 1);
		
		//요청이 제대로 전달되지 확인하기 위해서 요청주소를 출력
		//로깅을 할 때 앞에 태그를 붙이고 뒤에 내용을 출력
		//정상적으로 처리가 되면 삭제하거나 주석처리를 해야 합니다.
		System.out.println("command:"+command);
		//자바에 스위치 구문에 break가 없으면 break를 만 날 떄 까지 실행
		//이것을 fallthrough 라고 합니다.
		switch(command) {
		case "index.do":
			//서비스의 메소드를 호출해서 결과 가져오기
			List<String> list = playerService.getPlayer(request);
			//데이터를 request에 저장 - 포워딩
			request.setAttribute("list", list);
			//결과 페이지로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
