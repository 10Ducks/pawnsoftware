package com.pawnsoft.shared;

import com.google.gwt.user.client.Command;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.MenuBar;

public class TopMenu extends Composite {
	public TopMenu()
	{
	    Command cmd = new Command() {
	        public void execute() {
	          Window.alert("You selected a menu item!");
	        }
	      };
	      // Make some sub-menus that we will cascade from the top menu.
	      MenuBar mainMenu = new MenuBar(true);
	      mainMenu.addItem("Customers", cmd);
	      mainMenu.addItem("Loans", cmd);
	      mainMenu.addItem("Sales", cmd);
	      mainMenu.addItem("Invoices", cmd);
	      mainMenu.addItem("Stocks", cmd);
	      // Make a new menu bar, adding a few cascading menus to it.
	      MenuBar topMenu = new MenuBar();
	      topMenu.addItem("Entry Screen", mainMenu);
	      topMenu.addItem("Settings", cmd);
	      topMenu.setAutoOpen(true);

	      initWidget(topMenu);
	}
	
}
