<!DOCTYPE HMTL>
<html>
	<head>
		<title>Create Loans</title>
		<link rel="stylesheet" type="text/css" href="../css/main.css" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Create Loans</h2>
		<a href="../">Go Back</a>
		<form method="post" action="loan">
			<table>
				<tr>
					<th>Date Created</th>
					<th>Expiration Date</th>
					<th>Notice Sent</th>
					<th>Forfeit Date</th>
					<th>Last Activity</th>
					<th></th>
				</tr>
				<tr>
					<td><input type="text" name="dateCreated" value=""/></td>
					<td><input type="text" name="expiration" value=""/></td>
					<td><input type="text" name="noticeSent" value=""/></td>
					<td><input type="text" name="ForfeitDate" value=""/></td>
					<td><input type="text" name="lastActivity" value=""/></td>
				</tr>
			</table>
			<table>
				<tr><th>Original Number</th><th>Previous Number</th><th>Loan Number</th><th>Next Number</th></tr>
				<tr>
					<td><input type="text" name="originalNumber" value=""/></td>
					<td><input type="text" name="previousNumber" value=""/></td>
					<td><input type="text" name="loanNumber" value=""/></td>
					<td><input type="text" name="nextNumber" value=""/></td>
				</tr>
			</table>
			<table>
				<tr><th>Description</th><th>Amount</th><td><input type="text" value="" name="amount" /></td></tr>
				<tr>
					<td rowspan="6"><textarea name="description" cols="75" rows="10"></textarea></td>
					<th>Setup</th>
					<td><input type="text" value="" name="setup" /></td>
				</tr>
				<tr><th>Fire/Misc</th><td><input type="text" value="" name="fireMisc" /></td></tr>
				<tr><th>Interest</th><td><input type="text" value="" name="interest" /></td></tr>
				<tr><th>Not Lost</th><td><input type="text" name="notLost" value=""/></td></tr>
				<tr><th>Miscellaneous</th><td><input type="text" name="miscellaneous" value=""/></td></tr>
				<tr><th>Total</th><td><input type="text" value="" name="total" /></td></tr>
			</table>
			<table>
				<tr><th>Caliber</th><th>Type</th><th>Action</th><th>Status</th><th>Gun Importer</th></tr>
				<tr>
					<td><input type="text" name="gunCaliber" value=""/></td>
					<td><input type="text" name="gunType" value=""/></td>
					<td><input type="text" name="gunAction" value=""/></td>
					<td><input type="text" name="gunStatus" value=""/></td>
					<td><input type="text" name="gunImporter" value=""/></td>
				</tr>
			</table>
			<table>
				<tr><th>Brand No.</th><th>Serial No.</th><th>Model No</th></tr>
				<tr>
					<td><input type="text" name="brand" value=""/></td>
					<td><input type="text" name="serialNo" value=""/></td>
					<td><input type="text" name="modelNo" value=""/></td>
				</tr>
			</table>
			<table>
				<tr><th>Warehouse Location</th><th>In Premises</th><th>Extended</th><th>Status</th></tr>
				<tr>
					<td><input type="text" name="warehouseLocation" value=""/></td>
					<td><input type="text" name="inPremises" value=""/></td>
					<td><input type="text" name="isExtended" value=""/></td>
					<td><input type="text" name="status" value=""/></td>
				</tr>
			</table>
			<table>
				<tr><td colspan="2"><input type="submit" name="loan-create" value="Create Customer Loan" /></td></tr>
			</table>
		</form>
	</body>
</html>