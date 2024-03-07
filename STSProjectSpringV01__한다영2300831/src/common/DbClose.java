package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbClose {
	
	public static void close(Connection conn, Statement stmt){
		try {
			stmt.close(); 
			conn.close(); 			
		} catch(SQLException e) {
			e.printStackTrace(); 
		}
	}

	public static void close(ResultSet rs, Connection conn, Statement stmt){
		try {
			rs.close();
			stmt.close(); 
			conn.close(); 			
		} catch(SQLException e) {
			e.printStackTrace(); 
		}
	}
	
}
