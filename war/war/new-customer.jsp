<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<!DOCTYPE HTML>
<html>
  <head>
	<meta http-equiv="Content-Style-Type" content="text/css">
    <title>New Customer - Pawnsoftware</title>
	<link href="stylesheets/main.css" rel="stylesheet" type="text/css" />
	<link href="stylesheets/form.css" rel="stylesheet" type="text/css" />
	<script tpye="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/clear.js"></script>
  </head>
  <body>
	<%@ include file="navigation.jsp" %>
	<%@ include file= "greeting.jsp" %>
	<div id="page">
		<div id="content">
			<h2>New Customer </h2>
			<form method="post" id="form" action="/new-customer">
				<div class="button-groups">
					<input type="submit" class="submit" name="save" value="Save" />
					<input type="button" class="submit" onClick="clearForm()" name="clear" value="Clear" />
				</div>
				<table>
					<caption>Customer Name</caption>
					<tr><th>First Name</th><td><input type="text" name="firstname" /></td></tr>
					<tr><th>Last Name</th><td><input type="text" name="lastname" /></td></tr>
				</table>
				<table>
					<caption>Address</caption>
					<tr><th>Address</th><td><input type="text" name="address" /></td></tr>
					<tr><th>City, State, and Zip</th><td><input type="text" name="cityStateZip" /></td></tr>
				</table>
				<table>
					<caption>License</caption>
					<tr><th>License No</th><td><input type="text" name="license" /></td></tr>
					<tr><th>Issued/Expiration<br/>(eg. CA08, NV12...)</th><td><input type="text" name="issued" /></td></tr>
					<tr><th>Birthdate</th><td><input type="text" name="birthdate" /></td></tr>
				</table>
				<table>
					<caption>Bio</caption>
					<tr><th>Sex</th><td>
						<select name="sex">
							<option value="male" selected="selected">Male</option>
							<option value="female">Female</option>
						</select>
					</td></tr>
					<tr><th>Hair</th><td>
						<select name="hair">
							<option value="black" selected="selected">Black</option>
							<option value="red">Red</option>
							<option value="brown">Brown</option>
							<option value="blonde">Blonde</option>
							<option value="green">Green</option>
							<option value="blue">Blue</option>
							<option value="grey">Grey</option>
							<option value="auburn">Auburn</option>
						</select>
					</td></tr>
					<tr><th>Eyes</th><td>
						<select name="eyes">
							<option value="black" selected="selected">Black</option>
							<option value="red">Red</option>
							<option value="brown">Brown</option>
							<option value="blonde">Blonde</option>
							<option value="green">Green</option>
							<option value="blue">Blue</option>
							<option value="grey">Grey</option>
							<option value="auburn">Auburn</option>
						</select>
					</td></tr>
					<tr><th>Height</th><td><input type="text" name="height" /></td></tr>
					<tr><th>Weight</th><td><input type="text" name="weight" /></td></tr>
					<tr><th>Race</th><td>
						<select name="race">
							<option value="caucasian" selected="selected">Caucasian</option>
							<option value="hispanic">Hispanic</option>
							<option value="african-american">African American</option>
							<option value="american-indian">American Indian</option>
							<option value="asian">Asian</option>
							<option value="pacific-islander">Pacific Islander</option>
						</select>					
					</td></tr>
				</table>
			</form>
		</div><!-- #content -->
	</div><!-- #page -->
  </body>
</html>
