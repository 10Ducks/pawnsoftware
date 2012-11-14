package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Entity;

@SuppressWarnings("serial")
public class CustomerServlet extends HttpServlet {
	
	@SuppressWarnings("null")
	public void doPut(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String[] customer = null;
		customer[0] = req.getParameter("license");
		customer[1] = req.getParameter("stateIssued");
		customer[2] = req.getParameter("expirationYear");
		customer[3] = req.getParameter("birthdate");
		customer[4] = req.getParameter("firstname");
		customer[5] = req.getParameter("lastname");
		customer[6] = req.getParameter("address");
		customer[7] = req.getParameter("cityStateZip");
		PrintWriter out = res.getWriter();
		out.println(customer[0]);
		out.println(customer[1]);
		out.println(customer[2]);
		out.println(customer[3]);
		out.println(customer[4]);
		out.println(customer[5]);
		out.println(customer[6]);
		out.println(customer[7]);
		//Customer.setCustomer(customer);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String action = req.getParameter("action");

		if (action.equalsIgnoreCase("put")) {
			doPut(req, res);
			return;
		} /*else if (action.equalsIgnoreCase("delete")) {
			doDelete(req, resp);
			return;
		}*/
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String search = req.getParameter("search");
		PrintWriter out = res.getWriter();
	    if (search == null || search.equals("") || search == "*") {
		    //Iterable<Entity> entities = null;
	    	//entities = Customer.getAllCustomers("Customer");
	    	out.println(""); //Util.writeJSON(entities)
	    } else {
	    	Entity customer = Customer.getCustomer(search);
	    	if (customer != null) {
	    		Set<Entity> result = new HashSet<Entity>();
	    		result.add(customer);
	    		out.println(Util.writeJSON(result));
	    		//out.println("search");
	    	}
	    }
	    //res.sendRedirect("customer/edit");
	}
}
