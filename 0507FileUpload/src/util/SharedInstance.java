package util;

import java.sql.Connection;

public class SharedInstance {
    //공유 변수
	public Connection con;
	
	private SharedInstance() {
		
	}
	private static SharedInstance sharedInstance;
	
	public static SharedInstance getInstance() {
		if(sharedInstance == null) {
			sharedInstance = new SharedInstance();
		}
		return sharedInstance;
	}
}
