package com.pawnsoftware;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class LoanServlet extends HttpServlet {

	public void doPost (HttpServletRequest req, HttpServletResponse res) {
		String license = req.getParameter("license");
		String dateCreated = req.getParameter("dateCreated");
		String expiration = req.getParameter("expiration");
		String noticeSent = req.getParameter("noticeSent");
		String forfeitDate = req.getParameter("forfeitDate");
		String lastActivity = req.getParameter("lastActivity");
		
		String originalNumber = req.getParameter("originalNumber");
		String previousNumber = req.getParameter("previousNumber");
		String loanNumber = req.getParameter("loanNumber");
		String nextNumber = req.getParameter("nextNumber");
		
		String amount = req.getParameter("amount");
		String description = req.getParameter("description");
		String setup = req.getParameter("setup");
		String fireMisc = req.getParameter("fireMisc");
		String interest = req.getParameter("interest");
		String notLost = req.getParameter("notLost");
		String miscellaneous = req.getParameter("miscellaneous");
		
		String gunCaliber = req.getParameter("gunCaliber");
		String gunType = req.getParameter("gunType");
		String gunAction = req.getParameter("gunAction");
		String gunStatus = req.getParameter("gunStatus");
		String gunImporter = req.getParameter("gunImporter");
		
		String brand = req.getParameter("brand");
		String model = req.getParameter("model");
		String serial = req.getParameter("serial");
		
		String warehouseLocation = req.getParameter("warehouseLocation");
		String inPremises = req.getParameter("inPremises");
		String isExtended = req.getParameter("isExtended");
		String status = req.getParameter("status");
		
		
	}
}
