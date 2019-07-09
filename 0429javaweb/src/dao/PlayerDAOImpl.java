package dao;

import java.util.ArrayList;
import java.util.List;

public class PlayerDAOImpl implements PlayerDAO {
    //싱글톤 패턴을 위한 코드
	private static PlayerDAO playerDAO = null;
	private PlayerDAOImpl(){}
	public static PlayerDAO getInstance() {
		if(playerDAO == null) {
			playerDAO = new PlayerDAOImpl();
			
		}
		return playerDAO;
	}
	
 	@Override
	public List<String> getPlayer() {
		List<String> list = new ArrayList<>();
		
		
		list.add("로베르트 듀란");
		list.add("슈거레이 레너드");
		list.add("토마스 헌스");
		list.add("마빈 해글러");
		
		return list;
	}

}
