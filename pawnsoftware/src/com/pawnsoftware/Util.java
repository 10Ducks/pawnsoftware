package com.pawnsoftware;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

class Util {
	private static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();  
	
	public static void persistEntity(Entity entity) {
		datastore.put(entity);
	}
		
	public static Entity findEntity (String entityName, String keyName) {
		Key key = KeyFactory.createKey(entityName, keyName);
	  	try {
	  	  return datastore.get(key);
	  	} catch (EntityNotFoundException e) {
	  	  return null;
	  	}
	}
}