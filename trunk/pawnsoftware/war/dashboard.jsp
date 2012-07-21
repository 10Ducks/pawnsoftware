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
			$("#screens").tabs();
			$("#transactions").tabs();
		});
	</script>
	</head>
	<body>
		<div class="wrapper">
			<div id="screens">
				<ul>
					<li><a href="#dashboard">Dashboard</a></li>
					<li><a href="#entry-screen">Entry Screen</a></li>
					<li><a href="#report-menu">Report Menu</a></li>
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
				</div><!-- #dashboard -->
				
				<div id="entry-screen">
					<h3>Customer Information</h3>
					
					<table class="list">
						<tr><th>First Name</th><th>Last Name</th></tr>
						<tr><td></td><td></td></tr>
					</table>
					<table class="list">
						<tr><th>Remarks</th></tr>
						<tr><td></td></tr>
					</table>
					<table class="list">
						<tr><th>Address</th><th>City</th><th>State</th><th>Zip Code</th></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
					</table>
					<table class="list">
						<tr><th>License</th><th>State Issued</th><th>Expiration Date</th><th>Birthdate</th></tr>
						<tr><td></td><td></td><td></td><td></td></tr>
					</table>
					<table class="list">
						<tr><th>Sex</th><th>Hair</th><th>Eyes</th><th>Height</th><th>Weight</th><th>Race</th></tr>
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
					</table>
					
					<div id="transactions">
						<ul>
							<li><a href="#loans">Loans</a></li>
							<li><a href="#buys">Buys</a></li>
							<li><a href="#sales">Sales</a></li>
							<li><a href="#inventory">Inventory</a></li>
							<li><a href="#all-transactions">All Transactions</a></li>
						</ul>
						
						<div id="loans">
							Loans
						</div><!-- #loans -->
						
						<div id="buys">
							Buys
						</div><!-- #loans -->
						
						<div id="sales">
							Sales
						</div><!-- #sales -->
						
						<div id="inventory">
							Inventory
						</div><!-- #loans -->
						
						<div id="all-transactions">
							All Transactions
						</div><!-- #loans -->
					</div>
				
				</div><!-- #entry-screen -->
				
				<div id="report-menu">
					Report Menu
				</div><!-- #report-menu -->
				
				<div id="settings">
					Settings
				</div><!-- #dashboard -->
				
			</div>
		</div>
	</body>
</html>