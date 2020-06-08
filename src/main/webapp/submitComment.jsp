<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");

String recipeId = request.getParameter("recipeId");
String username = request.getParameter("username");
String content = request.getParameter("content");
String date = request.getParameter("date");
String rating = request.getParameter("rating");

//Mysql insert statement and insert prepare statement
String query = "INSERT INTO review(recipeId,username, content, date,rating)" + "VALUES(?, ?, ?, ?, ?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, recipeId);
ps.setString(2, username);
ps.setString(3, content);
ps.setString(4, date);
ps.setString(5, rating);
ps.execute();
response.sendRedirect("account.jsp");
con.close();
%>

</body>
</html>