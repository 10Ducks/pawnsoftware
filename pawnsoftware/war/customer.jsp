<%@ page import="com.pawnsoftware.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%
	UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
	if (user!=null) {
		pageContext.setAttribute("user", user);
	} else {
		response.sendRedirect(userService.createLoginURL(request.getRequestURI()));
	}
%>
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
		<span class="label label-info">Welcome, ${user.nickname}</span> <a href="<%= userService.createLoginURL(request.getRequestURI()) %>">logout</a><br/><br/>
		<form method="get" action="/customer">
			<div class="input-append">
				<input type="text" class="span11" id="text-search" name="q" placeholder="Search for customer name, license, or birthdate" />
				<button class="btn btn-primary" type="button">Search</button>
			</div>
		</form>
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
				<% Customer.getCustomersTable(request.getParameter("q")); %>
			</tbody>
		</table>
		<p><b>To Do:</b> On customer select, go to customer info.</p>
	</div>
  </body>
</html>