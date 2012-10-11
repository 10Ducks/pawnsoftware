package com.pawnsoftware;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class CustomerBio extends Customer {
	public static void setBio (String license, String sex, String hair, String eyes, String height, String weight, String race) {
		Entity customerBio = getCustomer(license);
		customerBio.setProperty("sex", sex);
		customerBio.setProperty("hair",hair);
		customerBio.setProperty("eyes",eyes);
		customerBio.setProperty("height",height);
		customerBio.setProperty("weight",weight);
		Util.persistEntity(customerBio);
	}
	
	public static Entity getCustomer(String license) {
		Key licenseKey = KeyFactory.createKey("Customer", license);
		return Util.findEntity(licenseKey);
	}

}
