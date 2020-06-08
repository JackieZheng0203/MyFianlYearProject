<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome user to account page</title>
<link rel="stylesheet" type="text/css" href="css/account.css">

<style>
</style>
</head>
<body>

	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
			<a href="profile.jsp">Profile</a> <a href="home.jsp">Log out</a>
		</div>
	</div>


	<p>Welcome, You can upload your recipe to go to your profile in the
		navigation bar!</p>
	<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String recipeData = "SELECT * FROM recipe";
      ResultSet rs = st.executeQuery(recipeData);
      while(rs.next()){
      %>
	<div class="gallery">
		<a
			href='showAccountRecipe.jsp?loadRecipe=<%=rs.getString("recipeId") %>'>
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