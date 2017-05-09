package user.details.testcases;

import static org.junit.Assert.*;

import org.junit.Test;

import user.details.validate;

public class validateto {

	
	@Test
	public void toTest() 
	{
		validate r = new validate();
		assertTrue(r.validateToTime("10:00", "11:00", "2017-05-22"));
		assertFalse("the to time is before the from time", r.validateToTime("13:00", "12:00", "2017-04-13"));
		assertFalse("the time is out of bounds", r.validateToTime("00:00", "00:00", "2017-04-13"));
		assertFalse("the hour is before the current hour", r.validateToTime("13:00", "04:45", "2017-04-12"));
		assertFalse("the hour is out of bounds", r.validateToTime("13:00", "24:45", "2017-04-12"));
		//assertFalse("the minute is before the current minute", r.validateToTime("10:00", "10:01", "2017-05-22"));
		assertFalse("the minute is out of bounds", r.validateToTime("13:00", "10:60", "2017-04-13"));
		assertFalse("the hour is out of bounds", r.validateToTime("13:00", "24:45", "2017-04-13"));
	}

}
