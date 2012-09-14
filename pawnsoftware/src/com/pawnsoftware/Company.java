package com.pawnsoftware;

import com.pawnsoftware.Storage;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Company {
	
	public static void setCompany(String companyName, String companyDescription) {
	    Entity company = getCompany(companyName);
	  	if (company == null) {
	  	  company = new Entity("Company", companyName);
	  	  company.setProperty("description", companyDescription);
	  	} else {
	  	  company.setProperty("description", companyDescription);
	  	}
	  	Storage.persistEntity(company);
	}
	
	public static Entity getCompany(String companyName) {
	  	Key companyKey = KeyFactory.createKey("Company",companyName);
	  	return Storage.findEntity(companyKey);
	}

	public static Iterable<Entity> getAllCompanies(String kind) {
	    return Storage.listEntities(kind, null, null);
	}

}
