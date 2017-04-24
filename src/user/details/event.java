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
	public String getN() {
		return n;
	}
	public void setN(String n) {
		this.n = n;
	}
	public String getL() {
		return l;
	}
	public void setL(String l) {
		this.l = l;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public Timestamp getF() {
		return f;
	}
	public void setF(Timestamp f) {
		this.f = f;
	}
	public Timestamp getT() {
		return t;
	}
	public void setT(Timestamp t) {
		this.t = t;
	}
	
	
}
