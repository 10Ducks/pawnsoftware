<html>
	<head>
		<title>Pawnsoftware - Login</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
	</head>
	<body>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/customer">Pawnsoftware</a>
					<ul class="pull-right nav span6">
						<li><form class="navbar-form form-inline" method="post" action="customer">
							<input type="text" class="span2 input-medium" name="username" placeholder="username" value="" />
							<input type="password" class="span2 input-medium" name="password" placeholder="password" value="" />
							<label class="checkbox">
								<input type="checkbox">Remember me
							</label>
	  						<input class="btn" type="submit" name="submit" value="Login" />
						</form>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>