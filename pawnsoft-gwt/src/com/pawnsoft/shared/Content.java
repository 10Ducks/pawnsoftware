package com.pawnsoft.shared;

import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HorizontalPanel;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.pawnsoft.shared.ListPanel;
import com.pawnsoft.shared.CustomerInfo;

public class Content extends Composite{
	public Content() {
		HorizontalPanel content = new HorizontalPanel();
		HorizontalPanel leftPanel = new HorizontalPanel();
		HorizontalPanel mainContent = new HorizontalPanel();
		ListPanel listPanel = new ListPanel();
		CustomerInfo customerInfo = new CustomerInfo();
		
		mainContent.add(customerInfo);
		
		leftPanel.add(listPanel);
		content.add(leftPanel);
		content.add(mainContent);
				
		initWidget(content);
	}
}
