package com.pawnsoftware;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class User {
	
	// Authenticate user
	public static String authenticate(String username, String password) {
		String message;
		password = encrypt(password);
		if (username.equals("franz") && password.equals("33037d1d2dd1a6b1e6a1929d8492b89996e01d6")) {
			message = "Successfully logged in!";
		} else {
			message = "Sorry, username and password did not match.";
		}
		return message;
	}
	
	// Create a User entity
	public static String create (String username, String password) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		password = encrypt(password);
		String message = UserUtil.createUser(username, password);
		return message;
	}
	
	// Encrypt password
	public static String encrypt(String password) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        md.update(password.getBytes(),0,password.length());
        String md5 = new BigInteger(1,md.digest()).toString(16);
        return md5;
	}
	
}
