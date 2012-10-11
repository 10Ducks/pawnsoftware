<!DOCTYPE HTML>
<html>
  <head>
    <title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/main.css" />
    <script type="text/javascript" src="script/jquery.js"></script>
  </head>
  <body>
  	<h1>Pawnsoftware</h1>
		<ul id="nav">
			<li>Entry Screen
				<ul>
					<li><a href="/search">Search</a></li>
					<li><a href="/loan/create">Loan</a></li>
					<li><a href="/buy/create">Buy</a></li>
					<li><a href="/sell/create">Sell</a></li>
					<li><a href="/inventory/create">Inventory</a></li>
					<li><a href="/customer/create">Customer</a></li>
				</ul>
			</li>
			<li>Report</li>
			<li>Settings</li>
			<li>Inventory</li>
		</ul>
		<h3>Search</h3>
		<form method="post" action="search">
		<table class="form">
			<tr><td>Search</td><td><input onfocus="this.value=''" onblur="this.value='Type transaction number, customer name, or birthdate'" style="width:500px;padding:3px;color:#afafaf;" type="text" name="search" value="Type transaction number, customer name, or birthdate" /><input type="submit" name="" value="Search" style="padding:3px;" /></td></tr>
		</table>
		</form>
  </body>
</html>

