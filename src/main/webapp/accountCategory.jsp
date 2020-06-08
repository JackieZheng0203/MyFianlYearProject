<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Recipe Category</title>
<link rel="stylesheet" type="text/css" href="css/category.css">
</head>
<body>

	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
			<a href="account.jsp">Home</a> <a href="home.jsp">Log out</a>
		</div>
	</div>

	<div class="categorylist">
		<div class="column">
			<h4>Meat and Poultry</h4>
			<ul>
				<li><a href="accountPorkRecipes.jsp">Pork</a></li>
				<li><a href="accountChickenRecipes.jsp">Chicken</a></li>

			</ul>
		</div>
		<div class="column">
			<h4>Fish and Seafood</h4>
			<ul>

				<li><a href="accountSeafoodRecipes.jsp">Fish</a></li>

			</ul>
		</div>
		<div class="column">
			<h4>Cakes and Baking</h4>
			<ul>
				<li><a href="accountBakingRecipes.jsp">Baking</a></li>
			</ul>
		</div>
		<div class="column">
			<h4>Cuisine</h4>
			<ul>
				<li><a href="accountChineseCuisine.jsp">Chinese</a></li>
				<li><a href="accountThaiCuisine.jsp">Thai</a></li>
				<li><a href="accountJapaneseCuisine.jsp">Japanese</a></li>
				<li><a href="accountItalianCuisine.jsp">Italian</a></li>
				<li><a href="accountFrenchCuisine.jsp">French</a></li>
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