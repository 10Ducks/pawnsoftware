<!DOCTYPE HTML>
<html>
  <head>
    <title>Customer Loans</title>
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
	<br/>
  	<div class="container">
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
				<tr>
					<td>E1411444</td>
					<td>Tanglao, Franz Noel</td>
					<td>Feb 8, 1982</td>
					<td>Riverside, CA 92504</td>
					<td>20</td>
					<td>$250.00</td>
				</tr>
			</tbody>
		</table>
		<hr>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/loan-checkout"'>Redeem Or Renew</button>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Loan No</th>
					<th>Status</th>
					<th>Loan Date</th>
					<th>Days Left</th>
					<th>Amount</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<tr onclick="window.location='/loan-info'">
					<td><input type="checkbox" name="loans" value="147233" /></td>
					<td>147233</td>
					<td>Active</td>
					<td>Aug 10, 2012</td>
					<td>0</td>
					<td>$20.00</td>
					<td>Ring YG Class 93 1 Blue</td>
				</tr>
				<tr onclick="window.location='/loan-info'" class="warning">
					<td><input type="checkbox" name="loans" value="156380" /></td>
					<td>156380</td>
					<td>Redeemed</td>
					<td>Nov 8, 2005</td>
					<td>0</td>
					<td>$30.00</td>
					<td>Receiver S#Z134538VX M#RX-V293 B:YAMAHA W/REMOTE</td>
				</tr>
				<tr onclick="window.location='/loan-info'" class="error">
					<td><input type="checkbox" name="loans" value="9" /></td>
					<td>9</td>
					<td>Inventory</td>
					<td>Aug 11, 2005</td>
					<td>0</td>
					<td>$20.00</td>
					<td>Ring YG Class 93 1 Blue</td>
				</tr>
				<tr onclick="window.location='/loan-info'" class="success">
					<td><input type="checkbox" name="loans" value="152293" /></td>
					<td>152293</td>
					<td>Renewed</td>
					<td>Jul 11, 2005</td>
					<td>0</td>
					<td>$30.00</td>
					<td>Ring YG Class 93 1 Blue</td>
				</tr>
			</tbody>
		</table>

  </body>
</html>

