package user.details;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class createevent
 */
@WebServlet("/createevent")
public class createevent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String uname;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createevent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String eventname = request.getParameter("eventname").toString();
		String location = request.getParameter("location").toString();
		String fromdate = request.getParameter("fromdate").toString();
		String todate = request.getParameter("todate").toString();
		String fromtime = request.getParameter("timestart").toString();
		String totime = request.getParameter("timeend").toString();
		String description = request.getParameter("description").toString();
		
		boolean insert = false;
		validate v = new validate();
		if(v.validEventText(eventname))
		{
			System.out.println("validated 1");
		
			if(v.validEventText(location))
			{
				System.out.println("validated 2");
			
				if(fromdate.matches("\\d{2}/\\d{2}/\\d{4}") && todate.matches("\\d{2}/\\d{2}/\\d{4}") && fromtime.matches("\\d{2}:\\d{2}") && totime.matches("\\d{2}:\\d{2}"))
				{
					String fm = fromdate.substring(0, 2);
					String fd = fromdate.substring(3, 5);
					String fy = fromdate.substring(6, 10);
					String tm = todate.substring(0, 2);
					String td = todate.substring(3, 5);
					String ty = todate.substring(6, 10);
					
					String from = fy + "-" + fm + "-" + fd + " " + fromtime;
					String to = ty + "-" + tm + "-" + td + " " + totime;
						System.out.println("printed... " + from + to);
				if(v.validTime(from, to))
				{
					System.out.println("yes validated");
					try
					{
						dbconnect db = new dbconnect();
						Connection con = db.connect();
				        Statement st = con.createStatement();
				        String q1;
				        if(description == null)
				        	q1 = "insert into events values('" + eventname + "','"+location+"','"+from+"','"+to+"',default)";
				        else
				        	q1 = "insert into events values('" + eventname + "','"+location+"','"+from+"','"+to+"','"+description+"')";
				        st.executeUpdate(q1);
			            System.out.println("inserted event");
	            		session.setAttribute("uname", uname);
	            		RequestDispatcher dispatcher = request.getRequestDispatcher("/home");
	            	    dispatcher.forward(request, response);
	            	    st.close();
				        con.close();
				        insert = true;
					}
					catch(SQLException e)
					{
						System.out.println(e.getMessage());
					}
				}
				else
				{
					/*request.setAttribute("dateentry","InvalidDate"); 
					RequestDispatcher dispatcher = request.getRequestDispatcher("/createevent.jsp");
            	    dispatcher.forward(request, response);*/
				}
			}
			else
			{
				/*request.setAttribute("location", "!InvalidLocation"); 
				RequestDispatcher dispatcher = request.getRequestDispatcher("/createevent.jsp");
        	    dispatcher.forward(request, response);*/
			}
		}
		else
		{
			/*request.setAttribute("eventname", "!InvalidName"); 
			RequestDispatcher dispatcher = request.getRequestDispatcher("/createevent.jsp");
    	    dispatcher.forward(request, response);*/
		}
		
	}

}
}
