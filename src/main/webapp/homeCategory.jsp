<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Recipe Category</title>
<link rel="stylesheet" type="text/css" href="css/category.css">
</head>
<body>

	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a><a
			href="homeCategory.jsp">Category</a>
		<div class="header-right">
			<a href="login">Sign in</a> <a href="register">Register</a>
		</div>
	</div>
    
   
	<div class="categorylist">
		<div class="column">
			<h4>Meat and Poultry</h4>
			<ul class="list">
				<li><a href="porkRecipes.jsp">Pork</a></li>
				<li><a href="chickenRecipes.jsp">Chicken</a></li>

			</ul>
		</div>
		<div class="column">
			<h4>Fish and Seafood</h4>
			<ul class="list">

				<li><a href="seafoodRecipes.jsp">Fish</a></li>

			</ul>
		</div>
		<div class="column">
			<h4>Cakes and Baking</h4>
			<ul class="list">
				<li><a href="bakingRecipes.jsp">Baking</a></li>
			</ul>
		</div>
		<div class="column">
			<h4>Cuisine</h4>
			<ul class="list">
				<li><a href="chineseCuisine.jsp">Chinese</a></li>
				<li><a href="thaiCuisine.jsp">Thai</a></li>
				<li><a href="japaneseCuisine.jsp">Japanese</a></li>
				<li><a href="italianCuisine.jsp">Italian</a></li>
				<li><a href="frenchCuisine.jsp">French</a></li>
				
			</ul>
		</div>
	</div>
   

	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>
</body>
</html>