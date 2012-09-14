<!DOCTYPE HTML>
<%@ page import = "com.project.*" %>

<html>
	<head>
		<title>Users - Pawnsoftware</title>
	</head>
	<body>
		<h3>Create User</h3>
		<form method="post" action="user">
			<table>
				<tr><td>Company</td>
					<td>
						<select name="company">
							<option value="cindyspawn">cindyspawn</option>
							<option value="rickscompany">rickscompany</option>
						</select>
					</td>
				</tr>
				<tr><td>Username</td><td><input type="text" name="username" value="" /></td></tr>
				<tr><td>Password</td><td><input type="password" name="password" value="" /></td></tr>
				<tr><td><input type="submit" name="save" value="Save" /></td></tr>
			</table>
		</form>
	</body>
</html>
