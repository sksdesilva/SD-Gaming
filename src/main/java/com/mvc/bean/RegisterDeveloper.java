package com.mvc.bean;

public class RegisterDeveloper {
	
	private String fullName;
	private String userName;
	private String devEmail;
	private String password;
	
	public RegisterDeveloper() {
		
	}
	
	public RegisterDeveloper(String fullName, String userName, String devEmail, String password) {
		
		this.fullName = fullName;
		this.userName = userName;
		this.devEmail = devEmail;
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public String getUserName() {
		return userName;
	}

	public String getDevEmail() {
		return devEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setDevEmail(String devEmail) {
		this.devEmail = devEmail;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
