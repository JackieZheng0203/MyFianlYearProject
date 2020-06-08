<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cuisine Recipes</title>
<link rel="stylesheet" type="text/css" href="css/cuisine.css">
</head>
<body>
	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
			<a href="profile.jsp">Profile</a> <a href="home.jsp">Logout</a>
		</div>
	</div>


	<h2>French Cuisine</h2>
	<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String data = "SELECT * FROM recipe";
      ResultSet rs = st.executeQuery(data);
      while(rs.next()){
    	  if(rs.getString(9).equals("French")){
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