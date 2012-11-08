<!DOCTYPE HTML>
<html>
  <head>
    <title>Loans</title>
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
					<li class="active"><a href="/loan">Loans</a></li>
					<li><a href="/inventory">Inventory</a></li>
					<li><a href="/invoice">Invoices</a></li>
					<li><a href="/vendor">Vendors</a></li>
				</ul>
			</div>
		</div>
		<form method="get" action="loan">
			<div class="input-append">
				<input type="text" class="span11" id="text-search" name="search" value="Search for loan number" />
				<button class="btn btn-primary" type="button">Search</button>
			</div>
		</form>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="loan-info"'>New Loans</button>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>Loan No</th>
					<th>Status</th>
					<th>Date</th>
					<th>Days Left</th>
					<th>Amount</th>
					<th>Description</th>
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
		<p><b>Todo:</b> On loan select, Go to loan information</p>
	</div>
  </body>
</html>

