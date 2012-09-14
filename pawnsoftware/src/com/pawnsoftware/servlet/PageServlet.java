package com.pawnsoftware.servlet;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class PageServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)	throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		resp.getWriter().println("<h1>Hello, world</h1>");
	}
}
