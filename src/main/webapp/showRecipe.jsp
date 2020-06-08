<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>World Recipes</title>
<link rel="stylesheet" type="text/css" href="css/showRecipe.css">
</head>
<body>

	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a><a
			href="homeCategory.jsp">Category</a>
		<div class="header-right">
			<a href="login.jsp">Sign in</a> <a href="register.jsp">Register</a>
		</div>
	</div>

	<%
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data", "root",
				"JackieZheng4657");
		Statement st = con.createStatement();
		String loadRecipe = request.getParameter("loadRecipe");
		String data = "SELECT * FROM recipe WHERE recipeId='" + loadRecipe + "'";
		ResultSet rs = st.executeQuery(data);
		while (rs.next()) {
	%>
	<section>
		<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
		    <a class="a2a_button_facebook"></a>
			<a class="a2a_button_twitter"></a> <a class="a2a_button_pinterest"></a>
		</div>
		<script async src="https://static.addtoany.com/menu/page.js"></script>

		<h1><%=rs.getString("title")%></h1>
		<p><%=rs.getString("description")%></p>

		<div class="time">
			<p>
				Pre Time :
				<%=rs.getString("preTime")%></p>
			<p>
				Cook Time :
				<%=rs.getString("cookTime")%></p>
		</div>
		<div>
			<img src="images/<%=rs.getString("image")%>">
		</div>
		<div class="ingredients">
			<h2>Ingredients</h2>
			<%=rs.getString("ingredients")%>
		</div>
		<div class="instructions">
			<h2>Instructions</h2>
			<%=rs.getString("instruction")%>
		</div>

		<h2>Comments and Rating</h2><a href="login.jsp">
		<button class="signinbutton" type="button">Sign in to comment</button></a>

	</section>
	<%
		}
	%>
	<%
		Statement sta = con.createStatement();
		String userData = "SELECT * FROM review WHERE recipeId='" + loadRecipe + "'";
		ResultSet rst = st.executeQuery(userData);
		while (rst.next()) {
	%>
	<section>
		<div class="comments">
			<p>
				User:
				<%=rst.getString("username")%></p>
			<p><%=rst.getString("content")%></p>
			<p>
				Date:
				<%=rst.getString("date")%></p>
			<p>
				Rating:
				<%=rst.getString("rating")%></p>
		</div>


	</section>

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