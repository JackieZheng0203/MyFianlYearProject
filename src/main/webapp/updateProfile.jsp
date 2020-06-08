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

   Statement st = con.createStatement();
   String userId = request.getParameter("user_id");
   String fname = request.getParameter("first_name");
   String lname = request.getParameter("last_name");
   String username = request.getParameter("user_name");
   String email = request.getParameter("email");
   String password = request.getParameter("password");

 

   if(userId!=null && fname!=null && lname!=null && username!=null && 
   password!=null && email!=null){
	   String query = "UPDATE user SET first_name=?, last_name=?, user_name=?, email=?, password=? WHERE user_id='"+userId+"'";
	   PreparedStatement ps = con.prepareStatement(query);
	   ps.setString(1, fname);
	   ps.setString(2, lname);
	   ps.setString(3, username);
	   ps.setString(4, email);
	   ps.setString(5, password);

   ps.executeUpdate();
   response.sendRedirect("profile.jsp");
   }
      
       con.close();
   %>
</body>
</html>