package user.details.testcases;

import static org.junit.Assert.*;

import org.junit.Test;

import user.details.validate;

public class eventTest 
{

	@Test
	public void validEventTexttest() 
	{
		validate r = new validate();
		assertTrue(r.validEventText("Event music"));
		assertTrue(r.validEventText("studentunion"));
		assertFalse("the text is empty", r.validEventText(""));
		assertFalse("the text is blank", r.validEventText(" "));
		assertFalse("the text was never entered", r.validEventText(null));
        assertTrue(r.validEventText("Event "));
        assertTrue(r.validEventText("Event"));
        assertFalse("the text is empty", r.validEventText(""));
        assertFalse("the text is blank", r.validEventText("  "));
        assertFalse("the text was never entered", r.validEventText(null));
	}
	@Test
	public void validTimeTest()
	{
		validate r = new validate();
		assertTrue(r.validTime("2017-05-10 10:00", "2017-05-10 11:00"));
		assertTrue(r.validTime("2017-05-26 20:00", "2017-05-29 11:00"));
        assertFalse("from date less than current date", r.validTime("2017-04-20 10:00", "2017-04-27 10:00"));
        assertFalse("to dates less than current date", r.validTime("2017-04-27 10:00", "2017-04-20 10:00"));
        assertFalse("to date less than from date", r.validTime("2017-04-26 15:00", "2017-04-25 10:00"));
        assertFalse("from date invalid", r.validTime("2017-04-25 10:00", "2017-04-26 10:00"));
        //assertFalse("the from time is invalid", r.validTime("2017-04-20 23:59", "2017-04-20 10:00"));
        //assertFalse("the to time is invalid", r.validTime("2017-04-20 10:00", "2017-04-20 00:00"));
	}

}
