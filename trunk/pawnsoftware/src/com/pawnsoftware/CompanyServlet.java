package com.pawnsoftware;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawnsoftware.CompanyServlet;
import com.pawnsoftware.Company;
//import com.pawnsoftware.Storage;

@SuppressWarnings("serial")
public class CompanyServlet extends BaseServlet {
	private static final Logger logger = Logger.getLogger(CompanyServlet.class.getCanonicalName());
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		super.doGet(req, res);
		logger.log(Level.INFO, "Obtaining product listing");
	    String companyName = req.getParameter("companyName");
	    String companyDescription = req.getParameter("companyDescription");
	    PrintWriter out = res.getWriter();
	    try {
	        Company.setCompany(companyName, companyDescription);
        } catch (Exception e) {
	        String msg = Storage.getErrorMessage(e);
	        out.print(msg);
	    }
	}
}
