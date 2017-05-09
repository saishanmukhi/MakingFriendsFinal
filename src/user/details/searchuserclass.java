package user.details;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class searchuserclass {
	ArrayList<String> list = new ArrayList<String>();
	ArrayList<searchdetails>text1;
	public ArrayList<searchdetails> searchuser(String uname,String date2,Time from1,Time to1)
	{
		try
		{
			
			text1 = new ArrayList<searchdetails>();
			dbconnect db = new dbconnect();
			Connection con = db.connect();
			Statement st1 = con.createStatement();
            String q2 = "select * from freetime where (date1 = '"+date2+"' and ((from1 >= '"+from1+"' and to1 <= '"+to1+"') or (from1 > '"+from1+"' and from1 < '"+to1+"' and to1 > '"+to1+"') or (from1 < '"+from1+"' and to1 > '"+from1+"'))) and username != '"+uname+"' ";
            ResultSet rs1 = st1.executeQuery(q2);
            Date date1=null;
            Time from11=null;
			Time to11=null;
            while(rs1.next())
            {
              	String person = rs1.getString(1);
              	date1 = rs1.getDate(2);
              	from11 = rs1.getTime(3);
              	to11 = rs1.getTime(4);
            	System.out.println(person);
            	text1.add(new searchdetails(person,date1,from11,to11));
            	list.add(person);
            }
            st1.close();
		}
		catch(SQLException e)
        {
            System.out.println(e.getMessage());    
        }
		System.out.println(list);
		return text1;
	}

}
