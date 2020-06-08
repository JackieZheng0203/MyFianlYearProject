<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Recipe</title>
<link rel="stylesheet" type="text/css" href="css/displayRecipe.css">
</head>
<body>


	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
		<a href="editRecipeLogin.jsp">Edit Recipe</a>
			<a href="uploadRecipeLogin.jsp">Upload Recipe</a><a
				href="editProfileLogin.jsp">Edit Profile</a> <a href="home.jsp">Log
				Out</a>
		</div>
	</div>

	<%
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
           %>

	<form action="updateRecipe.jsp" id="recipeForm"
		enctype="multipart/form-data" method="post">
	<h1>Your Recipe Information</h1>
		<%
		 
		  String updateUserRecipe = request.getParameter("updateUserRecipe");
           Statement st = con.createStatement();
          // String recipe = "SELECT recipeId, title, description, ingredients, instruction, preTime, cookTime, recipeCategory, image, userId FROM recipe, user WHERE recipe.userId='"+updateUserRecipe+"'";
           String recipe = "SELECT * FROM recipe WHERE userId='"+updateUserRecipe+"'";
           ResultSet rs = st.executeQuery(recipe);
          while(rs.next())
          {
            %>
			
		<table align="center">
					<tr>
				<td><input type="hidden" name="recipeId"
					value='<%=rs.getString("recipeId")%>' /></td>
			</tr>
			
			<tr>
				<td>title</td>
				<td><input type="text" name="title"
					value='<%=rs.getString("title")%>'></td>
			</tr>
			<tr>
				<td>description</td>
				<td><textarea class="textarea" name="description" textareaObject.value="text">
					<%=rs.getString("description")%></textarea></td>
			</tr>
			<tr>
				<td>ingredients</td>
				<td><textarea class="textarea" name="ingredients" textareaObject.value="text">
					<%=rs.getString("ingredients")%></textarea></td>
			</tr>
			<tr>
				<td>instruction</td>
				<td><textarea class="textarea" name="instruction" textareaObject.value="text">
					<%=rs.getString("instruction")%></textarea></td>
			</tr>
			<tr>
				<td>PreTime</td>
				<td><input type="text" name="preTime"
					value='<%=rs.getString("preTime")%>'></td>
			</tr>
			<tr>
				<td>CookTime</td>
				<td><input type="text" name="cookTime"
					value='<%=rs.getString("cookTime")%>'></td>
			</tr>
			<tr>
				<td>recipeCategory</td>
					<td><select name="recipeCategory" <%=rs.getString("recipeCategory")%>>
						<option value="Chicken">Chicken</option>
						<option value="Pork">Pork</option>
						<option value="Seafood">Seafood</option>
						<option value="Baking">Baking</option>
						<option value="Chinese">Chinese</option>
				</select></td>
			</tr>
			<tr>
				<td>cuisine(Optional)</td>
					<td><select name="cusine" <%=rs.getString("cuisine")%>>
					    <option value=""></option>
						<option value="Chinese">Chinese</option>
						<option value="Thai">Thai</option>
						<option value="Japanese">Japanese</option>
						<option value="Italian">Italian</option>
						<option value="French">French</option>
				</select></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><input type="file" name="image"
					value='<%=rs.getString("image")%>'></td>
			</tr>
			<tr>
				<td><input type="hidden" name="userId"
					value='<%=rs.getString("userId")%>' /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Update"><a href='deleteRecipe.jsp?deleteUserRecipe=<%=rs.getString("recipeId") %>'><button type="button"> Delete</button></a></td>
			</tr>
		
			<%
             }
		    %>
			<tr>
				<td></td>
				<td></td>
			</tr>
		</table>
	</form>
	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>

</body>
</html>

