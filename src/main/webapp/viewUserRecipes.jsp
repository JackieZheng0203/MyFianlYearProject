<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Recipes</title>
<link rel="stylesheet" type="text/css" href="css/viewRecipes.css">
</head>
<body>
	
	<div class="header">
		<a href="adminHomePage.jsp" class="logo">WorldRecipes</a>
		<div class="header-right">
			<a href="adminHomePage.jsp">Home</a> <a href="adminLogin.jsp">Log
				Out</a>
		</div>
	</div>
	<h1>User Recipes list</h1>
	<table>
		<thead>
			<tr>
				<th>RecipeID</th>
				<th>UserId</th>
				<th>Title</th>
				<th>Description</th>
				<th>Ingredients</th>
				<th>Instruction</th>
				<th>PreTime</th>
				<th>CookTime</th>
				<th>recipeCategory</th>
				<th>Cuisine</th>
				<th>Image</th>
				<th>Control</th>
			</tr>
		</thead>

		<tbody>
			<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String recipeData = "SELECT * FROM recipe";
      ResultSet rs = st.executeQuery(recipeData);
      while(rs.next()){
      %>
			<tr>
				<td><%= rs.getString("recipeId")%></td>
				<td><%= rs.getString("userId")%></td>
				<td><%= rs.getString("title")%></td>
				<td><%= rs.getString("description")%></td>
				<td><%= rs.getString("ingredients")%></td>
				<td><%= rs.getString("instruction")%></td>
				<td><%= rs.getString("preTime")%></td>
				<td><%= rs.getString("cookTime")%></td>
				<td><%= rs.getString("recipeCategory")%></td>
				<td><%= rs.getString("cuisine")%></td>
				<td><img src="images/<%= rs.getString("image")%>"></td>
				<td><a
					href='deleteUserRecipe.jsp?deleteUserRecipe=<%=rs.getString("recipeId") %>'>Delete</a></td>
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