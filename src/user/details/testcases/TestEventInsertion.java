package user.details.testcases;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

import user.details.createevent;
import user.details.mock.mockdbconnect;

public class TestEventInsertion {

	
	@Test
	public void testevent() throws SQLException {
		createevent ce = new createevent();
		mockdbconnect db= new mockdbconnect();
		Connection con = db.connect();
		ce.insert(con,"Food Festival","SAC","2017-04-27 10:00:00","2017-04-27 14:00:00","Free Food");
		Connection con1 = db.connect();
		Statement st1 = con1.createStatement();
	    String q1 = "select eventname from events where fromtime >now()";
	    ResultSet rs= st1.executeQuery(q1);
	    String eventname="";
	    while(rs.next())
	    {
	    	eventname = rs.getString(1);
	    }
	    assertEquals("Food Festival",eventname);
	    assertNotNull(rs);
	    assertNotEquals("food",eventname);
	    	}

}
