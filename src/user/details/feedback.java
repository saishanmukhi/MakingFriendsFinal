package user.details;

public class feedback 
{
	private String name;
	private int userRating;
	private String userComment;
	
	public feedback(String username, int rating, String comment) 
	{	
		name = username;
		userRating = rating;
		userComment = comment;
	}

	public String getName() 
	{
		return name;
	}

	public String getUserRating() 
	{
		return userRating + " star";
	}

	public String getUserComment() 
	{
		return userComment;
	}
}
