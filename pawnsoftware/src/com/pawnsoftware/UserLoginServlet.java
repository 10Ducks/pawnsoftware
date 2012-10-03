package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawnsoftware.User;

@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		// For Login
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		out.println(username);
		out.println(password);
		String message="";
		if (username.equals("") || password.equals("")) {
			message = "Don\'t leave any field blank.";
		} else {
			message = User.authenticate(username, password);
		}
		out.print(message);
		//res.sendRedirect("/index.jsp");
	}	
	
}
