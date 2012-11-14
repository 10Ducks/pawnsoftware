<!DOCTYPE HTML>
<html>
  <head>
    <title>Inventory Information</title>
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
		<h3>Inventory</h3>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/loan"'>Save Inventory</button>
			<button class="btn btn-default">Reset</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-default" onclick='window.location="/loan-info"'>Loan Info</button>
		</div>
		<div class="row"><!-- Transaction -->	
			<div class="span12">
				<div class="row" style="border-top:1px solid #efefef; border-bottom: 1px solid #efefef;background-color:#F9F9F9;margin:10px 0 20px 0;padding: 15px 0">
					<div class="span12">
						<div class="row">
							<div class="span2">
								<label for="stockNo">Stock No</label>
								<input class="span2" disabled="disabled" type="text" name="stockNo" value=""/>
							</div>
							<div class="span2">
								<label for="loanNo">Loan No</label>
								<input class="span2" disabled="disabled" type="text" name="loanNo" value=""/>
							</div>
							<div class="span2">
								<label for="invoice">Invoice No</label>
								<input class="span2" disabled="disabled" type="text" name="invoiceNo" value=""/>
							</div>
							<div class="span2">
								<label for="transactionDate">Transaction Date</label>
								<input class="span2" disabled="disabled" type="text" name="transactionDate" value=""/>
							</div>
							<div class="span2">
								<label for="lastActivityDate">Last Activity Date</label>
								<input class="span2" type="text" disabled="disabled" name="lastActivityDate" value=""/>
							</div>
						</div>
						<!-- Info, Date, Loan -->
						<div class="row">
							<div class="span2">
								<label for="label">Label</label>
								<input class="span2" type="text" name="label" value=""/>
							</div>
							<div class="span2">
								<label for="store">Store</label>
								<input class="span2" type="text" name="store" value=""/>
							</div>
							<div class="span2">
								<label for="type">Type</label>
								<input class="span2" type="text" name="type" value=""/>
							</div>
							<div class="span2">
								<label for="newused">New/Used</label>
								<select class="span2" name="newused">
									<option value="new">New</option>
									<option selected="selected" value="used">Used</option>
								</select>
							</div>
							<div class="span2">
								<label for="status">Status</label>
								<input class="span2" disabled="disabled" type="text" name="status" value=""/>
							</div>
						</div>
						<!-- Loan Numbers -->
						<div class="row">
							<div class="span2">
								<label for="karay">Karat</label>
								<input class="span2" type="text" name="karat" value=""/>
							</div>
							<div class="span3">
								<label for="dwt">Dead Weight Tonnage</label>
								<input class="span3" type="text" name="dwt" value=""/>
							</div>
							<div class="span2">
								<label for="gms">Grams</label>
								<input class="span2" type="text" name="gms" value=""/>
							</div>
							<div class="span2">
								<label for="ozs">Ounces</label>
								<input class="span2" type="text" name="ozs" value=""/>
							</div>
							<div class="span2">
								<label for="cts">Counts</label>
								<input class="span2" type="text" name="cts" value=""/>
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
						<label for="category">Category</label>
						<select class="span4" name="category">
							<option value="cat1">Category1</option>
							<option value="cat2">Category2</option>
							<option value="cat3">Category3</option>
							<option value="cat4">Category4</option>
						</select>
					</div>
					<div class="span12">
						<label for="description">Description</label>
						<textarea rows="3" class="span9" name="description"></textarea>
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
						<input name="cost" class="span2" id="cost" type="text" placeholder="Cost">
					</div>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="sprice" class="span2" id="sprice" type="text" placeholder="Special Price">
					</div>
					<div class="input-prepend">
						<span class="add-on">$</span>
						<input name="min" class="span2" id="min" type="text" placeholder="Minimum Amount">
					</div>
					<hr>
						<input rows="10" class="span2" name="quantity" class="span2" id="quantity" type="text" placeholder="Quantity">
				</div>
			</div><!--  Amount -->
		</div>
	</div>
	<br/>
	<br/>
  </body>
</html>

