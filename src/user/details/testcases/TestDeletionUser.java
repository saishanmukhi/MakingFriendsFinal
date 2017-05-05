package user.details.testcases;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Before;
import org.junit.Test;

import user.details.mock.mockdbconnect;

public class TestDeletionUser {

	
	@Test
	public void testdeletion() throws SQLException
	{
		mockdbconnect db = new mockdbconnect();
		Connection con2 = db.connect();
		Statement std = con2.createStatement();
	    String q1 = "select reporteduser from report where reporteduser ='santhosh1'";
	    ResultSet rs= std.executeQuery(q1);
	   String count=null;
	    while(rs.next())
	    {
	    	count="not deleted";
	    }
	    assertNotEquals("not deleted",count);
	}
}
