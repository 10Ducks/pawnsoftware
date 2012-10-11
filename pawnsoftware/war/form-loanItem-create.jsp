<!DOCTYPE HMTL>
<html>
	<head>
		<title>Create Loans</title>
		<link rel="stylesheet" type="text/css" href="" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Create Loans</h2>
		<form method="post" action="loan">
			<table>
				<tr><td>Loan No</td><td><input type="text" name="loanNo" value=""/></td></tr>
				<tr><td>Original No</td><td><input type="text" name="originalNo" value=""/></td></tr>
				<tr><td>Next No</td><td><input type="text" name="nextNo" value=""/></td></tr>
				<tr><td>Previous No</td><td><input type="text" name="previousNo" value=""/></td></tr>
				<tr><td>Date Created</td><td><input type="text" name="dateCreated" value=""/></td></tr>
				<tr><td>Expiration Date</td><td><input type="text" name="expiration" value=""/></td></tr>
				<tr><td>Notice Sent</td><td><input type="text" name="noticeSent" value=""/></td></tr>
				<tr><td>Forfeit Date</td><td><input type="text" name="ForfeitDate" value=""/></td></tr>
				<tr><td>Last Activity</td><td><input type="text" name="lastActivity" value=""/></td></tr>
				<tr><td>Description</td><td><input type="text" name="description" value=""/></td></tr>
				<tr><td>Extended</td><td><input type="text" name="isExtended" value=""/></td></tr>
				<tr><td>Brand</td><td><input type="text" name="brand" value=""/></td></tr>
				<tr><td>Serial No.</td><td><input type="text" name="serialNo" value=""/></td></tr>
				<tr><td>Model No</td><td><input type="text" name="modelNo" value=""/></td></tr>
				<tr><td>Warehouse Location</td><td><input type="text" name="warehouseLocation" value=""/></td></tr>
				<tr><td>Caliber</td><td><input type="text" name="caliber" value=""/></td></tr>
				<tr><td>Type</td><td><input type="text" name="type" value=""/></td></tr>
				<tr><td>Action</td><td><input type="text" name="action" value=""/></td></tr>
				<tr><td>Status</td><td><input type="text" name="status" value=""/></td></tr>
				<tr><td>Gun Importer</td><td><input type="text" name="gunImporter" value=""/></td></tr>
				<tr><td>In Premises</td><td><input type="text" name="inPremises" value=""/></td></tr>
				<tr><td>Not Lost</td><td><input type="text" name="notLost" value=""/></td></tr>
				<tr><td>Miscellaneous</td><td><input type="text" name="miscellaneous" value=""/></td></tr>
			</table>
			<table>
				<tr><td colspan="2"><input type="submit" name="loan-create" value="Create Customer Loan" /></td></tr>
			</table>
		</form>
	</body>
</html>