package com.pawnsoftware;

import java.util.Date;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Invoice {

	public static void setTransaction(String invoiceNo, 
			String item, String description, String amount,
			String user, Key companyKey) {
		Date dateCreated = new Date();
		Entity invoice = getInvoice(invoiceNo);
		if (invoice == null) {
			invoice = new Entity("Invoice", invoiceNo, companyKey);
			invoice.setProperty("item", item);
			invoice.setProperty("description", description);
			invoice.setProperty("amount", amount);
			invoice.setProperty("user", user);
		} else {
			invoice.setProperty("dateCreated", dateCreated);
			invoice.setProperty("item", item);
			invoice.setProperty("description", description);
			invoice.setProperty("amount", amount);
			invoice.setProperty("user", user);
		}
		Storage.persistEntity(invoice);
	}
	
	public static Entity getInvoice(String invoiceNo) {
		Key invoiceKey = KeyFactory.createKey("Invoice", invoiceNo);
		return Storage.findEntity(invoiceKey);
	}

}
