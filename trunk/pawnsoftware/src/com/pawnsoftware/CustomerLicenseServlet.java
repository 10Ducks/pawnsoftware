package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class CustomerLicenseServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String license = req.getParameter("license");
		String stateIssued = req.getParameter("stateIssued");
		String expiration = req.getParameter("expiration");
		String birthdate = req.getParameter("birthdate");
		CustomerLicense.setLicense(license, stateIssued, expiration, birthdate);
		
		PrintWriter out = res.getWriter();
		out.println("Saved customer License");
		res.sendRedirect("/customer-license/create");
	}
}
