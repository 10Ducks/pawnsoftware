<!DOCTYPE HTML>
<html>
	<head>
		<title>Create Customer</title>
		<link rel="stylesheet" type="text/css" href="../../css/main.css" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Create Customer</h2>
		<h3>Customer Information</h3>
		<table id="customer-info">
			<tr><td>First Name</td><td><input type="text" value="" name="firstname"></td></tr>
			<tr><td>Last Name</td><td><input type="text" value="" name="firstname"></td></tr>
			<tr><td>Remarks</td><td><textarea name="remarks"></textarea></td></tr>
			<tr><td>Sex</td><td><input type="text" value="" name="sex"></td></tr>
			<tr><td>Hair</td><td><input type="text" value="" name="hair"></td></tr>
			<tr><td>Eyes</td><td><input type="text" value="" name="eyes"></td></tr>
			<tr><td>Height</td><td><input type="text" value="" name="height"></td></tr>
			<tr><td>Weight</td><td><input type="text" value="" name="weight"> lbs</td></tr>
			<tr><td>Race</td><td><input type="text" value="" name="race"></td></tr>
		</table>
		<table>
			<tr><td><a href="../customer-license/create">Customer License</a></td></tr>
			<tr><td><a href="../customer-address/create">Customer Address</a></td></tr>
		</table>
		<table>
			<tr><td colspan="2"><input type="submit" value="Create Customer" name="create-customer" /></td></tr>
		</table>
	</body>
</html>