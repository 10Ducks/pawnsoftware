package com.pawnsoftware;

public class User {
	
	// Authenticate user
	public static String authenticate(String username, String password) {
		String message;
		if (username.equals("franz") && password.equals("kakaloka")) {
			message = "Successfully logged in!";
		} else {
			message = "Sorry, username and password did not match.";
		}
		return message;
	}
	
	// Create a User entity
	public static String create(String username, String password) {
		String message = "Creating user";
		UserUtil.createUser(username, password);
		return message;
	}
}
