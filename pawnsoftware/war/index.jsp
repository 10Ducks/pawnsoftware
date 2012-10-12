<!DOCTYPE HTML>
<html>
  <head>
    <title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/main.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/search.js"></script>
  </head>
  <body>
  	<h1>Pawnsoftware</h1>
		<ul id="nav">
			<li>Entry Screen
				<ul>
					<li><a href="/customer/list">Customer</a></li>
					<li><a href="/loan/edit">Loan</a></li>
					<li><a href="/buy/edit">Buy</a></li>
					<li><a href="/inventory/edit">Inventory</a></li>
					<li><a href="/sale/edit">Sell</a></li>
				</ul>
			</li>
			<li>Report</li>
			<li>Settings</li>
			<li>Inventory</li>
		</ul>
		<h2>Search</h2>
		<form method="get" action="customer">
		<table class="form">
			<tr>
				<td>Search</td>
				<td>
					<input onfocus="this.value='';this.style.color='black'" onblur="this.style.color='#afafaf';this.value='Type transaction number, customer name, or birthdate';" style="width:500px;padding:3px;color:#afafaf" type="text" name="search" value="Type transaction number, customer name, or birthdate" />
					<input type="submit" onclick="search()" name="pli" value="Search" style="padding:3px;" />
				</td>
			</tr>
		</table>
		
		</form>
  </body>
</html>

