package com.pawnsoftware;

import java.util.Map;

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
    
    public static String writeJSON(Iterable<Entity> entities) {
      	StringBuilder sb = new StringBuilder();
      	
      	int i = 0;
      	sb.append("{\"data\": [");
      	for (Entity result : entities) {
      	  Map<String, Object> properties = result.getProperties();
      	  sb.append("{");
      	  if (result.getKey().getName() == null)
      		sb.append("\"name\" : \"" + result.getKey().getId() + "\",");
      	  else
      		sb.append("\"name\" : \"" + result.getKey().getName() + "\",");
      
      	  for (String key : properties.keySet()) {
      		sb.append("\"" + key + "\" : \"" + properties.get(key) + "\",");
      	  }
      	  sb.deleteCharAt(sb.lastIndexOf(","));
      	  sb.append("},");
      	  i++;
      	}
      	if (i > 0) {
      	  sb.deleteCharAt(sb.lastIndexOf(","));
      	}  
      	sb.append("]}");
      	return sb.toString();
      }
      
      public static String writeJSON(Iterable<Entity> entities, String childKind, String fkName) {
      	StringBuilder sb = new StringBuilder();
      	int i = 0;
      	sb.append("{\"data\": [");
      	for (Entity result : entities) {
      	  Map<String, Object> properties = result.getProperties();
      	  sb.append("{");
      	  if (result.getKey().getName() == null)
      		sb.append("\"name\" : \"" + result.getKey().getId() + "\",");
      	  else
      		sb.append("\"name\" : \"" + result.getKey().getName() + "\",");
      	  for (String key : properties.keySet()) {
      		sb.append("\"" + key + "\" : \"" + properties.get(key) + "\",");
      	  }
      	  Iterable<Entity> child = listEntities(childKind, fkName,
      	  String.valueOf(result.getKey().getId()));
      	  for (Entity en : child) {
      		for (String key : en.getProperties().keySet()) {
      		  sb.append("\"" + key + "\" : \"" + en.getProperties().get(key)+ "\",");
      		}
      	  }
      	  sb.deleteCharAt(sb.lastIndexOf(","));
      	  sb.append("},");
      	  i++;
      	}
      	if (i > 0) {
      	  sb.deleteCharAt(sb.lastIndexOf(","));
      	}  
      	sb.append("]}");
      	return sb.toString();
      }    
    
}