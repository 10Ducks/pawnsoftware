<%@ page import="com.mysql.jdbc.*" %> 
<%@ page import="java.sql.*" %> 
<%
	String login = request.getParameter("login");
	String password = request.getParameter("password");
	String full_name = request.getParameter("full_name");
	String ulevel = request.getParameter("ulevel");
	String team_id = request.getParameter("team_id");
	String fs = String.format("insert into " + "%s " + "(login,password,full_name,ulevel) values " + "(%s,%s,%s,%s)", team_id, login, password, full_name, ulevel);
	
	Connection connection = null;
	PreparedStatement pstatement = null;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/coding", "root", "root");
	int updateQuery = 0;
	if (login != null && password != null && full_name != null && ulevel != null && team_id != null) {
	    if (login != "" && password != "" && full_name != "" && ulevel != "" && team_id != "") {
	        try {
	            pstatement = connection.prepareStatement(fs);
	            pstatement.setString(1, login);
	            pstatement.setString(2, password);
	            pstatement.setString(3, full_name);
	            pstatement.setString(4, ulevel);
	            updateQuery = pstatement.executeUpdate();
	            if (updateQuery != 0) {
	                response.sendRedirect("index.jsp");
	            }
	        } catch (Exception ex) {
	            out.println("Unable to connect to database.");
	        } finally {
	            pstatement.close();
	            connection.close();
	        }
	    }
	}
%>