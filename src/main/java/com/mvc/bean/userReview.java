package com.mvc.bean;

public class userReview {
	
	private String username;
	private String heading;
	private String rating;
	private String message;
	private String gameid;
	
	public userReview(String username, String heading, String rating, String message,String gameid) {
		super();
		this.username = username;
		this.heading = heading;
		this.rating = rating;
		this.message = message;
		this.gameid = gameid;
	}
	
	public userReview() {
		
	}

	public String getUsername() {
		return username;
	}
	
	public String getgameid() {
		return gameid;
	}

	public String getHeading() {
		return heading;
	}

	public String getRating() {
		return rating;
	}

	public String getMessage() {
		return message;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setHeading(String heading) {
		this.heading = heading;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public void setgameid(String gameid) {
		this.gameid = gameid;
	}
	
	
	
	

}
