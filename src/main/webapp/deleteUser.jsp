<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
</head>
<body>
	<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
String deleteUser= request.getParameter("deleteUser");
Statement st = con.createStatement();
st.executeUpdate("DELETE FROM user WHERE user_id='"+deleteUser+"'");
response.sendRedirect("adminHomePage.jsp");

%>
</body>
</html>