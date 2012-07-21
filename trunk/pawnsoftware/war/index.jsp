<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Pawnsoftware</title>
	<link type="text/css" href="css/main.css" rel="stylesheet" />
	<link type="text/css" href="css/redmond/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<script type="text/javascript">
			$(function() {
				$( "#login" ).dialog({
					draggable: false, 
					resizable: false,
					disabled: false,
					position: "top",
					position: [500,50],
					title: "Login",
					stack: false,
					dialogClass: "alert",
				});
				$(".ui-dialog-titlebar-close").hide();
			});
	</script>
  </head>
  <body>
  	<div class="wrapper">
  		<div id="login">
			<table class="form">
				<form method="post" action="dashboard.jsp">
					<tr><td>Username</td><td><input type="text" name="username" value="" /></td></tr>
					<tr><td>Password</td><td><input type="password" name="password" value="" /></td></tr>
					<tr><td colspan="2"><input type="submit" value="Login" name="login"/></td></tr>
 				</form>
			</table>
		</div>
  	</div>
  </body>
</html>
