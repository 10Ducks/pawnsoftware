package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pawnsoftware.User;

@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		// For Login
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String userSessionId = getUserSessionId(req, username, password);
		//out.println(username + " " + password);
		out.println(userSessionId);
		//res.sendRedirect("/index.jsp");
	}
	
    public static String getUserSessionId (HttpServletRequest req, String username, String password) {
    	Boolean success = validate(username, password);
    	if (success) {
    		HttpSession userSession = req.getSession();
    		String userSessionId = userSession.getId();
    		return userSessionId;
    	} else {
    		return null;
    	}
    }
	
    // Validate fields if blank
	public static Boolean validate(String username, String password) {
		if (username.equals("") || password.equals("")) {
			return false; // loginStatus: 0
		} else {
			return User.authenticate(username, password);
		}
	}
	
	
	
	
}
