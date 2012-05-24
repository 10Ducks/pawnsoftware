<%
	String license = request.getParameter("license");
	    if (license == null) {
	        license = "Cindy";
	    }
    DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    Key customerKey = KeyFactory.createKey("Customers", license);
    // Run an ancestor query to ensure we see the most up-to-date
    // view of the Greetings belonging to the selected Guestbook.
    Query query = new Query("Customers", customerKey).addSort("lastname", Query.SortDirection.ASCENDING);
    List<Entity> customers = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(5));
%>
		<div class="left-sidebar">
			<select name="customers" id="customers" multiple="multiple">
<%	    if (customers.isEmpty()) { %>
			<option value="1">There are no customer records</option>
<%		} else {
			for (Entity customer : customers) {
%>
				<option value='<%= customer.getProperty("license") %>'><%= customer.getProperty("lastname") %>, <%= customer.getProperty("firstname") %></option>
<%
			}
		} 
%>
			</select>
		</div><!-- .left-sidebar -->