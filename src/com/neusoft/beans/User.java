package com.neusoft.beans;

public class User {
	private int userId;
	private String userName;
	private String password;
	private String confirmPassword;
	private String userEmail;
	
	public User() {
		
	}

	public User(int userId, String userName, String password, String confirmPassword, String userEmail) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.userEmail = userEmail;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
	
}
