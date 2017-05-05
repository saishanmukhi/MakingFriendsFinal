package user.details;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		String userreported = request.getParameter("user1").toString();
		dbconnect db1 = new dbconnect();
		Connection con1 = db1.connect();
		boolean delete = delete(con1,userreported);
		 if(delete)
         {
         RequestDispatcher dispatcher = request.getRequestDispatcher("/admin");
	      	dispatcher.forward(request, response);
         }
	}
	public boolean delete(Connection con1,String userreported) 
	{
		Statement st1;
		try {
			st1 = con1.createStatement();
        String q2 = "delete from report where reporteduser= '"+userreported+"' ";
        st1.executeUpdate(q2); 
        String q3 = "delete from userdata where username= '"+userreported+"' ";
        st1.executeUpdate(q3); 
        String q4 = "delete from messages where receiver= '"+userreported+"' ";
        st1.executeUpdate(q4);
        String q5 = "delete from freetime where username= '"+userreported+"' ";
        st1.executeUpdate(q5);  
        String q6 = "delete from interest where username= '"+userreported+"' ";
        st1.executeUpdate(q6); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
		
	}
	

}
