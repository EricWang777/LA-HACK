package server;

import servlet.*;
import java.sql.*;

import data.*;

public class InitializeDB {

	public static User currentUser = null;
	
	public static void initialUser()
	{
//		String email = "123456@usc.edu";
//		String username = "Sample";
//		String password = "123456";
//		String cardnum = "0000 0000 0000 0000";
//		String firstname = "Sample Firstname";
//		String lastname = "Sample Lastname";
//		Double balance = 0.0;
//		
//		User newUser = new User(username,password,firstname,lastname,email,balance,cardnum);
//		UserDatabase.allUsers.put(username,newUser);
		
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/users?user=root&password=ericwang&useSSL=false");
			st = conn.createStatement();
			rs = st.executeQuery("SELECT * FROM userinfo;");
			while(rs.next())
			{
				String email = rs.getString("email");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String cardnum = rs.getString("cardnum");
				Double balance = rs.getDouble("balance");
				String lastname = rs.getString("lastname");
				String firstname = rs.getString("firstname");
				
				User newUser = new User(username,password,firstname,lastname,email,balance,cardnum);
				UserDatabase.allUsers.put(username,newUser);
			}
			
		} catch (SQLException sqle) {
			System.out.println("ahah");
			System.out.println (sqle.getMessage());
		} catch (ClassNotFoundException cnfe) {
			System.out.println (cnfe.getMessage());
		}
		
	}
	
}
