package com.pawnsoftware;

import javax.servlet.http.HttpServletRequest;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Customer {
	
	public static void setCustomer(HttpServletRequest req) {
		Entity customer = getCustomer(req.getParameter("license"));
		if(customer==null) {
			customer = new Entity("Customer", req.getParameter("license"));
			customer.setProperty("stateIssued", req.getParameter("stateIssued"));
			customer.setProperty("expirationYear", req.getParameter("expirationYear"));
			customer.setProperty("birthdate", req.getParameter("birthdate"));
			customer.setProperty("firstname", req.getParameter("firstname"));
			customer.setProperty("lastname", req.getParameter("lastname"));
			customer.setProperty("address", req.getParameter("address"));
			customer.setProperty("cityStateZip", req.getParameter("cityStateZip"));
			customer.setProperty("remarks", req.getParameter("remarks"));
		} else {
			customer.setProperty("stateIssued", req.getParameter("stateIssued"));
			customer.setProperty("expirationYear", req.getParameter("expirationYear"));
			customer.setProperty("birthdate", req.getParameter("birthdate"));
			customer.setProperty("firstname", req.getParameter("firstname"));
			customer.setProperty("lastname", req.getParameter("lastname"));
			customer.setProperty("address", req.getParameter("address"));
			customer.setProperty("cityStateZip", req.getParameter("cityStateZip"));
			customer.setProperty("remarks", req.getParameter("remarks"));
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
