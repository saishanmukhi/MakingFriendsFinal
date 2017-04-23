package user.details;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReportedUser
 */
@WebServlet("/ReportedUser")
public class ReportedUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportedUser() {
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
		ArrayList<String>text1;
		text1 = new ArrayList<String>();
		try
		{
			dbconnect db = new dbconnect();
			Connection con = db.connect();
			Statement st = con.createStatement();
            String q1 = "select reporteduser from report";
            ResultSet rs = st.executeQuery(q1);
           String 	 runame = null;
            while(rs.next())
            {
            	
            	runame = rs.getString(1);
            	text1.add(runame);
             }
            System.out.println(runame);
        	session.setAttribute("users", text1);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/takeAction.jsp");
        	dispatcher.forward(request, response);
		}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
	}

}
