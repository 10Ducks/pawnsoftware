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
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
			  	<a class="brand" href="customer">Pawnsoftware</a>
				<ul class="nav">
					<li><a href="/customer">Customer</a></li>
					<li class="active"><a href="/loan">Loans</a></li>
					<li><a href="/dashboard">Dashboard</a></li>
				</ul>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<br/>
  	<div class="container">
		<div class="btn-group">
			<button class="btn btn-default" onclick='window.location="/customer-loans"'>Customer Transactions</button>
		</div>
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
		<h3>Loans</h3>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/loan"'>Save Loans</button>
			<button class="btn btn-default" onclick='reset()'>Reset</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-default" onclick='window.location="/inventory-info"'>Inventory Info</button>
		</div>
		<div class="row"><!-- Transaction -->	
			<div class="span12">
				<div class="row" style="border-top:1px solid #efefef; border-bottom: 1px solid #efefef;background-color:#F9F9F9;margin:10px 0 20px 0;padding: 15px 0">
					<div class="span12">
						<div class="row">
							<div class="span2">
								<label for="pawnbuy">Pawn or Buy</label>
								<select class="span2" name="pawnbuy">
									<option value="1">Pawn</option>
									<option value="2">Buy</option>
								</select>
							</div>
							<div class="span2">
								<label for="warehouseLocation">Warehouse Location</label>
								<input class="span2" type="text" name="warehouseLocation" value=""/>
							</div>
							<div class="span2">
								<label for="extended">Is Extended</label>
								<input class="span2" disabled="disabled" type="text" name="extended" value="No"/>
							</div>
							<div class="span2">
								<label for="premises">In Premises</label>
								<input class="span2" disabled="disabled" type="text" name="premises" value="Yes"/>
							</div>
							<div class="span2">
								<label for="status">Status</label>
								<input class="span2" disabled="disabled" type="text" name="status" value="Inventory"/>
							</div>
						</div>
						<!-- Info, Date, Loan -->
						<div class="row">
							<div class="span2">
								<label for="transactionDate">Transaction Date</label>
								<input class="span2" disabled="disabled" type="text" name="transactionDate" value=""/>
							</div>
							<div class="span2">
								<label for="expirationDate">Expiration Date</label>
								<input class="span2" type="text" disabled="disabled" name="expirationDate" value=""/>
							</div>
							<div class="span2">
								<label for="forfeitDate">Forfeit Date</label>
								<input class="span2" type="text" disabled="disabled" name="forfeitDate" value=""/>
							</div>
							<div class="span2">
								<label for="lastActivityDate">Last Activity Date</label>
								<input class="span2" type="text" disabled="disabled" name="lastActivityDate" value=""/>
							</div>
							<div class="span2">
								<label for="noticeSent">Notice Sent</label>
								<input class="span2" type="text" disabled="disabled" name="lastActivityDate" value=""/>
							</div>
						</div>
						<!-- Loan Numbers -->
						<div class="row">
							<div class="span3">
								<label for="currentLoan">Current Loan Number</label>
								<input class="span3" disabled="disabled" type="text" name="currentLoan" value=""/>
							</div>
							<div class="span3">
								<label for="origLoan">Original Loan</label>
								<input class="span3" type="text" disabled="disabled" name="origLoan" value=""/>
							</div>
							<div class="span2">
								<label for="prevLoan">Previous Loan</label>
								<input class="span2" type="text" disabled="disabled" name="prevLoan" value=""/>
							</div>
							<div class="span2">
								<label for="nextLoan">Next Loan</label>
								<input class="span2" type="text" disabled="disabled" name="nextLoan" value=""/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Description and Amount -->
		<div class="row">
			<div class="span9">
				<div class="row">
					<div class="span12">
						<label for="description">Description</label>
						<textarea class="span9" rows="3" name="description"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="span3">
						<label for="brand">Brand</label>
						<input name="brand" id="loan" type="text" placeholder="Brand">
					</div>
					<div class="span3">
						<label for="serial">Serial Number</label>
						<input name="serialNumber" id="loan" type="text" placeholder="Serial Number">
					</div>
					<div class="span3">
						<label for="model">Model Number</label>
						<input name="modelNumber" id="loan" type="text" placeholder="Model Number">
					</div>
				</div>
				<div class="row">
					<div class="span2">
						<label for="gunCaliber">Gun Caliber</label><input class="span2" name="gunCaliber" id="loan" type="text" placeholder="Gun Caliber" />
					</div>
					<div class="span2">
						<label for="gunType">Gun Type</label><input class="span2" name="gunType" id="loan" type="text" placeholder="Gun Type">
					</div>
					<div class="span2">
						<label for="gunAction">Gun Action</label><input class="span2" name="gunAction" id="loan" type="text" placeholder="Gun Action">
					</div>
					<div class="span2">
						<label for="gunImporter">Gun Importer</label><input class="span2" name="gunImporter" id="loan" type="text" placeholder="Gun Importer">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="span2">
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="loan" class="span2" id="loan" type="text" placeholder="Loan Amount">
					</div>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="setup" class="span2" id="setup" type="text" placeholder="Setup Amount">
					</div>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="fire" class="span2" id="fire" type="text" placeholder="Misc Amount">
					</div>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="interest" class="span2" id="interest" type="text" placeholder="Interest Amount">
					</div>
					<hr>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input rows="10" name="interest" class="span2" id="total" type="text" placeholder="Total Amount">
					</div>
				</div>
			</div><!--  Amount -->
		</div>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
  </body>
</html>

