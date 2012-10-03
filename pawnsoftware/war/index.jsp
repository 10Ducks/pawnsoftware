<!DOCTYPE HTML>
<html>
  <head>
    <title>Login</title>
    <script type="text/javascript" src="script/jquery.js"></script>
  </head>
  <body>
  	<h1>Pawnsoftware</h1>
		<h3>Login</h3>
		<form method="post" action="user/login">
		<table class="form">
			<tr><td>Username</td><td><input type="text" name="username" /></td></tr>
			<tr><td>Password</td><td><input type="text" name="password" /></td></tr>
			<tr><td colspan="2"><input type="submit" value="login" name="login" />
				<a href="form/user/create">Create New User</a>
			</td></tr>
		</table>
		</form>
  </body>
</html>

