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
	//@Test
	/*public void validTimeTest()
	{
		validate r = new validate();
        assertTrue(r.validTime("2017-04-22 10:00", "2017-04-22 11:00"));
        assertTrue(r.validTime("2017-04-22 10:00", "2017-05-22 11:00"));
        assertFalse("the from format is wrong", r.validTime("2017/04/20 10:00", "2017-04-20 10:00"));
        assertFalse("the to format is wrong", r.validTime("2017-04-20 10:00", "2017-04-20 10:00"));
        assertFalse("the from date is invalid", r.validTime("2017-04-18 10:00", "2017-04-20 10:00"));
        assertFalse("the to date is invalid", r.validTime("2017-04-20 10:00", "2017-04-19 10:00"));
        assertFalse("the from time is invalid", r.validTime("2017-04-20 23:59", "2017-04-20 10:00"));
        assertFalse("the to time is invalid", r.validTime("2017-04-20 10:00", "2017-04-20 00:00"));
	}*/

}
