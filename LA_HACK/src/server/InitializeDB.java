package server;

import servlet.*;
import java.sql.*;

import data.*;

public class InitializeDB {

	public static User currentUser = null;
	
	public static void initialUser()
	{
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/users?user=root&password=Guo19970816*&useSSL=false");
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
			System.out.println (sqle.getMessage());
		} catch (ClassNotFoundException cnfe) {
			System.out.println("ahah");
			System.out.println (cnfe.getMessage());
		}finally{
		 try {
			 if (rs != null) {
			 rs.close();
			 }if(st!=null)
			 {
				 st.close();
			 }
			 if (conn != null) {
			 conn.close();
			 }
			} catch (SQLException sqle) {
			 System.out.println(sqle.getMessage());
			}
		 }	
	}
	
	public static void initialQuestions()
	{
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/users?user=root&password=Guo19970816*&useSSL=false");
			st = conn.createStatement();
			rs = st.executeQuery("SELECT * FROM questions;");
			while(rs.next())
			{
				String asker = rs.getString("username");
				String answerer = rs.getString("answerer");
				double price = rs.getDouble("price");
				String content = rs.getString("content");
				String answer = rs.getString("answer");
				Integer sneakers = rs.getInt("sneakers");
				
				Question newQ = new Question(asker,answer,content,price,answer,sneakers);
				QuestionDatabase.allQuestions.add(newQ);
			}
			
		} catch (SQLException sqle) {
			System.out.println (sqle.getMessage());
		} catch (ClassNotFoundException cnfe) {
			System.out.println("ahah");
			System.out.println (cnfe.getMessage());
		}finally{
		 try {
			 if (rs != null) {
			 rs.close();
			 }if(st!=null)
			 {
				 st.close();
			 }
			 if (conn != null) {
			 conn.close();
			 }
			} catch (SQLException sqle) {
			 System.out.println(sqle.getMessage());
			}
		 }	
	}
	
	public static void addUser(String username,String password,String fname,String lname,String email,String cardnum, double balance)
	{
		 Connection conn = null;
		 Statement stmt = null;
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost/users?user=root&password=Guo19970816*&useSSL=false");
			 stmt = conn.createStatement();
			 String sql = "insert into userinfo	"+ "value(\'"+username+"\',\'"+password+"\',\'"+fname+"\',\'"+lname+"\',\'"+email+"\',\'"+cardnum+"\',\'"+balance+"\');";
			 stmt.executeUpdate(sql);
		 }catch (SQLException sqle) {
			System.out.println (sqle.getMessage());
		} catch (ClassNotFoundException cnfe) {
			System.out.println("ahah");
			System.out.println (cnfe.getMessage());
		}
	}
	
	public static void addQuestion(String username,String answerer,double price,String content,String answer,double sneakers)
	{
		 Connection conn = null;
		 Statement stmt = null;
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost/users?user=root&password=Guo19970816*&useSSL=false");
			 stmt = conn.createStatement();
			 Question newQ = new Question(username,answerer,content,price,answer,sneakers);
			 QuestionDatabase.allQuestions.add(newQ);
			 String sql = "insert into questions "+ "value(\'"+username+"\',\'"+answerer+"\',\'"+price+"\',\'"+content+"\',\'"+answer+"\',\'"+sneakers+"\',\'"+QuestionDatabase.allQuestions.size()+"\');";
			 stmt.executeUpdate(sql);
		 }catch (SQLException sqle) {
			System.out.println (sqle.getMessage());
		} catch (ClassNotFoundException cnfe) {
			System.out.println("ahah");
			System.out.println (cnfe.getMessage());
		}
	}
}
