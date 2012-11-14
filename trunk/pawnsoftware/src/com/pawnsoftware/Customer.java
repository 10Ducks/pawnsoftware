package com.pawnsoftware;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Customer {
	
	public static void setCustomer(String[] customerInfo) {
		Entity customer = getCustomer(customerInfo[0]);
		if(customer==null) {
			customer = new Entity("Customer",customerInfo[0]);
			customer.setProperty("stateIssued", customerInfo[1]);
			customer.setProperty("expirationYear", customerInfo[2]);
			customer.setProperty("birthdate", customerInfo[3]);
			customer.setProperty("firstname", customerInfo[4]);
			customer.setProperty("lastname", customerInfo[5]);
			customer.setProperty("address", customerInfo[6]);
			customer.setProperty("remarks", customerInfo[7]);
		} else {
			customer.setProperty("stateIssued", customerInfo[1]);
			customer.setProperty("expirationYear", customerInfo[2]);
			customer.setProperty("birthdate", customerInfo[3]);
			customer.setProperty("firstname", customerInfo[4]);
			customer.setProperty("lastname", customerInfo[5]);
			customer.setProperty("address", customerInfo[6]);
			customer.setProperty("remarks", customerInfo[7]);
		}
		Util.persistEntity(customer);
	}	
	
	public static Entity getCustomer(String license) {
		Key customerKey = KeyFactory.createKey("Customer", license);
		return Util.findEntity(customerKey);
	}
	
	public static Iterable<Entity> getAllCustomers(String kind) {
		return Util.listEntities(kind, null, null);
	}
	
	
}
