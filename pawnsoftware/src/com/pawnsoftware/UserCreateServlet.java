package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawnsoftware.User;

@SuppressWarnings("serial")
public class UserCreateServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		// Create user
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		PrintWriter out = res.getWriter();
		out.println(username);
		out.println(password);
		try {
			User.create(username, password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		//res.sendRedirect("/index.jsp");
	}
	

}
