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
		System.out.println(UserDatabase.allUsers.size());
		
		String username = request.getParameter("username");
		
		InitializeDB.currentUser = UserDatabase.allUsers.get(username);
		
		//request.setAttribute("username", username);
		RequestDispatcher dispatch = request.getRequestDispatcher("/HomePage.jsp");
		dispatch.forward(request, response);
	}
	
}
