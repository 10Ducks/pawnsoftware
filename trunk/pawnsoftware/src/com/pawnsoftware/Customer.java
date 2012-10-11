package com.pawnsoftware;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Customer {
	
	public static void setCustomer(String license, String firstname, String lastname, String birthdate) {
		Entity customer = getCustomer(license);
		if(customer==null) {
			customer = new Entity("Customer",license);
			customer.setProperty("firstname", firstname);
			customer.setProperty("lastname", lastname);
			customer.setProperty("birthdate", birthdate);
		} else {
			customer.setProperty("firstname", firstname);
			customer.setProperty("lastname", lastname);
			customer.setProperty("birthdate", birthdate);
		}
		Util.persistEntity(customer);
	}	
	
	public static Entity getCustomer(String license) {
		Key customerKey = KeyFactory.createKey("Customer", license);
		return Util.findEntity(customerKey);
	}
	
}
