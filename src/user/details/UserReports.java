package user.details;

public class UserReports {
	
	String userName,reportedUserName,reason;
	int count;
	

	

	public UserReports(String userName, String reportedUserName, String reason, int count) {
		this.userName = userName;
		this.reportedUserName = reportedUserName;
		this.reason = reason;
		this.count=count;
	}
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getReportedUserName() {
		return reportedUserName;
	}

	public void setReportedUserName(String reportedUserName) {
		this.reportedUserName = reportedUserName;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	

}
