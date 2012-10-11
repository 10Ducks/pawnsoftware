<!DOCTYPE HTML>
<html>
	<head>
		<title>Create Customer</title>
		<link rel="stylesheet" type="text/css" href="../../css/main.css" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Customer Address</h2>
		<a href="../customer/create">Go Back</a>
		<form method="post" action="/customer-address">
			<table id="customer-address">
				<tr><td>License</td><td><input type="text" value="" name="license"></td></tr>
				<tr><td>Address 1</td><td><input type="text" value="" name="address1"></td></tr>
				<tr><td>Address 2</td><td><input type="text" value="" name="address2"></td></tr>
				<tr><td>City</td><td><input type="text" value="" name="city"></td></tr>
				<tr><td>State</td><td><input type="text" value="" name="state"></td></tr>
				<tr><td>Zip</td><td><input type="text" value="" name="zip"></td></tr>
			</table>
			<table>
				<tr><td colspan="2"><input type="submit" value="Create Customer Address" name="create-customer" /></td></tr>
			</table>
		</form>
	</body>
</html>