package user.details;

import java.io.IOException;
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
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
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
		ArrayList<UserReports>text;
		dbconnect db = new dbconnect();
		Connection con = db.connect();
		text = new ArrayList<UserReports>();
		
			text=getReport(con);
            if(text.isEmpty())
    		{
      	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/admin.jsp");
    		    dispatcher.forward(request, response);
    		}
    		else
    		{
    			System.out.println("reports exist");
    			session.setAttribute("reports",text);
    	      	RequestDispatcher dispatcher = request.getRequestDispatcher("/admin.jsp");
    		    dispatcher.forward(request, response);
    		}
           
		
	}
	
	public ArrayList<UserReports> getReport(Connection con)
	{
		ArrayList<UserReports>text1;
		text1 = new ArrayList<UserReports>();
		try
		{
			
			Statement st = con.createStatement();
            String q1 = "select username,reporteduser,reason,count(reporteduser) from report group by reporteduser";
            ResultSet rs = st.executeQuery(q1);
           String 	u_name = null , runame = null,reason = null;
           int count=0;
            while(rs.next())
            {
            	u_name = rs.getString(1);
            	runame = rs.getString(2);
            	reason = rs.getString(3);
            	count = rs.getInt(4);
            	
            	text1.add(new UserReports(u_name,runame,reason,count));
             }
            System.out.println(u_name+runame+reason+count);
		}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
		return text1;
	}


}
