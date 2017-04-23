package user.details;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FeedbackControl
 */
@WebServlet("/FeedbackControl")
public class FeedbackControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
     String uname;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
			HttpSession session = request.getSession();
		uname = (String) session.getAttribute("uname");
		session.setAttribute("uname", uname);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/providefeedback.jsp");
	    dispatcher.forward(request, response);
	}

}
