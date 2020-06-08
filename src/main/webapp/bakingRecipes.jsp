<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Baking and Cakes Recipes</title>
<link rel="stylesheet" type="text/css" href="css/bakingRecipes.css">
</head>
<body>
	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a><a
			href="homeCategory.jsp">Category</a>
		<div class="header-right">
			<a href="login.jsp">Sign in</a> <a href="register.jsp">Register</a>
		</div>
	</div>


	<h2>Baking and Cakes Recipes</h2>
	<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String data = "SELECT * FROM recipe";
      ResultSet rs = st.executeQuery(data);
      while(rs.next()){
    	  if(rs.getString(8).equals("Baking")){
      %>
	<div class="gallery">
		<a href='showRecipe.jsp?loadRecipe=<%=rs.getString("recipeId") %>'>
			<img src="images/<%= rs.getString("image")%>">
		</a>
		<div class="desc"><%= rs.getString("title")%></div>
	</div>
	<%
      }
      %>
	<%
      }
      %>





	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>
</body>
</html>