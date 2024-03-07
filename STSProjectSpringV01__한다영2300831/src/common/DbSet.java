package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbSet {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");	
			return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");
		} catch(ClassNotFoundException e) {
			e.printStackTrace(); 		
		} catch(SQLException e) {
			e.printStackTrace(); 			
		}		
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");
	}
}