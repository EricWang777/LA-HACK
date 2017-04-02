package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.*;

import java.sql.*;

import server.*;
/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		InitializeDB.initialUser();
		//System.out.println(UserDatabase.allUsers.size());
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String errorMessage = "";
		if(username.isEmpty())
		{
			response.getWriter().write("{\"login\":false , \"message\": \"Username cannot be empty\"}");
			return;
		}
		if(password.isEmpty())
		{
			response.getWriter().write("{\"login\":false , \"message\": \"Password cannot be empty\"}");
			return;
		}
		if(UserDatabase.allUsers.get(username)==null)
		{
			response.getWriter().write("{\"login\":false , \"message\": \"Username doesn't exist\"}");
			return;
		}else
		{
			if(!password.equals(UserDatabase.allUsers.get(username).password))
			{
				response.getWriter().write("{\"login\":false , \"message\": \"Wrong password\"}");
				return;
			}
			else
			{
				InitializeDB.currentUser = UserDatabase.allUsers.get(username);
				response.getWriter().write("{\"login\":true , \"message\": \"HomePage.jsp\"}");
				QuestionDatabase qdb = new QuestionDatabase(10);
				for(Question q: qdb.allQuestions){
					System.out.println(q.getContent());
				}
				return;
			}
		}
		

	}
	
}
