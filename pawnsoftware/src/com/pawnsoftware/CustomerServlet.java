package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class CustomerServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String license = req.getParameter("license");
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String birthdate = req.getParameter("birthdate");
		// CustomerBio
		String sex = req.getParameter("sex");
		String hair = req.getParameter("hair");
		String eyes = req.getParameter("eyes");
		String height = req.getParameter("height");
		String weight = req.getParameter("weight");
		String race = req.getParameter("race");
		Customer.setCustomer(license, firstname, lastname, birthdate);
		CustomerBio.setBio(license, sex, hair, eyes, height, weight, race);
		
		PrintWriter out = res.getWriter();
		out.print("Hello");
		res.sendRedirect("/customer/create");
	}
	
}
