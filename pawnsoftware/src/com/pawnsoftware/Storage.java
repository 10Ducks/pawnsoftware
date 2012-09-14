package com.pawnsoftware;

import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
//import com.google.appengine.api.memcache.MemcacheService;
//import com.google.appengine.api.memcache.MemcacheServiceFactory;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Query.FilterOperator;

public class Storage {
	  private static final Logger logger = Logger.getLogger(Storage.class.getCanonicalName());
	  private static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	  //private static MemcacheService keycache = null; //MemcacheServiceFactory.getMemcacheService()
	  
	  public static void persistEntity(Entity entity) {
		  logger.log(Level.INFO, "Saving entity");
		  datastore.put(entity);
	  }
	  
	  public static Entity findEntity(Key key) {
		  logger.log(Level.INFO, "Search the entity");
		  try {
			  logger.log(Level.INFO,"Got key");
			  return datastore.get(key);
		  } catch (EntityNotFoundException e) {
			  logger.log(Level.INFO,e.getMessage());
			  return null;
		  }
	  }
	  
	  public static String writeJSON(Iterable<Entity> entities) {
		    logger.log(Level.INFO, "creating JSON format object");
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

	  @SuppressWarnings("deprecation")
	  public static Iterable<Entity> listEntities(String kind, String searchBy, String searchFor) {
		  logger.log(Level.INFO, "Search entities based on search criteria");
		  Query q = new Query(kind);
		  if (searchFor != null && !"".equals(searchFor)) {
		    q.addFilter(searchBy, FilterOperator.EQUAL, searchFor);
		  }
		  PreparedQuery pq = datastore.prepare(q);
		  return pq.asIterable();
	  }
	  
	  
	  public static String getErrorMessage(Exception ex) throws IOException{
		    return "Error:"+ex.toString();
		  }
	  
	  
	  
	  
}
