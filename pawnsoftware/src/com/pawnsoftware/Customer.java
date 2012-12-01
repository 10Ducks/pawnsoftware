package com.pawnsoftware;

import javax.servlet.http.HttpServletRequest;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

public class Customer {
	
	
	public static void setCustomer(HttpServletRequest req) {
		Entity customer = getCustomer(req.getParameter("license"));
		if(customer==null) {
			customer = new Entity("Customer",req.getParameter("license"));
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
	
	public static String getCustomersTable() {
		Query query = new Query("Customer");
		PreparedQuery pq = Util.getDatastoreServiceInstance().prepare(query);
		StringBuilder html = new StringBuilder();
		for (Entity customer : pq.asIterable()) {
			html.append("<tr onclick=\'location.href=\"customer-info?license=" + customer.getKey().getName() + "\"\'>");
			html.append("<td>"+ customer.getKey().getName() +"</td>");
			html.append("<td>"+ customer.getProperty("lastname").toString() + ", "+ customer.getProperty("firstname").toString() +"</td>");
			html.append("<td>"+ customer.getProperty("birthdate").toString() +"</td>");
			html.append("<td>"+ customer.getProperty("cityStateZip").toString() +"</td>");
			html.append("<td> </td>");
			html.append("<td> </td>");
			html.append("<td>");
			html.append("<div class='btn-group'>");
			html.append("</div>");
			html.append("</td>");
			html.append("</tr>");
		}
		return html.toString();
	}
	
	public static String findLastname(String search, Query q) {
		String lastname="";
		q.setFilter(FilterOperator.EQUAL.of("lastname", search));
		return lastname;
	}
	
	public static Entity getCustomerInfo(String license) {
		Key licenseKey = KeyFactory.createKey("Customer", license);
		Entity customerInfo = Util.findEntity(licenseKey);
		return customerInfo;
	}
	
}




