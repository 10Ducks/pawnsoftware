package com.pawnsoftware;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

class UserUtil {
	private static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();  
	
	public static void createUser(String username, String password) {
		Entity user = new Entity("User",username);
		user.setProperty("password", password);
		datastore.put(user);
		
	}
}