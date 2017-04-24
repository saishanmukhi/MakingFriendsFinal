package user.details.testcases;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import user.details.providefeedback;
import user.details.validate;
import user.details.mock.mockdbconnect;

public class feedbackTest 
{

	@Test
	public void test() throws SQLException 
	{
		validate v = new validate();
		assertTrue(v.validateRating("5"));
		assertFalse(v.validateRating(null));
		providefeedback pv = new providefeedback();
		mockdbconnect db = new mockdbconnect();
		Connection con = db.connect();
		pv.givefeedback(con,"lwhite",4,"useful");
		Connection con1 = db.connect();
		Statement st1 = con1.createStatement();
	    String q1 = "select rating from feedback where username ='lwhite'";
	    ResultSet rs= st1.executeQuery(q1);
	    int rate=0;
	    while(rs.next())
	    {
	    	rate = rs.getInt(1);
	    }
	    assertEquals("4",Integer.toString(rate));
	    assertNotEquals("6",Integer.toString(rate));
	    assertNotEquals("0",Integer.toString(rate));
	}

}
