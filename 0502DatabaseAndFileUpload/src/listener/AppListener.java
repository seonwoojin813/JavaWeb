package listener;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

import util.ShareInstance;

//웹 애플리케이션이 시작 할 때와 종료될 때 호출되는 메소드를 소유한 클래스
@WebListener
public class AppListener implements ServletContextListener {

    
    public AppListener() {
    }

	//웹 애플리케이션이 종료 될 때 호출되는 메소드
    public void contextDestroyed(ServletContextEvent arg0)  { 
        try {
        	if(ShareInstance.getInstance().con != null) {
        	ShareInstance.getInstance().con.close();
        	}
        }catch(Exception e) {
        	System.out.println("데이터베이스 연결 예외:" + e.getMessage());
        	e.printStackTrace();
        }
    }

	//웹 애플리케이션이 시작할 때 호출되는 메소드
    public void contextInitialized(ServletContextEvent arg0)  { 
        try {
        	//context.xml 파일의 접속정보를 가지고 ConnectionPool을 이용하는 데이터베이스 연결 객체 생성
        	Context context = new InitialContext();
        	DataSource ds = (DataSource)context.lookup("java:comp/env/DBConn");
        	ShareInstance.getInstance().con = ds.getConnection();
        	//자바에서의 default - auto commit 
            ShareInstance.getInstance().con.setAutoCommit(false);
        	
        }catch(Exception e) {
        	System.out.println("데이터베이스 연결 예외:" + e.getMessage());
        	e.printStackTrace();
        }
    	
    }
	
}
