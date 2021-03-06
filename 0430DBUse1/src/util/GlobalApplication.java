package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//모든 곳에서 사용할 데이터베이스 연결 변수와 연결 및 해제 메소드를 소유한 클래스
public class GlobalApplication {
	//공유 변수- 데이터베이스 연결 인스턴스의 참조를 저장할 변수
	public Connection con;
	
	//데이터베이스 연결을 수행하는 메소드 - Listener애서 1번만 호출
	public void connection() {
		try {
			 //con = DriverManager.getConnection("데이터베이스 접속위치", "계정", "비밀번호");
			//데이터 베이스 연결 - 마지막의 XEPDB1앞의 기호는 SID나 Service Name 이냐 따라서  : 또는 /입니다.
			//오라클의 SID(orcl, xe)를 알려준 경우는 : SID 이름
			//오라클의 ServiceName(XEPDB1)을 알려준 경우는 /서비스 이름 
			//con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.100:1521/XEPDB1", "user06", "user06");
			
			//context.xml 파일의 DBConn이라는 리소스의 정보를 이용해서 데이터 베이스의 연결을 합니다.
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/DBConn");
			con = ds.getConnection();
			//AutoCommit 모드를 해제하고 Manual Commit으로 변경
			con.setAutoCommit(false);
			
			System.out.println("데이터베이스 연결 성공");
		}catch(Exception e) {
			System.out.println("연결 예외:"+e.getMessage());
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결을 해제하는 메소드
	public void close() {
		if(con != null) {
			try {
				//데이터베이스 연결 해제
				con.close();
			}catch(SQLException e) {
				System.out.println("연결 예외:"+e.getMessage());
				e.printStackTrace();
			}
		}
	}
	
//싱글톤 코드
private GlobalApplication() {
	
}
private static GlobalApplication globalApplication;

public static GlobalApplication shardInstance() {
	if(globalApplication == null) {
		globalApplication = new GlobalApplication();
	}
	return globalApplication;
}
}
