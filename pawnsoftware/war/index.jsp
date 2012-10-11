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
					<li><a href="/customer/create">Customer</a></li>
					<li><a href="/loan-item/create">Loan</a></li>
					<li><a href="/buy-item/create">Buy</a></li>
					<li><a href="/inventory-item/create">Inventory</a></li>
					<li><a href="/sale/create">Sell</a></li>
				</ul>
			</li>
			<li>Report</li>
			<li>Settings</li>
			<li>Inventory</li>
		</ul>
		<h2>Search</h2>
		<form method="post" action="search">
		<table class="form">
			<tr><td>Search</td><td><input onfocus="this.value=''" onblur="this.value='Type transaction number, customer name, or birthdate'" style="width:500px;padding:3px;color:#afafaf;" type="text" name="search" value="Type transaction number, customer name, or birthdate" /><input type="submit" name="" value="Search" style="padding:3px;" /></td></tr>
		</table>
		</form>
  </body>
</html>

