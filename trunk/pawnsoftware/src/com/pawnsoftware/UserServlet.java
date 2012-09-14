package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@SuppressWarnings("serial")
public class UserServlet extends BaseServlet {
	private static final Logger logger = Logger.getLogger(CompanyServlet.class.getCanonicalName());
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		super.doGet(req, res);
		String company = req.getParameter("company");
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");
	    Key companyKey = KeyFactory.createKey("Company", company);
		logger.log(Level.INFO, "Obtaining username and password");
	    PrintWriter out = res.getWriter();
	    try {
	        Users.setUser(username, password, companyKey);
        } catch (Exception e) {
	        String msg = Storage.getErrorMessage(e);
	        out.print(msg);
	    }
	    res.sendRedirect("invoice.jsp");
	}
	

}
