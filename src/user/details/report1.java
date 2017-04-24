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
 * Servlet implementation class report1
 */
@WebServlet("/report1")
public class report1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String uname;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public report1() {
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
		uname = (String) session.getAttribute("uname");
		response.setContentType("text/html");
		String userreported = request.getParameter("usernames").toString();
		String reason = request.getParameter("reason").toString();
		System.out.println("here xyz" + userreported  +  reason);
		dbconnect db = new dbconnect();
		Connection con = db.connect();
		boolean result = insert(con,uname,userreported,reason);
      /*Statement st = con.createStatement();
		insert(uname,userreported,reason);
		String q1 = "insert into report values('"+uname+"','"+userreported+"','"+reason+"')";
		st.executeUpdate(q1);
		System.out.println("inserted reported stmt");
		 st.close();
		con.close();*/
		if(true)
		{
		session.setAttribute("uname", uname);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/home");
    	dispatcher.forward(request, response);
		}
		
	}
	public boolean insert(Connection con ,String uname,String userreported,String reason)
	{
		
		try {
			
			 Statement st = con.createStatement();
		    String q1 = "insert into report values('"+uname+"','"+userreported+"','"+reason+"')";
		    st.executeUpdate(q1);
		    System.out.println("inserted reported stmt");
		    st.close();
		    con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

}
