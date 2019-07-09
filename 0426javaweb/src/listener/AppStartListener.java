package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppStartListener implements ServletContextListener {

    
    public AppStartListener() {
        // TODO Auto-generated constructor stub
    }

    public void contextDestroyed(ServletContextEvent arg0)  { 
    	System.out.println("웹 애플리케이션 종료");
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
    	System.out.println("웹 애플리케이션 시작");
    }
	
}
