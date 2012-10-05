package com.pawnsoftware;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.google.appengine.api.datastore.Entity;

public class User {
	
    // Authenticate user
    public static Boolean authenticate(String username, String password) {
        Entity user = UserUtil.findUserEntity(username);
        password = encrypt(password);
        String pass = "";
        try {
            pass = user.getProperty("password").toString();
        } catch (NullPointerException e) {
            return false; // loginStatus: 2	
            //message = "Username not found!";
        }
        // Start authentication
        if (user!=null && !password.equals(pass)) {
            return false; // loginStatus: 3
            //message = "Password is incorrect";
        } else if (user!=null && password.equals(pass)) {
            return true; // loginStatus: 1
        	//message = "Successfully logged in";
        } else {
            return false; // loginStatus: 4
        	//message = "Sorry, can not find the username and password";
        } 
    }
    
    public static void getUsername() {
    	
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
    
    public static String userLoginMessages(int loginStatus) {
    	String message = "";
    	switch(loginStatus) { 
    		case 0: message = "Please don\'t leave the fields blank."; break;
    		case 1: message = "Successfully logged in!"; break;
    		case 2: message = "Username not found!"; break;
    		case 3: message = "Password is incorrect"; break;
    		case 4: message = "Sorry, can not find the username and password"; break;
    		case 5: message = "Sorry, can not login. "; break;
    	}
    	return message;
    }
    
}
