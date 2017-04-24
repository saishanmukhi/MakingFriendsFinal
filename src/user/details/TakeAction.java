package user.details;

import java.io.IOException;
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
 * Servlet implementation class TakeAction
 */
@WebServlet("/TakeAction")
public class TakeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeAction() {
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
		//System.out.println("hellooooo");
		String userreported = request.getParameter("user1").toString();
		//System.out.println("here pqr"  + userreported);
		try
		{
			dbconnect db = new dbconnect();
			Connection con = db.connect();
			int countint = count(con,userreported);
			/*Statement st = con.createStatement();
            String q1 = "select count('"+userreported+"') from report";
            ResultSet rs = st.executeQuery(q1);
            int countint = 0;
            while(rs.next())
            {
            	countint=rs.getInt(1);
             }*/
            if(countint==1)
            {
            	sendmessage sm= new sendmessage();
				LocalDateTime now = LocalDateTime.now();
		        boolean send1;
				send1=sm.insertintomessage("admin",userreported,"Issuing this warning because of your inappropriate behavior",now);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/admin");
      	      	dispatcher.forward(request, response);
            }
            else if(countint>1)
            {
            	
        			dbconnect db1 = new dbconnect();
        			Connection con1 = db1.connect();
        			boolean delete = delete(con1,userreported);
        			/*Statement st1 = con1.createStatement();
                    String q2 = "delete from report where reporteduser= '"+userreported+"' ";
                    st1.executeUpdate(q2); 
                    String q3 = "delete from userdata where username= '"+userreported+"' ";
                    st1.executeUpdate(q3); 
                    String q4 = "delete from messages where receiver= '"+userreported+"' ";
                    st1.executeUpdate(q4);
                    String q5 = "delete from freetime where username= '"+userreported+"' ";
                    st1.executeUpdate(q5);  
                    String q6 = "delete from interest where username= '"+userreported+"' ";
                    st1.executeUpdate(q6);  */
                    if(delete)
                    {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/admin");
          	      	dispatcher.forward(request, response);
                    }
                    
            }
       	}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
	}
	public int count(Connection con,String userreported) throws SQLException
	{
		Statement st = con.createStatement();
        String q1 = "select count(reporteduser) from report where reporteduser='"+userreported+"' ";
        ResultSet rs = st.executeQuery(q1);
        int countint = 0;
        while(rs.next())
        {
        	countint=rs.getInt(1);
         }
        System.out.println(countint);
		return countint;
		
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
