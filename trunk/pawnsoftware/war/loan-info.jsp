<!DOCTYPE HTML>
<html>
  <head>
    <title>Loan Information</title>
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
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/customer-info"'>Save Loans</button>
			<button class="btn btn-default" onclick='reset()'>Reset</button>
			<button class="btn btn-default" onclick='window.location="/loan"'>Cancel</button>
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
		<div class="container-fluid">
			<div class="row-fluid span10">
				<div class="fluid">
					<label>Pawn or Buy</label>
					<select name="pawnbuy">
						<option value="1">Pawn</option>
						<option value="1">Buy</option>
					</select>
				</div>
				<label>Transaction Date</label><input type="text" name="transactionDate" value="Oct 07, 2012">
				<label>Expiration Date</label><input type="text" disabled="disabled" name="expirationDate">
				<label>Forfeit Date</label><input type="text" disabled="disabled" name="forfeitDate">
				<label>Last Activity</label><input type="text" disabled="disabled" name="lastActivityDate">
				<div class="row span12">
					<div class="row-fluid span12">
						<div class="input-prepend input-append">
							<span class="add-on">OrigLoan</span>
							<span class="add-on">PrevLoan</span>
							<input class="span3" name="setup" id="setup" type="text" placeholder="Current Loan Number">
							<span class="add-on">NextLoan</span>
						</div>
					</div>
					<div class="row-fluid">
						<label>Description</label>
						<textarea class="span10"></textarea>
					</div>
					<div class="row-fluid span3">
						<legend>Electronics</legend>
						<input class="span12" name="brand" id="loan" type="text" placeholder="Brand">
						<input class="span12" name="serialNumber" id="loan" type="text" placeholder="Serial Number">
						<input class="span12" name="modelNumber" id="loan" type="text" placeholder="Model Number">
					</div>
					<div class="row-fluid span3">
						<legend>Guns</legend>
						<input class="span12" name="gunCaliber" id="loan" type="text" placeholder="Gun Caliber">
						<input class="span12" name="gunType" id="loan" type="text" placeholder="Gun Type">
						<input class="span12" name="gunAction" id="loan" type="text" placeholder="Gun Action">
						<input class="span12" name="gunImporter" id="loan" type="text" placeholder="Gun Importer">
					</div>
					<div class="row-fluid span3">
						<legend>Other</legend>
						<input class="span12" name="gunCaliber" id="loan" type="text" placeholder="Is Extended">
						<input class="span12" name="gunType" id="loan" type="text" placeholder="Warehouse Location">
						<input class="span12" name="gunAction" id="loan" type="text" placeholder="In Premises">
						<input class="span12" name="gunImporter" id="loan" type="text" placeholder="Status">
					</div>
				</div>
			</div>
				
			<div class="span2">
				<div class="input-prepend">
					<span class="add-on">$</span>
					<input class="span10" name="loan" id="loan" type="text" placeholder="Loan Amount">
				</div>
				<div class="input-prepend">
					<span class="add-on">$</span>
					<input class="span10" name="setup" id="setup" type="text" placeholder="Setup Amount">
				</div>
				<div class="input-prepend">
					<span class="add-on">$</span>
					<input class="span10" name="fire" id="fire" type="text" placeholder="Misc Amount">
				</div>
				<div class="input-prepend">
					<span class="add-on">$</span>
					<input class="span10" name="interest" id="interest" type="text" placeholder="Interest Amount">
				</div>
				<hr>
				<div class="input-prepend">
					<span class="add-on">$</span>
					<input class="span10" rows="10" name="interest" id="total" type="text" placeholder="Total Amount">
				</div>
			</div>
			</div>
		</div>
	</div>
  </body>
</html>

