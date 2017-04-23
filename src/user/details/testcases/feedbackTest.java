package user.details.testcases;

import static org.junit.Assert.*;

import org.junit.Test;

import user.details.validate;

public class feedbackTest 
{

	@Test
	public void test() 
	{
		validate v = new validate();
		assertTrue(v.validateRating("5"));
		assertFalse(v.validateRating(null));
	}

}
