package user.details;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class providefeedback
 */
@WebServlet("/providefeedback")
public class providefeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String uname;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public providefeedback() {
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
		String rate=null;
		HttpSession session = request.getSession();
		uname = (String) session.getAttribute("uname");
		response.setContentType("text/html");
		String comment = request.getParameter("comment").toString();
		rate = request.getParameter("rating").toString();
		//boolean insert = false;
		validate v = new validate();
		if(v.validateRating(request.getParameter("rating").toString()))
		{
			int rating =Integer.parseInt(rate);
			System.out.println(uname + " " + rating + " stars\n" + comment);
			try
			{
				dbconnect db = new dbconnect();
				Connection con = db.connect();
				givefeedback(con,uname,rating,comment);
				/*Statement st1 = con.createStatement();
				String q2 = "select username from feedback where username='"+uname+"'";
				ResultSet rs1 = st1.executeQuery(q2);
				while(rs1.next())
         		{
            		insert=true;
            	}
            	if(insert==true)
            	{
            		System.out.println("updating feedback values");
           			String query = "update feedback set rating = ?,comment = ? where username = ?";
            		java.sql.PreparedStatement preparedStmt = con.prepareStatement(query);
            		preparedStmt.setInt(1,rating);
            		preparedStmt.setString(2,comment);
            		preparedStmt.setString(3,uname);
            		preparedStmt.executeUpdate();
            		preparedStmt.close();
            	}
            	else
            	{
            		System.out.println("inserting feedback values");
            		Statement st = con.createStatement();
    		        String q1;
    		        if(comment == null)
    		        	q1 = "insert into feedback values('" + uname + "','"+rating+"',default)";
    		        else
    		        	q1 = "insert into feedback values('" + uname + "','"+rating+"','"+comment+"')";
    		        st.executeUpdate(q1);
    		        System.out.println("inserted feedback");
            		st.close();
            	}*/
	        	session.setAttribute("uname", uname);
	        	RequestDispatcher dispatcher = request.getRequestDispatcher("/home");
	            dispatcher.forward(request, response);
			    con.close();
			   
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		}
		else
		{
			session.setAttribute("uname", uname);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/providefeedback.jsp");
            dispatcher.forward(request, response);
		   
		}
	}

	public void givefeedback(Connection con, String uname, int rating, String comment) {
		// TODO Auto-generated method stub
		try
		{
			boolean insert=false;
			Statement st1 = con.createStatement();
			String q2 = "select username from feedback where username='"+uname+"'";
			ResultSet rs1 = st1.executeQuery(q2);
			while(rs1.next())
     		{
        		insert=true;
        	}
        	if(insert==true)
        	{
        		System.out.println("updating feedback values");
       			String query = "update feedback set rating = ?,comment = ? where username = ?";
        		java.sql.PreparedStatement preparedStmt = con.prepareStatement(query);
        		preparedStmt.setInt(1,rating);
        		preparedStmt.setString(2,comment);
        		preparedStmt.setString(3,uname);
        		preparedStmt.executeUpdate();
        		preparedStmt.close();
        	}
        	else
        	{
        		System.out.println("inserting feedback values");
        		Statement st = con.createStatement();
		        String q1;
		        if(comment == null)
		        	q1 = "insert into feedback values('" + uname + "','"+rating+"',default)";
		        else
		        	q1 = "insert into feedback values('" + uname + "','"+rating+"','"+comment+"')";
		        st.executeUpdate(q1);
		        System.out.println("inserted feedback");
        		st.close();
        	}
		}
		catch(SQLException e)
		{
			System.out.println(e.getMessage());
		}
	}

}
