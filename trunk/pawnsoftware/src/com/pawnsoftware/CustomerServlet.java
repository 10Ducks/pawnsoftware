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
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String license = req.getParameter("license");
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String birthdate = req.getParameter("birthdate");
		/* CustomerBio
		String sex = req.getParameter("sex");
		String hair = req.getParameter("hair");
		String eyes = req.getParameter("eyes");
		String height = req.getParameter("height");
		String weight = req.getParameter("weight");
		String race = req.getParameter("race");
		*/
		Customer.setCustomer(license, firstname, lastname, birthdate);
		res.sendRedirect("/edit");
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
