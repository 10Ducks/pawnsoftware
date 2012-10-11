<!DOCTYPE HTML>
<html>
	<head>
		<title>Create Customer</title>
		<link rel="stylesheet" type="text/css" href="../../css/main.css" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Customer License</h2>
		<a href="../customer/edit">Go Back</a>
		<form method="post" action="/customer-license">
			<table id="customer-license">
				<tr><td>License</td><td><input type="text" value="" name="license"></td></tr>
				<tr><td>State Issued</td><td><input type="text" value="" name="stateIssued"></td></tr>
				<tr><td>Expiration Date</td><td><input type="text" value="" name="expiration"></td></tr>
				<tr><td>Birthdate</td><td><input type="text" value="" name="birthdate"></td></tr>
			</table>
			<table>
				<tr><td colspan="2"><input type="submit" value="Create Customer License" name="create-customer" /></td></tr>
			</table>
		</form>
	</body>
</html>