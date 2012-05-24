<%@page import="java.sql.*"%>
<html>
<form name="form" method="post" >
<b>Select a country:</b>&nbsp;</td>
<select name="sel"><option value=""><---Select---></option>
<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectionURL = "jdbc:mysql://localhost:3306/test";
	Connection connection= DriverManager.getConnection(connectionURL, "root", "root");
	PreparedStatement psmnt = connection.prepareStatement("select * from countries ");
	ResultSet results = psmnt.executeQuery();

while(results.next()){
	String name = results.getString(2);
	String id = results.getString(1);
	%><option value="<%= name %>">
	<% out.println(name); %>
	</option>
<%} 

results.close(); 
psmnt.close(); 
%>
</select><br>
<input type="submit" value="Submit"/><br>

</form>
<%String option=request.getParameter("sel");
if(option==null){
}
else{
out.println("You have selected: <b>"+option+"</b>"+"<br>");
}
%>
</html>