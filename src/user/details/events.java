package user.details;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class events
 */
@WebServlet("/events")
public class events extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String uname;
	
    /**
     * Default constructor. 
     */
    public events() {
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
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ArrayList<event>text;
		text = new ArrayList<event>();
		try
		{
			dbconnect db = new dbconnect();
			Connection con = db.connect();
			Statement st = con.createStatement();
            String q1 = "select eventname,location,fromtime,totime,description from events";
            ResultSet rs = st.executeQuery(q1);
            String name=null,location=null,description=null;
            Timestamp from=null,to=null;
            while(rs.next())
            {
            	name =rs.getString(1);
            	location = rs.getString(2);
            	from = rs.getTimestamp(3);
            	to = rs.getTimestamp(4);
            	description = rs.getString(5);
            	text.add(new event(name,location,from,to,description));
            	System.out.println(name + location + from + to + description);
             }
            
            if(text.isEmpty())
    		{
    			
    			String pq = "No Events avaliable at this time.";
        		request.setAttribute("events",pq);
        		request.setAttribute("uname",uname);
    	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/events.jsp");
    		    dispatcher.forward(request, response);
    		}
    		else
    		{
    			System.out.println("events recieved");
    			session.setAttribute("events",text);
    	      	session.setAttribute("uname",uname);
    	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/events.jsp");
    		    dispatcher.forward(request, response);
    		}
           
		}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
	}

}
