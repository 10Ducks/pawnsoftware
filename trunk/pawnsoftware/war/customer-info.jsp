<%@ page import="com.pawnsoftware.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%
	UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
	String license = request.getParameter("license");
	
	Iterable<Entity> customerInfo = Customer.getAllCustomerInfo(license);
	
	
	
	if (user!=null) {
		pageContext.setAttribute("user", user);
		pageContext.setAttribute("license", license);
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
	<h3>Customer Info</h3>
		<span class="label label-info">Welcome, ${user.nickname}</span><a href="<%= userService.createLoginURL(request.getRequestURI()) %>">logout</a><br/><br/>
		<form method="post" action="customer-save">
			<div class="btn-group">
				<input type="submit" name="save" id="saveCustomer" class="btn btn-primary" value="Save Customer" />
				<button type="button" class="btn btn-primary">New Loan or Buy</button>
				<button type="button" class="btn btn-primary">Customer Transactions</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-default" onclick='reset()'>Clear</button>
			</div>
			<div class="row">
				<div class="span4">
					<legend>Name</legend>
					<label for="firstname">First Name</label><input type="text" placeholder="First Name" name="firstname" value="">
					<label for="lastname">Last Name</label><input type="text" placeholder="Last Name" name="lastname" value="">
					<legend>Address</legend>
					<label for="address">Address</label><input type="text" placeholder="Address" name="address" value="">
					<label for="cityStateZip">City, State, and Zip</label><input type="text" placeholder="City, State and Zip" name="cityStateZip" value="">
				</div>
				<div class="span4">
					<legend>License</legend>
					<label>License</label><input type="text" placeholder="License" name="license" value="">
					<label>State Issued</label><input type="text" placeholder="State" name="stateIssued" value="">
					<label>Expiration Date</label><input type="text" placeholder="Expiration Year" name="expirationYear" value="">
					<label>Birthdate</label><input type="date" placeholder="Birthdate" name="birthdate" value="">
				</div>
				<div class="span4">
					<legend>Remarks</legend><textarea name="remarks" rows="5" class="span4" placeholder="Remarks"></textarea>
				</div>
			</div>
		</form>
	</div>
  </body>
</html>

