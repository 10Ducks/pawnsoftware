package com.pawnsoftware;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

class UserUtil {
	private static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();  
	
	public static String createUser(String username, String password) {
		Entity user = new Entity("User",username);
		user.setProperty("password", password);
		datastore.put(user);
		String message = "Successfully created a user.";
		return message;
	}
	
	public static Entity findUserEntity (String username) {
		Key userKey = KeyFactory.createKey("User", username);
	  	try {
	  	  return datastore.get(userKey);
	  	} catch (EntityNotFoundException e) {
	  	  return null;
	  	}
	}
}