package com.pawnsoft.shared;

import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.Grid;
import com.google.gwt.user.client.ui.HorizontalPanel;

public class CustomerInfo extends Composite {
	public CustomerInfo() {
		HorizontalPanel customerInfo = new HorizontalPanel();
		FlexTable customerDetails = new FlexTable();
		Grid customerTransactions = new Grid(10,6);
		
		customerTransactions.setText(0, 0, "Loan No");
		customerTransactions.setText(0, 1, "Status");
		customerTransactions.setText(0, 2, "Date Due");
		customerTransactions.setText(0, 3, "Days Left");
		customerTransactions.setText(0, 4, "Amount");
		customerTransactions.setText(0, 5, "Description");
		customerTransactions.setBorderWidth(0);
		customerTransactions.setWidth("100");
		
		customerInfo.add(customerTransactions);
		
		initWidget(customerInfo);
	}
}
