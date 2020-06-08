<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jackie's recipe website home page</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
<style>
</style>
</head>
<body>

	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a><a
			href="homeCategory.jsp">Category</a>
		<div class="header-right">
			<a href="login">Sign in</a> <a href="register">Register</a>
		</div>
	</div>
	<h1>Welcome to world recipes</h1>
	<p>So, you've got ingredients and plenty of free time on your
		hands. why not learn to cook your favourite food? It's not as
		difficult as you might think, and once you have the basics down,
		there's all sorts of things you can do to switch things up. If you
		don't have an account with us, please use register button to register
		an account with us. If you are an existing user, please log in to
		continue. we've got all the recipes and tips you need.</p>


	<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String recipeData = "SELECT * FROM recipe";
      ResultSet rs = st.executeQuery(recipeData);
      while(rs.next()){
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





	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>


</body>
</html>