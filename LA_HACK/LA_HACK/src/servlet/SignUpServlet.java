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
		User newUser = new User();
		newUser.setUsername(request.getParameter("username"));
		newUser.setPassword(request.getParameter("password"));
		newUser.email = request.getParameter("email");
		newUser.firstname = request.getParameter("firstname");
		newUser.lastname = request.getParameter("lastname");
		UserDatabase.allUsers.put(request.getParameter("username"), newUser);
		
		request.setAttribute("username", request.getParameter("username"));
		RequestDispatcher dispatch = request.getRequestDispatcher("/HomePage.jsp");
		dispatch.forward(request, response);
	}

	

}
