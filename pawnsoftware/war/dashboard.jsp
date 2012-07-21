<!DOCTYPE HTML>
<html>
	<head>
		<title>Dashboard</title>
	<link type="text/css" href="css/main.css" rel="stylesheet" />
	<link type="text/css" href="css/redmond/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#tabs").tabs();
		});
	</script>
	</head>
	<body>
		<div class="wrapper">
			<div id="tabs">
				<ul>
					<li><a href="#dashboard">Dashboard</a></li>
					<li><a href="#entryScreen">Entry Screen</a></li>
					<li><a href="#reportMenu">Report Menu</a></li>
					<li><a href="#settings">Settings</a></li>
				</ul>
				<div id="dashboard">
					<div class="row">
						<table class="list">
							<caption>Daily Totals</caption>
							<tr><th>&nbsp;</th><th>Number of Transactions</th><th>Amount</th><th>Interest</th></tr>
							<tr><th>New Loans</th><td></td><td></td><td></td></tr>
							<tr><th>Redemptions</th><td></td><td></td><td></td></tr>
							<tr><th>Interest Paid</th><td></td><td></td><td></td></tr>
							<tr><th>Misc. Collected + Discount + Setup Fees</th><td></td><td></td><td></td></tr>
						</table>
					</div>
					<div class="row">
						<table class="list">
							<tr><th></th><th>No. Of Transactions</th><th>Amount</th></tr>
							<tr><th>Expired Loans</th><td></td><td></td></tr>
							<tr><th>Buys</th><td></td><td></td></tr>
							<tr><th>Cost Of Sales</th><td></td><td></td></tr>
							<tr><th>Invoiced Sales</th><td></td><td></td></tr>
							<tr><th>Layaway Payments</th><td></td><td></td></tr>
							<tr><th>Scrap Items</th><td></td><td></td></tr>
						</table>
					</div>
					<div class="row">
						<table class="list">
							<tr><th></th><th>No. Of Items</th><th>Amount</th></tr>
							<tr><th>Loan Department</th><td></td><td></td></tr>
							<tr><th>Pawn Stocks</th><td></td><td></td></tr>
							<tr><th>Inventory</th><td></td><td></td></tr>
							<tr><th>Layaway</th><td></td><td></td></tr>
						</table>
					</div>
				</div>
			</div><!-- #tabs -->
		</div><!-- .wrapper -->
	</body>
</html>