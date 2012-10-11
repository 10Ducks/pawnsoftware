package com.pawnsoftware;

import java.util.List;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

public class CustomerAddress extends Customer {
	
	public static void setAddress(String license, String address1, String address2, String city, String state, String zip) {
		Entity customerAddress = getCustomerAddress(address1);
		Key customerKey = KeyFactory.createKey("Customer",license);
		if(customerAddress==null) {
			customerAddress = new Entity("Customer Address",address1,customerKey);
			customerAddress.setProperty("address1", address1);
			customerAddress.setProperty("address2", address2);
			customerAddress.setProperty("city", city);
			customerAddress.setProperty("state", state);
			customerAddress.setProperty("zip", zip);
		} else {
			customerAddress.setProperty("address1", address1);
			customerAddress.setProperty("address2", address2);
			customerAddress.setProperty("city", city);
			customerAddress.setProperty("state", state);
			customerAddress.setProperty("zip", zip);
		}
		Util.persistEntity(customerAddress);
	}
	
	@SuppressWarnings("deprecation")
	public static Entity getCustomerAddress(String address1) {
	    Query query = new Query("Customer Address");
	    query.addFilter("name", FilterOperator.EQUAL, address1);
	    List<Entity> results = Util.getDatastoreServiceInstance().prepare(query).asList(FetchOptions.Builder.withDefaults());
	    if (!results.isEmpty()) {
	      return (Entity)results.remove(0);
	    }
	    return null;
		
	}
	
}
