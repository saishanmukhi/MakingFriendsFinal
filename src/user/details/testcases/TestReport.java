package user.details.testcases;

import static org.junit.Assert.*;

import java.util.HashMap;

import org.junit.Test;

import user.details.mock.mockmatch;

public class TestReport {
	HashMap<String, Integer> hmap,h1map = new HashMap<String, Integer>();
	@Test
	public void reportTest() {
		mockmatch h1 = new mockmatch();
		hmap= h1.getUser("lwhite");
		int p = hmap.get("ssdiproject");
		assertFalse("matches present for this user",hmap.isEmpty());
        assertTrue("testing one of matching option",hmap.containsKey("pratyusha"));
        assertFalse("not matched user",hmap.containsKey("anjani"));
        mockmatch h2 = new mockmatch();
        h1map=h2.getUser("anjani");
        assertTrue("no matches for this user",h1map.isEmpty());
	}

}
