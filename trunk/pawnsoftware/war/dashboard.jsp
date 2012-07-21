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
			$("#reports").tabs();
			$("#setting").tabs();
			
			$("print-day-report").button();
			
			// Customer
			$("#customer-search").button();
			$("#customer-create").button();
			$("#customer-edit").button();
			$("#customer-delete").button();
			$("#customer-reset").button();
			
			// Loans
			$("#loan-search").button();
			$("#loan-create").button();
			$("#loan-edit").button();
			$("#loan-delete").button();
			$("#loan-reset").button();

			// Buy
			$("#buy-search").button();
			$("#buy-create").button();
			$("#buy-edit").button();
			$("#buy-delete").button();
			$("#buy-reset").button();
			
			// Sales
			$("#sale-search").button();
			$("#sale-create").button();
			$("#sale-edit").button();
			$("#sale-delete").button();
			$("#sale-reset").button();
			
			// Administration
			$("data-purge").button();
			$("file-sizes").button();
			$("error-logs").button();
			$("help-messages").button();
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
					<button id="day-report">Print Day Report</button>
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
						<button id="customer-search">Search Customer</button>
						<button id="customer-create">Create Customer</button>
						<button id="customer-edit">Edit Customer</button>
						<button id="customer-delete">Delete Customer</button>
						<button id="customer-reset">Reset</button>
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
						</ul>						
						<div id="loans">
							<table class="list">
								<tr><th>Loan No</th><th>Status</th><th>Date Due</th><th>Days Left</th><th>Amount</th><th>Description</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<button id="loan-search">Search Loan</button>
							<button id="loan-create">Create Loan</button>
							<button id="loan-edit">Edit Loan</button>
							<button id="loan-delete">Delete Loan</button>
							<button id="loan-reset">Reset</button>
							<table class="list">
								<tr><th>Transaction Type</th><th>Date</th><th>Loan No</th><th>Next Number</th><th>Previous Number</th><th>Original Number</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Expiration Date</th><th>Notice Sent</th><th>Forfeit Date</th><th>Last Activity</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Amount</th><th>Setup</th><th>Fire/Misc</th><th>Interest</th><th>Not Lost</th><th>Miscellaneous</th><th>Total</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Description</th></tr>
								<tr><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Brand Name</th><th>Serial No</th><th>Model Number</th></tr>
								<tr><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Gun Importer</th><th>Caliber</th><th>Type</th><th>Action</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Warehouse Location</th><th>In Premises</th><th>Status</th><th>Is Extended</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
						</div><!-- #loans -->
						
						<div id="buys">
							<table class="list">
								<tr><th>Loan No</th><th>Status</th><th>Date Due</th><th>Days Left</th><th>Amount</th><th>Description</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<button id="buy-search">Search Buys</button>
							<button id="buy-create">Create Buys</button>
							<button id="buy-edit">Edit Buys</button>
							<button id="buy-delete">Delete Buys</button>
							<button id="buy-reset">Reset</button>
							<table class="list">
								<tr><th>Transaction Type</th><th>Date</th><th>Loan No</th><th>Next Number</th><th>Previous Number</th><th>Original Number</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Expiration Date</th><th>Notice Sent</th><th>Forfeit Date</th><th>Last Activity</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Amount</th><th>Setup</th><th>Fire/Misc</th><th>Interest</th><th>Not Lost</th><th>Miscellaneous</th><th>Total</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Description</th></tr>
								<tr><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Brand Name</th><th>Serial No</th><th>Model Number</th></tr>
								<tr><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Gun Importer</th><th>Caliber</th><th>Type</th><th>Action</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Warehouse Location</th><th>In Premises</th><th>Status</th><th>Is Extended</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
						</div><!-- #loans -->
						
						<div id="sales">
							<table class="list">
								<tr><th>Loan No</th><th>Status</th><th>Date Due</th><th>Days Left</th><th>Amount</th><th>Description</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<button id="sale-search">Search Sales</button>
							<button id="sale-create">Create Sales</button>
							<button id="sale-edit">Edit Sales</button>
							<button id="sale-delete">Delete Sales</button>
							<button id="sale-reset">Reset</button>
							<table class="list">
								<tr><th>Invoice</th><th>Invoice Date</th><th>Payment</th><th>Transactions</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Item</th><th>Description</th><th>Quantity</th><th>Individual Price</th><th>Multiplied Price</th><th>Extended Price</th><th>Tax</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Remarks</th></tr>
								<tr><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Misc Amount</th><th>Credit Amount</th><th>Total Tax</th><th>Sub Total</th><th>Total Amount</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
						</div><!-- #sales -->
						
						<div id="inventory">
							<table class="list">
								<tr><th>Loan No</th><th>Status</th><th>Date Due</th><th>Days Left</th><th>Amount</th><th>Description</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Stock No</th><th>Pawn No</th><th>Ionvoice No</th><th>Date Created</th><th>Last Activity</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Quantity</th><th>Cost</th><th>Sale Price</th><th>Minimum Price</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Label</th><th>Store</th><th>Type(I/A)</th><th>New/Used</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Category</th></tr>
								<tr><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Description</th></tr>
								<tr><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Karat</th><th>DWT</th><th>Gems</th><th>Ounces</th><th>Counts</th></tr>
								<tr><td></td><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Brand</th><th>Model No</th><th>Serial No</th></tr>
								<tr><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Gun Importer</th><th>Caliber</th><th>Type</th><th>Action</th></tr>
								<tr><td></td><td></td><td></td><td></td></tr>
							</table>
							<table class="list">
								<tr><th>Warehouse Location</th><th>In Premises</th><th>Status</th></tr>
								<tr><td></td><td></td><td></td></tr>
							</table>							
						</div><!-- #loans -->
					</div><!-- #transactions -->
				</div><!-- #entry-screen -->
				
				<div id="report-menu">
					<div id="reports">
						<ul>
							<li><a href="#accounting">Accounting</a></li>
							<li><a href="#notices">Notices</a></li>
							<li><a href="#gunbooks">Gun Books</a></li>
							<li><a href="#customers">Customers</a></li>
							<li><a href="#expired-loans">Expired Loans</a></li>
							<li><a href="#layaways">Layaway Stocks</a></li>
							<li><a href="#active-loans">Active Loans</a></li>
							<li><a href="#stocks">Stock Items</a></li>
							<li><a href="#lapd-records">LAPD Records</a></li>
						</ul>
						<div id="accounting">
							Accounting
						</div>
						<div id="notices">
							Notices
						</div>
						<div id="gunbooks">
							Gunbooks
						</div>
						<div id="customers">
							Customers
						</div>
						<div id="expired-loans">
							Expired Loans
						</div>
						<div id="layaways">
							Layaways
						</div>
						<div id="active-loans">
							Active Loans
						</div>
						<div id="stocks">
							Stocks
						</div>
						<div id="lapd-records">
							LAPD Records
						</div>
					</div><!-- #reports -->
				</div><!-- #report-menu -->
				
				<div id="settings">
					<div id="setting">
						<ul>
							<li><a href="#next-numbers">Next Numbers</a></li>
							<li><a href="#users">Users</a></li>
							<li><a href="#store-information">Store information</a></li>
							<li><a href="#administration">Administration</a></li>
						</ul>					
						<div id="next-numbers">
							<h3>Next Numbers</h3>
							<table class="list">
								<tr><td>Loan Number</td><td>Something</td></tr>
								<tr><td>Invoice Number</td><td>Something</td></tr>
								<tr><td>Sale Number</td><td>Something</td></tr>
								<tr><td>Sale Number</td><td>Something</td></tr>
							<table>
						</div><!-- #next-numbers -->			
						<div id="users">
							<h3>Users</h3>
							<table class="list">
								<tr><th>id</th><th>username</th><th>password</th></tr>
								<tr><td></td><td></td><td></td></tr>
							</table>
						</div><!-- #users -->
						<div id="store-information">
							<h3>Store Information</h3>
							<table class="list">
								<tr><th>Name</th><td></td></tr>
								<tr><th>Address</th><td></td></tr>
								<tr><th>FFL No</th><td></td></tr>
								<tr><th></th><td></td></tr>
								<tr><th></th><td></td></tr>
							</table>
						</div><!-- #store-information -->		
						<div id="administration">
							<button id="data-purge">Data Purge</button>
							<button id="file-sizes">File Sizes</button>
							<button id="error-logs">Error Logs</button>
							<button id="help-messages">Help Messages</button>
						</div><!-- #administration -->
					</div>
				</div><!-- #settings -->
			</div>
		</div>
	</body>
</html>