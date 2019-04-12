package DBPKG;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class dbconn {
	
	public static Connection con;
	
	public static Connection getConnection() throws Exception{
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","asd123");
			return con;
		}catch(Exception e){
			System.out.print("ERROR");
		}
		
		return con;
	}
	
	

	public static ResultSet exec_sql(String args) throws Exception{
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String query = args;
			System.out.print("query(1) :"+query);
			
			conn = dbconn.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			return rs;
	}
}