<!DOCTYPE HTML>
<html>
  <head>
    <title>Customers</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
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
		<div class="input-append">
			<input type="text" class="span11" id="text-search" name="search" placeholder="Search for customer name, license, or birthdate" />
			<button class="btn btn-primary" type="button">Search</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="customer-info"'>New Customer</button>
		</div>
		<table class="table">
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
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<p><b>To Do:</b> On customer select, go to customer info.</p>
	</div>
  </body>
</html>

