package com.pawnsoftware;

import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomerCreateServlet extends HttpServlet {
	
	public static void doGet(HttpServletRequest req, HttpServletResponse res) {
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		try {
			User.create(username, password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
	}
	
}
