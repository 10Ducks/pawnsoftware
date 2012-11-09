<!DOCTYPE HTML>
<html>
  <head>
    <title>Dashboard</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
  </head>
  <body>
  	<div class="container">
  	<h2>Pawnsoftware</h2>
		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav">
					<li><a href="/customer">Customer</a></li>
					<li><a href="/loan">Loans</a></li>
					<li class="active"><a href="/dashboard">Dashboard</a></li>
				</ul>
			</div>
		</div>
		<h3>Dashboard</h3>
		<h5>Daily Totals</h5>
		<table class="table table-bordered"><!--  New Loans -->
			<thead>
				<tr>
					<th></th><th>No. Of Transactions</th><th>Amount</th><th>Interest</th>
				</tr>
			</thead>
			<tbody>
				<tr><td>New Loans</td><td></td><td></td><td></td></tr>
				<tr><td>Redemptions</td><td></td><td></td><td></td></tr>
				<tr><td>Interest Paid</td><td></td><td></td><td></td></tr>
				<tr><td>Misc.Collected + Discount + Setup Fees</td><td></td><td></td><td></td></tr>
				<tr><td><b>Total</b></td><td></td><td></td><td></td></tr>
				<tr><td>Expired Loans</td><td></td><td></td><td></td></tr>
				<tr><td>Buys</td><td></td><td></td><td></td></tr>
				<tr><td>Cost Of Sales</td><td></td><td></td><td></td></tr>
				<tr><td>Invoiced Sales</td><td></td><td></td><td></td></tr>
				<tr><td>Layaway Payments</td><td></td><td></td><td></td></tr>
				<tr><td>Scrap Items</td><td></td><td></td><td></td></tr>
				<tr><td><b>Total</b></td><td></td><td></td><td></td></tr>
			</tbody>
		</table>
		<h5>Accounting Departments</h5>
		<table class="table table-bordered">
			<thead>
				<tr><th></th><th>No. Of Items</th><th>Amount</th></tr>
			</thead>
			<tbody>
				<tr><td>Loan Department</td><td></td><td></td></tr>
				<tr><td>Pawnstock</td><td></td><td></td></tr>
				<tr><td>Inventory</td><td></td><td></td></tr>
				<tr><td>Layaway</td><td></td><td></td></tr>
			</tbody>
		</table>
		<br/>
		<br/>
		<br/>
	</div>
  </body>
</html>

