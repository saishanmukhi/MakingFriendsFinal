package user.details.testcases;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.junit.Test;

import user.details.TakeAction;
import user.details.UserReports;
import user.details.admin;
import user.details.mock.mockdbconnect;

public class TestUsersReported {
	ArrayList<UserReports>text1=null;
	@Test
	public void testusers() {
		admin a = new admin();
		mockdbconnect db = new mockdbconnect();
		Connection con = db.connect();
		text1 = a.getReport(con);
		String repuser = text1.get(0).getReportedUserName();
		assertEquals("rajyalakshmi",repuser);
		TakeAction ta = new TakeAction();
		Connection con1 = db.connect();
		int c=0;
		try {
				c = ta.count(con1,"rajyalakshmi");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(c);
			if(c>1)
			{
				ta.delete(con1,"rajyalakshmi");
			}
	}
	

}
