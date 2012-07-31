package com.pawnsoft.shared;

import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.HorizontalPanel;
import com.google.gwt.user.client.ui.TabPanel;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.VerticalPanel;

public class ListPanel extends Composite {
	public ListPanel() {
		VerticalPanel searchContainer = new VerticalPanel();
		HorizontalPanel searchBox = new HorizontalPanel();
		TextBox searchTextBox = new TextBox();
		Button searchButton  = new Button("Search");
		TabPanel tList = new TabPanel();
		
		searchTextBox.setWidth("270px");
		
		searchBox.add(searchTextBox);
		searchBox.add(searchButton);
		
		tList.add(new HTML("Customers"),"Customers");
		tList.add(new HTML("Loans"),"Loans");
		tList.add(new HTML("Sales"),"Sales");
		tList.add(new HTML("Invoice"),"Invoices");
		tList.add(new HTML("Stocks"),"Stocks");
		tList.selectTab(0);
		
		searchContainer.add(searchBox);
		searchContainer.add(tList);
		initWidget(searchContainer);
		
	}
}
