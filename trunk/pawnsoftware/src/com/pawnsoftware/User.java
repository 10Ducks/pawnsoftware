package com.pawnsoftware;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.google.appengine.api.datastore.Entity;

public class User {
	
	// Authenticate user
	public static String authenticate(String username, String password) {
		String message;
		Entity user = UserUtil.findUserEntity(username);
		password = encrypt(password);
		String pass = "";	
			try {
				pass = user.getProperty("password").toString();
			} catch (NullPointerException e) {
				message = "Username not found.";
			}
		if (user!=null && !password.equals(pass)) {
			message = "Password is incorrect.";
		} else if (user!=null && password.equals(pass)) {
			message = "Successfully logged in!";
		} else {
			message = "Sorry, cannot find the username and password.";
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
