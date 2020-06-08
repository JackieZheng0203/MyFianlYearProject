<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration page</title>
<link rel="stylesheet" type="text/css" href="css/adminHomePage.css">
</head>
<body>

	<div class="header">
		<a href="adminHomePage.jsp" class="logo">WorldRecipes</a>
		<div class="header-right">
			<a href="viewUserRecipes.jsp">User Recipes</a> <a
				href="addNewUser.jsp">Add New User</a> <a href="adminLogin.jsp">Log
				Out</a>
		</div>
	</div>
	<h1>User list</h1>
	<table>
		<thead>
			<tr>
				<th>UserID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Username</th>
				<th>Email</th>
				<th>Password</th>
				<th>Control-1</th>
				<th>Control-2</th>
			</tr>
		</thead>

		<tbody>
			<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String userData = "SELECT * FROM user";
      ResultSet rs = st.executeQuery(userData);
      while(rs.next()){
      %>
			<tr>
				<td><%= rs.getString("user_id")%></td>
				<td><%= rs.getString("first_name")%></td>
				<td><%= rs.getString("last_name")%></td>
				<td><%= rs.getString("user_name")%></td>
				<td><%= rs.getString("email")%></td>
				<td><%= rs.getString("password")%></td>
				<td><a
					href='editUser.jsp?updateUser=<%=rs.getString("user_id") %>'>Edit</a></td>
				<td><a href='deleteUser.jsp?deleteUser=<%=rs.getString("user_id") %>'>Delete</a></td>
			</tr>
			<%
      }
      %>
		</tbody>
	</table>
	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>
</body>
</html>