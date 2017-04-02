package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.QuestionDatabase;
import server.InitializeDB;

/**
 * Servlet implementation class AskQuestionServlet
 */
@WebServlet("/AskQuestionServlet")
public class AskQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskQuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String answerer = request.getParameter("answerer");
		String priceString = request.getParameter("price");
		String content = request.getParameter("content");
		Double price;
		if(answerer.isEmpty()||priceString.isEmpty()||content.isEmpty())
		{
			response.getWriter().write("{\"ask\":false , \"message\": \"One of the field is empty\"}");
			return;
		}
		else
		{
			try{
				price = Double.parseDouble(priceString);
			}catch(NumberFormatException nfe)
			{
				response.getWriter().write("{\"ask\":false , \"message\": \"The price must be a number\"}");
				return;
			}
			InitializeDB.addQuestion(InitializeDB.currentUser.username, answerer, price, content, "", 0.0);
			response.getWriter().write("{\"ask\":true , \"message\": \"\"}");
			return;
			
		}
	}


}
