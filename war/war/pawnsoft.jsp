<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.PreparedQuery" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Style-Type" content="text/css">
	    <title>Home - Pawnsoftware</title>
		<link href="stylesheets/main.css" rel="stylesheet" type="text/css" />
		<link href="stylesheets/scroll.css" rel="stylesheet" type="text/css" />
		<link href="stylesheets/content.css" rel="stylesheet" type="text/css" />
	</head>
  <body>
	<!-- #navigation  -->
	<%@ include file="navigation.jsp" %>
	<%@ include file= "greeting.jsp" %>
	<div id="page">
		<%@ include file="left-sidebar.jsp" %>
		<div id="content">
			<%@ include file="customer-info.jsp" %>
			<hr/>
			<%@ include file="transactions.jsp" %>
		</div><!-- #content -->
	</div><!-- #page -->
  </body>
</html>