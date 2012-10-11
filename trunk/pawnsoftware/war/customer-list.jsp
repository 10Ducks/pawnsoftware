<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Customer List</title>
		<link rel="stylesheet" type="text/css" href="../css/main.css" />
	</head>
	<body>

		<h1>Pawnsoftware</h1>
		<h2>Customers</h2>
		<a href="../">Go Back</a><br/>
		<a href="../../customer/edit">Customer Create</a>
		<table>
			<tr><th>License</th><th>First Name</th><th>Last Name</th><th>Birthdate</th><th>Loans</th><th>Buys</th><th>Action</th></tr>
			<tr><td></td><td></td><td></td><td></td><td></td><td></td><td><a href="../customer/delete">Edit</a> <a href="../customer/delete">Delete</a></td></tr>
		</table>
	</body>
</html>