package user.details;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

public class searchdetails {
	private String person;
	Date date1;
	Time from11,to11;

	public searchdetails(String person, Date date1, Time from11, Time to11) {
		this.person=person;
		this.date1=date1;
		this.from11=from11;
		this.to11=to11;
		// TODO Auto-generated constructor stub
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public Date getDate1() {
		return date1;
	}

	public void setDate1(Date date1) {
		this.date1 = date1;
	}

	public Time getFrom11() {
		return from11;
	}

	public void setFrom11(Time from11) {
		this.from11 = from11;
	}

	public Time getTo11() {
		return to11;
	}

	public void setTo11(Time to11) {
		this.to11 = to11;
	}

}
