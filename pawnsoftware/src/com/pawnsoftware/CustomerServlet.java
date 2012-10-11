package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class CustomerServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String license = req.getParameter("license");
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String birthdate = req.getParameter("birthdate");
		String sex = req.getParameter("sex");
		String hair = req.getParameter("hair");
		String eyes = req.getParameter("eyes");
		String height = req.getParameter("height");
		String weight = req.getParameter("weight");
		String race = req.getParameter("race");
		Customer.createCustomer(license, firstname, lastname, birthdate);
		//Customer.createBio(sex, hair, eyes, height, weight, race);
		//CustomerAddress.create(license, address1, address2, city, state, zip);
		//CustomerLicense.create(license, stateIssued, expiration, birthdate);
		
		PrintWriter out = res.getWriter();
		out.print("Hello");
	}
	
}
