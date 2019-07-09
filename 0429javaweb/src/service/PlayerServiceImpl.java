package service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.PlayerDAO;
import dao.PlayerDAOImpl;

public class PlayerServiceImpl implements PlayerService {
    //싱글톤 코드를 생성
	 //싱글톤 패턴을 위한 코드
		private static PlayerServiceImpl playerService = null;
	//Service애서는 DAO를 사용
		private PlayerDAO playerDAO;
		
		
		private PlayerServiceImpl(){
			//생성자에서 DAO객체를 생성
			playerDAO = PlayerDAOImpl.getInstance();
			
		}
		
		public static PlayerService getInstance() {
			if(playerService == null) {
				playerService = new PlayerServiceImpl();
				
			}
			return playerService;
		}
		
	
	@Override
	public List<String> getPlayer(HttpServletRequest request) {
		//리턴할 인스턴스를 생성
		List<String> list = new ArrayList<>();
		//파라미터 읽기
		try {
			//파라미터 인코딩 설정
			request.setCharacterEncoding("utf-8");
			
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
			
		}
		//String ? = request.getParameter("");
		//파라미터들을 모아서 호출할 DAO 메소드의 매개변수 만들기
		
		//DAO 호출 
		list = playerDAO.getPlayer();
		//DAO 메소들를의 결과를 하나로 만들기 
		return list;
	}

}
