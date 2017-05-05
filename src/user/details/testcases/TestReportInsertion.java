package user.details.testcases;

import static org.junit.Assert.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import java.sql.Connection;
import user.details.report1;
import user.details.mock.mockdbconnect;

public class TestReportInsertion {
	
	@Test
	public void reportinsertion() throws SQLException {
		String user = null;
		report1 h1 = new report1();
		mockdbconnect db = new mockdbconnect();
		Connection con = db.connect();
		assertTrue(h1.insert(con,"lwhite","santhosh1","not communicative"));
		Connection con1 = db.connect();
		Statement st1 = con1.createStatement();
	    String q1 = "select reporteduser from report where username ='lwhite'";
	    ResultSet rs= st1.executeQuery(q1);
	    while(rs.next())
	    {
	    	user = rs.getString(1);
	    }
	    assertEquals("santhosh1",user);
	    		
	}

}
