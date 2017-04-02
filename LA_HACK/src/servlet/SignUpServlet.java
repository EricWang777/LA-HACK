package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.*;
import server.InitializeDB;

import java.sql.*;
/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("In the servlet method");
		if(QuestionDatabase.allQuestions.size()==0)
		{
			InitializeDB.initialUser();
			InitializeDB.initialQuestions();
		}
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		if(username.isEmpty()||password.isEmpty()||email.isEmpty()||firstname.isEmpty()||lastname.isEmpty())
		{
			response.getWriter().write("{\"login\":false , \"message\": \"One of the field is empty\"}");
			return;
		}
		if(UserDatabase.allUsers.get(username)!=null)
		{
			response.getWriter().write("{\"login\":false , \"message\": \"Username has been taken\"}");
			return;
		}else
		{
			User newUser = new User();
			newUser.username = username;
			newUser.password = password;
			newUser.firstname = firstname;
			newUser.lastname = lastname;
			newUser.email = email;
			String cardnum = "0000000000000000";
			double balance = 0.0;
			InitializeDB.addUser(username, password, firstname, lastname, email,cardnum,balance);
			UserDatabase.allUsers.put(username, newUser);
			response.getWriter().write("{\"login\":true , \"message\": \"HomePage.jsp\"}");
			return;
		}
		
	}

	

}
