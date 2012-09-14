<!DOCTYPE HTML>
<%@ page import = "com.project.*" %>

<html>
	<head>
		<title>Users - Pawnsoftware</title>
	</head>
	<body>
		<form method="post" action="user">
			<table>
				<tr><td>Username</td><td><input type="text" name="username" value="" /></td></tr>
				<tr><td>Password</td><td><input type="password" name="password" value="" /></td></tr>
				<tr><td><input type="submit" name="save" value="Save" /></td></tr>
			</table>
		</form>
	</body>
</html>
