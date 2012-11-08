<!DOCTYPE HTML>
<html>
  <head>
    <title>Customers</title>
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
					<li class="active"><a href="/customer">Customer</a></li>
					<li><a href="/loan">Loans</a></li>
					<li><a href="/inventory">Inventory</a></li>
					<li><a href="/invoice">Invoices</a></li>
					<li><a href="/vendor">Vendors</a></li>
				</ul>
			</div>
		</div>
		<h3>Customer Info</h3>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/loan-info"'>Create New Loan</button>
			<button class="btn btn-default" onclick='window.location="/customer"'>Go Back</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary" onclick='window.location="/customer-info"'>Save Customer</button>
			<button class="btn btn-default" onclick='reset()'>Reset</button>
		</div>
		<div class="container-fluid">
			<div class="span4">
				<legend>Name</legend>
				<label for="firstname">First Name</label><input type="text" placeholder="First Name" name="firstname" value="">
				<label for="lastname">Last Name</label><input type="text" placeholder="Last Name" name="lastname" value="">
				<legend>Address</legend>
				<label for="address">Address</label><input type="text" placeholder="Address" name="address" value="">
				<label for="cityStateZip">City</label><input type="text" placeholder="City, State and Zip" name="cityStateZip" value="">
			</div>
			<div class="span4">
				<label>Remarks</label><textarea name="remarks" rows="5" cols="20" placeholder="Remarks"></textarea>
				<legend>License</legend>
				<label>License</label><input type="text" placeholder="License" name="license" value="">
				<label>State Issued</label><input type="text" placeholder="State" name="stateIssued" value="">
				<label>Expiration Date</label><input type="text" placeholder="Expiration Year" name="yearExpire" value="">
				<label>Birthdate</label><input type="date" placeholder="Birthdate" name="birthdate" value="">
			</div>
			<div class="span3">
				<legend>Bio</legend>
				<label>Gender</label><select name="sex">
					<option value="M">Male</option>
					<option value="F">Female</option>
				</select>
				<label>Hair</label><select name="hair">
					<option value="B">Black</option>
					<option value="R">Red</option>
					<option value="O" selected="selected">Brown</option>
					<option value="L">Blonde</option>
					<option value="G">Green</option>
					<option value="U">Blue</option>
					<option value="G">Grey</option>
					<option value="A">Auburn</option>
				</select>
				<label>Eyes</label><select name="eyes">
					<option value="B">Black</option>
					<option value="R">Red</option>
					<option value="O" selected="selected">Brown</option>
					<option value="L">Blonde</option>
					<option value="G">Green</option>
					<option value="U">Blue</option>
					<option value="G">Grey</option>
					<option value="A">Auburn</option>
				</select>
				<label>Height</label><input type="text" placeholder="Height" name="height" value="">
				<label>Weight</label><input type="text" placeholder="Weight" name="weight" value="">
				<label>Race</label><select name="race">
					<option value="U">Unknown</option>
					<option value="W">White</option>
					<option value="H">Hispanic</option>
					<option value="A">AmericanIndian</option>
					<option value="C">Chinese</option>
					<option value="J">Japanese</option>
					<option value="F">Filipino</option>
					<option value="P">Pacific</option>
					<option value="A">Asian</option>
				</select>
			</div>
		</div>
	</div>
  </body>
</html>

