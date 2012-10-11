package com.pawnsoftware;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class CustomerAddressServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String license = req.getParameter("license");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String zip = req.getParameter("zip");
		
		CustomerAddress.setAddress(license, address1, address2, city, state, zip);
		res.sendRedirect("/customer-address/create");
	}
	
}
