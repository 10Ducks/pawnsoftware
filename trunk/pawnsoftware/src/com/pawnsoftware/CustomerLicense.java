package com.pawnsoftware;

import java.util.List;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

public class CustomerLicense {
	
	public static void setLicense(String license, String stateIssued, String expiration, String birthdate) {
		Entity customerLicense = getCustomerLicense(license);
		Key customerKey = KeyFactory.createKey("Customer",license);
		if(customerLicense==null) {
			customerLicense = new Entity("Customer License",license,customerKey);
			customerLicense.setProperty("stateIssued", stateIssued);
			customerLicense.setProperty("expiration", expiration);
			customerLicense.setProperty("birthdate", birthdate);
		} else {
			customerLicense.setProperty("stateIssued", stateIssued);
			customerLicense.setProperty("expiration", expiration);
			customerLicense.setProperty("birthdate", birthdate);
		}
		Util.persistEntity(customerLicense);
		
	}

	@SuppressWarnings("deprecation")
	public static Entity getCustomerLicense(String license) {
	    Query query = new Query("Customer Address");
	    query.addFilter("name", FilterOperator.EQUAL, license);
	    List<Entity> results = Util.getDatastoreServiceInstance().prepare(query).asList(FetchOptions.Builder.withDefaults());
	    if (!results.isEmpty()) {
	      return (Entity)results.remove(0);
	    }
	    return null;
		
	}

	
}
