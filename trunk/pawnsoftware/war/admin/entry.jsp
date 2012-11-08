<!DOCTYPE HTML>
<html>
	<head>
		<title>Admin Entry Screen</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/left-column.css" />
		<link rel="stylesheet" type="text/css" href="css/list.css" />
		<link rel="stylesheet" type="text/css" href="css/horizontal-nav.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
	</head>
	<body>
		<div class="wrapper">
			<div id="page">
				<h1>Pawnsoftware</h1>
				<ul id="horizontal-nav">
					<li><a href="#dashboard">Dashboard</a></li>
					<li><a href="entry.jsp">Entry Screen</a></li>
					<li><a href="#settings">Settings</a></li>
					<li><a href="#reports">Reports</a></li>
					<li><a href="#inventory">Inventory</a></li>
					<li><a href="#logout">Logout</a></li>
				</ul>
				<div id="drop-down-menu">
					<ul>
						<li></li>
					</ul>
				</div>
				<div class="left">
					<select class="customers" name="customers" multiple="multiple">
						<option value="accounting">Accounting</option>
						<option value="customers">Customers</option>
						<option value="loans">Loans</option>
						<option value="buys">Buys</option>
					</select>
				</div>
				<div class="content">
				</div>
			</div>
		</div>
	</body>
</html>
