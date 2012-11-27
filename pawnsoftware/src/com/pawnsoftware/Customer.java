package com.pawnsoftware;

import javax.servlet.http.HttpServletRequest;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
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
	
	public static String getCustomersTable(String search) throws NullPointerException {
		Query query = new Query("Customer");
		if (!search.equals("") || search!=null) {
			query.setFilter(CompositeFilterOperator.or(
				FilterOperator.EQUAL.of("lastname", search),
				FilterOperator.EQUAL.of("ID/Name", search)
				));
		}
		PreparedQuery pq = Util.getDatastoreServiceInstance().prepare(query);
		StringBuilder html = new StringBuilder();
		html.append("<tr>");
		for (Entity result : pq.asIterable()) {
			html.append("<td>"+ result.getKey().getName() +"</td>");
			html.append("<td>"+ result.getProperty("lastname").toString() + ", "+ result.getProperty("firstname").toString() +"</td>");
			html.append("<td>"+ result.getProperty("birthdate").toString() +"</td>");
			html.append("<td>"+ result.getProperty("cityStateZip").toString() +"</td>");
			html.append("<td> </td>");
			html.append("<td> </td>");
		}
		html.append("</tr>");
		return html.toString();
		//return Util.listEntities(kind, null, null);
	}
	
}




