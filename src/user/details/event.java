package user.details;

import java.sql.Timestamp;

public class event
{
	private String n, l, d;
	private Timestamp f, t;
	public event(String name, String location, Timestamp from, Timestamp to, String description)
	{
		this.n = name;
		this.l = location;
		this.f = from;
		this.t = to;
		this.d = description;
	}
	public String getName()
	{
		return n;
	}
	public String getLocation()
	{
		return l;
	}
	public Timestamp getFrom()
	{
		return f;
	}
	public Timestamp getTo()
	{
		return t;
	}
	public String getDescription()
	{
		return d;
	}
}
