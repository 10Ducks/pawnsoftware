package com.pawnsoftware;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

class Util {
	private static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();  
	
	public static void persistEntity(Entity entity) {
		datastore.put(entity);
	}
		
	public static Entity findEntity(Key key) {
		try {	  
			return datastore.get(key);
		} catch (EntityNotFoundException e) {
			return null;
		}
	}
	
    @SuppressWarnings("deprecation")
	public static Iterable<Entity> listEntities(String kind, String searchBy, String searchFor) {
	  	Query q = new Query(kind);
	  	if (searchFor != null && !"".equals(searchFor)) {
	  		q.addFilter(searchBy, FilterOperator.EQUAL, searchFor);
	  	}
	  	PreparedQuery pq = datastore.prepare(q);
	  	return pq.asIterable();
	}
    
    public static DatastoreService getDatastoreServiceInstance() {
    	return datastore;
    }
}