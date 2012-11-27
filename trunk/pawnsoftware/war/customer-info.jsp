<!DOCTYPE HTML>
<html>
  <head>
    <title>Customers</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
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
	<h3>Customer Info</h3>
<<<<<<< .mine
		<form method="post" action="customer-save">
			<div class="btn-group">
				<input type="submit" id="saveCustomer" class="btn btn-primary" value="Save Customer"/>
=======
		<form method="post" action="customer-save">
			<div class="btn-group">
				<input type="submit" name="save" id="saveCustomer" class="btn btn-primary" onclick="save('customer')" value="Save Customer" />
>>>>>>> .r57
			</div>
<<<<<<< .mine
			<div class="btn-group">
				<input type="submit" id="saveCustomer" class="btn btn-primary" value="New Loan or Buy"/>
=======
			<div class="btn-group">
				<button type="button" class="btn btn-primary" onclick='window.location="/loan-info"'>New Loan or Buy</button>
>>>>>>> .r57
			</div>
<<<<<<< .mine
			<div class="btn-group">
				<input type="submit" id="saveCustomer" class="btn btn-primary" value="Customer Transactions"/>
=======
			<div class="btn-group">
				<button type="button" class="btn btn-primary" onclick='window.location="/customer-loans"'>Customer Transactions</button>
>>>>>>> .r57
			</div>
<<<<<<< .mine
			<div class="btn-group">
				<button class="btn btn-default" onclick='reset()'>Clear</button>
			</div>
			<div class="row">
				<div class="span4">
					<legend>Name</legend>
					<label for="firstname">First Name</label><input type="text" placeholder="First Name" name="firstname" value="">
					<label for="lastname">Last Name</label><input type="text" placeholder="Last Name" name="lastname" value="">
					<legend>Address</legend>
					<label for="address">Address</label><input type="text" placeholder="Address" name="address" value="">
					<label for="cityStateZip">City, State, and Zip</label><input type="text" placeholder="City, State and Zip" name="cityStateZip" value="">
				</div>
				<div class="span4">
					<legend>License</legend>
					<label>License</label><input type="text" placeholder="License" name="license" value="">
					<label>State Issued</label><input type="text" placeholder="State" name="stateIssued" value="">
					<label>Expiration Date</label><input type="text" placeholder="Expiration Year" name="expirationYear" value="">
					<label>Birthdate</label><input type="date" placeholder="Birthdate" name="birthdate" value="">
				</div>
				<div class="span4">
					<legend>Remarks</legend><textarea name="remarks" rows="5" class="span4" placeholder="Remarks"></textarea>
				</div>
			</div>
		</form>
=======
			<div class="btn-group">
				<button class="btn btn-default" onclick='reset()'>Clear</button>
			</div>
			<div class="row">
					<div class="span4">
						<legend>Name</legend>
						<label for="firstname">First Name</label><input type="text" placeholder="First Name" name="firstname" value="Franz Noel">
						<label for="lastname">Last Name</label><input type="text" placeholder="Last Name" name="lastname" value="Tanglao">
						<legend>Address</legend>
						<label for="address">Address</label><input type="text" placeholder="Address" name="address" value="7955 Helena Ave">
						<label for="cityStateZip">City, State, and Zip</label><input type="text" placeholder="City, State and Zip" name="cityStateZip" value="Riverside, CA 92504">
					</div>
					<div class="span4">
						<legend>License</legend>
						<label>License</label><input type="text" placeholder="License" name="license" value="E1411444">
						<label>State Issued</label><input type="text" placeholder="State" name="stateIssued" value="CA">
						<label>Expiration Date</label><input type="text" placeholder="Expiration Year" name="expirationYear" value="2006">
						<label>Birthdate</label><input type="date" placeholder="Birthdate" name="birthdate" value="1982-02-08">
					</div>
					<div class="span4">
						<legend>Remarks</legend><textarea name="remarks" rows="5" class="span4" placeholder="Remarks"></textarea>
					</div>
			</div>
		</form>
>>>>>>> .r57
	</div>
  </body>
</html>

