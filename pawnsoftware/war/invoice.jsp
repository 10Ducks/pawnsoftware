<!DOCTYPE HTML>
<html>
	<head>
		<title>Users - Pawnsoftware</title>
	</head>
	<body>
		<h3>Create Invoice</h3>
		<form method="post" action="invoice">
			<table>
				<tr><td>Company</td>
					<td>
						<select name="company">
							<option value="cindyspawn">cindyspawn</option>
							<option value="rickscompany">rickscompany</option>
						</select>
					</td>
				</tr>
				<tr><td>Invoice No</td><td><input type="number" name="invoiceNo" value="123512" /></td></tr>
				<tr><td>Item</td><td><input type="text" name="item" value="Cellphone" /></td></tr>
				<tr><td>Description</td><td><textarea name="description">This is an electronic item.</textarea></td></tr>
				<tr><td>Amount</td><td><input type="text" name="amount" value="$5.00" /></td></tr>
				<tr>
					<td>Created By</td>
					<td>
						<select name="user">
							<option value="fritzdenim">fritzdenim</option>
						</select>
					</td>
				</tr>				
				<tr><td><input type="submit" name="save Invoice" value="Save" /></td></tr>
			</table>
		</form>
	</body>
</html>
