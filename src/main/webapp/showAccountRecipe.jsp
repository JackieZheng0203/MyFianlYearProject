<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>World Recipes</title>
<link rel="stylesheet" type="text/css" href="css/showAccountRecipe.css">
</head>
<body>

	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
			<a href="account.jsp">Home</a> <a href="home.jsp">Log Out</a>
		</div>
	</div>

	<%
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
      Statement st = con.createStatement();
      String loadRecipe = request.getParameter("loadRecipe");
      String data = "SELECT * FROM recipe WHERE recipeId='"+loadRecipe+"'";
      ResultSet rs = st.executeQuery(data);
      while(rs.next()){
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
			<p><%=rs.getString("ingredients")%></p>
		</div>
		<div class="instructions">
			<h2>Instructions</h2>
			<p><%=rs.getString("instruction")%>
			<p>
		</div>

		<form action="submitComment.jsp" method="post">
			<h4>Post a comment:</h4>
			<table>
				<tr>
					<td><input type="hidden" name="recipeId"
						value=' <%=rs.getString("recipeId")%>' /></td>
				</tr>
				<tr>
					<td><label for="username">Username</label></td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td><label for="comment">Comment</label></td>
					<td><textarea name="content"></textarea></td>
				</tr>
				<tr>
					<td><label for="date">Date</label></td>
					<td><input type="date" name="date" /></td>
				</tr>
				<tr>
					<td><label for="rating">Rating</label></td>
					<td><select name="rating">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
					</select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
		<h2>Comments and Rating</h2>
	</section>
	<%
		}
	%>
	<%

  Statement sta = con.createStatement();
  String userData = "SELECT * FROM review WHERE recipeId='"+loadRecipe+"'";
  ResultSet rst = st.executeQuery(userData);
  while(rst.next()){
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