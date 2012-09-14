<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
  <head>
    <title>Pawnsoftware</title>
  </head>
  <body>
  	<h1></h1>
		<h3>Create Company</h3>
		<form method="post" action="company">
		<table class="form">
				<tr>
					<td>Select Company</td>
					<td>
						<select name="companies">
							<option value=""></option>
						</select>
					</td>
				</tr>
				<tr><td>Company Name</td><td><input type="text" name="companyName" value="" /></td></tr>
				<tr><td>Description</td><td><textarea name="companyDescription" value=""></textarea></td></tr>
				<tr><td colspan="2"><input type="submit" value="Save" name="saveCompany"/></td></tr>
		</table>
		</form>
  </body>
</html>

