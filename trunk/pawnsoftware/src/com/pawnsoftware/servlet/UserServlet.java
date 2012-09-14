package com.pawnsoftware.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawnsoftware.Users;

@SuppressWarnings("serial")
public class UserServlet extends PageServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Users.setUser(username, password);
		response.sendRedirect("/users.jsp");
	}
}
