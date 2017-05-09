package user.details;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class viewfeedbacklogin
 */
@WebServlet("/viewfeedbacklogin")
public class viewfeedbacklogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewfeedbacklogin() {
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
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ArrayList<feedback>text;
		text = new ArrayList<feedback>();
		try
		{
			dbconnect db = new dbconnect();
			Connection con = db.connect();
			
            
            Statement st1 = con.createStatement();
            String q2 = "select avg(rating) from feedback";
            ResultSet rs1 = st1.executeQuery(q2);
            int count = 0;
            
            while(rs1.next()){
            	count = rs1.getInt(1);
            }
            String username=null,comment=null;
            int rating=0;
            Statement st = con.createStatement();
            String q1 = "select username,rating,comment from feedback";
            ResultSet rs = st.executeQuery(q1);
            while(rs.next())
            {
            	username =rs.getString(1);
            	rating = rs.getInt(2);
            	comment = rs.getString(3);
            	
            	text.add(new feedback(username,rating,comment));
             }
            System.out.println(username + " " + rating + " stars \n" + comment);
            if(text.isEmpty())
    		{
    			
    			String pq = "No feedback given at this time.";
        		request.setAttribute("viewfeedback",pq);
    	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/viewfeedback.jsp");
    		    dispatcher.forward(request, response);
    		}
    		else
    		{
    			System.out.println("feedback recieved");
    			session.setAttribute("feedback",text);
    			session.setAttribute("avg", count);
    	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/viewfeedbacklogin.jsp");
    		    dispatcher.forward(request, response);
    		}
           st.close();
           
            st1.close();
            con.close();
		}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
	}
	}
