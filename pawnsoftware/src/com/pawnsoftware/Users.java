package com.pawnsoftware;

import java.util.Date;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.pawnsoftware.Storage;


public class Users {
	
	public static void setUser(String username, String password) {
		Date dateCreated = new Date();
		password = Encrypter.encrypt(password);
		Entity user = new Entity("Users",username);
		user.setProperty("password", password);
		user.setProperty("dateCreated",dateCreated);
		Storage.persistEntity(user);
	}
	
	public static String login(String username, String password) {
		String session = ""; // Get the Session
		if (findUsername(username)==null) {
			return null;
		} else {
			verifyPassword(password);
			password = Encrypter.encrypt(password);
		}
		return session;
	}
	
	public static Entity findUsername(String username) {
		Key userKey = KeyFactory.createKey("User", username);
		return Storage.findEntity(userKey);
	}
	
	public static void verifyPassword(String password) {
		
	}
		
	
}
