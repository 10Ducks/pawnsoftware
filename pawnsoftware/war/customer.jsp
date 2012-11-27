<<<<<<< .mine
<%@ page import="com.pawnsoftware.Customer" %>

=======
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% 
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	Query query = new Query("Customer").addSort("lastname", Query.SortDirection.DESCENDING);
	List<Entity> customers = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(20));
%>

>>>>>>> .r57
<!DOCTYPE HTML>
<html>
  <head>
    <title>Customers</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
  </head>
  <body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
			  	<a class="brand" href="customer">Pawnsoftware</a>
				<ul class="nav">
					<li class="active"><a href="/customer">Customer</a></li>
					<li><a href="/loan">Loans</a></li>
					<li><a href="/dashboard">Dashboard</a></li>
				</ul>
			</div>
		</div>
	</div>
	<br/>
	<br/>
 	<div class="container">
		<h4>Customers</h4>
		<form method="get" action="/customer">
			<div class="input-append">
				<input type="text" class="span11" id="text-search" name="q" placeholder="Search for customer name, license, or birthdate" />
				<button class="btn btn-primary" type="button">Search</button>
			</div>
		</form>
		<br/>		
		<%
			if(request.getParameter("message")==null) {
				out.print("");
			} else {
				out.print("<div id='message' class='alert alert-'"+request.getParameter("status")+"'><i class='icon-warning-sign'></i>  "+request.getParameter("message")+"</div>");
			}
		%>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="customer-info"'>New Customer</button>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>License</th>
					<th>Full Name</th>
					<th>Birthdate</th>
					<th>City, State, and Zip</th>
					<th>Active Loans</th>
					<th>Balance</th>
				</tr>
			</thead>
			<tbody>
<<<<<<< .mine
				<%= Customer.getCustomersTable(request.getParameter("q")) %>
				<% out.print(request.getParameter("q")); %>
=======
				<% 
					for(Entity customer:customers) {
						pageContext.setAttribute("license",customer.getKey().getName());
						pageContext.setAttribute("firstname",customer.getProperty("firstname"));
						pageContext.setAttribute("lastname",customer.getProperty("lastname"));
						pageContext.setAttribute("cityStateZip",customer.getProperty("cityStateZip"));
				%>
				<tr>
					<td>${fn:escapeXml(license)}</td>
					<td>${fn:escapeXml(lastname)},${fn:escapeXml(firstname)}</td>
					<td>${fn:escapeXml(birthdate)}</td>
					<td>${fn:escapeXml(cityStateZip)}</td>
					<td></td>
					<td></td>
				</tr>
>>>>>>> .r57
				<%
					}
				%>
			</tbody>
		</table>
		<p><b>To Do:</b> On customer select, go to customer info.</p>
	</div>
  </body>
</html>

