<!DOCTYPE HTML>
<html>
	<head>
		<title>Create User</title>
		<link rel="stylesheet" type="text/css" href="../../css/main.css" />
	</head>
	<body>
		<h1>Pawnsoftware</h1>
		<h2>Create User</h2>
		<form method="post" action="../../user/create">
			<table>
				<tr><td>Username</td><td><input type="text" name="username" /></td></tr>
				<tr><td>Password</td><td><input type="password" name="password" /></td></tr>
				<tr><td>Verify Password</td><td><input type="text" name="verify-password" /></td></tr>
				<tr><td colspan="2"><input type="submit" value="Create User" name="post" /></td></tr>
			</table>
		</form>
	</body>
</html>