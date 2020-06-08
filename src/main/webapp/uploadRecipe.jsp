<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Recipes</title>
<link rel="stylesheet" type="text/css" href="css/uploadRecipe.css">
</head>
<body>
	<script>

function validate(){
     if(document.form.title.value == ""){
        alert("Please enter Recipe Title." );
        document.form.title.focus();
        return false;
    }
    if(document.form.description.value == ""){
        alert("Please enter Recipe Description." );
        document.form.description.focus();
        return false;
    }
     if(document.form.ingredients.value == ""){
        alert("Please enter Ingredients." );
        document.form.ingredients.focus();
        return false;
    }

    if(document.form.instruction.value == ""){
        alert("Please enter Recipe Instruction ." );
        document.form.instruction.focus();
        return false;
    }
    if(document.form.preTime.value == ""){
        alert("Please enter Prepare Time." );
        document.form.preTime.focus();
        return false;
    }
    if(document.form.cookTime.value == ""){
        alert("Please enter End Time." );
        document.form.cookTime.focus();
        return false;
    }
    if(document.form.recipeCategory.value == ""){
        alert("Please insert a recipe type." );
        document.form.recipeCategory.focus();
        return false;
    }
    if(document.form.image.value == ""){
        alert("Please insert an image." );
        document.form.image.focus();
        return false;
    }
        return true;

   }  
</script>
	<div class="header">
		<a href="account.jsp" class="logo">WorldRecipes</a><a
			href="accountCategory.jsp">Category</a>
		<div class="header-right">
		<a href="editRecipeLogin.jsp">Edit Recipe</a>
			<a href="uploadRecipeLogin.jsp">Upload Recipe</a> <a
				href="editProfileLogin.jsp">Edit Profile</a> <a href="home.jsp">Log
				Out</a>
		</div>
	</div>
		<%
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
           %>

	<form action="submitNewRecipe.jsp" id="recipeForm"
		onsubmit="return validate();" name="form"
		enctype="multipart/form-data">
		<%
          String username=request.getParameter("user_name");
          String password=request.getParameter("password");
  
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery("SELECT * FROM user WHERE user_name='"+username+"' and password='"+password+"'");
          
          while(rs.next())
          {
            %>
		
	<h1>Post Recipe</h1>
	
		<table align="center">
		    <tr>
				<td><input type="hidden" name="user_id"
					value='<%=rs.getString("user_id")%>' /></td>
			</tr>
	
			<tr>
				<td><label for="title">Title</label></td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td><label for="description">Description</label></td>
				<td><textarea class="textarea" name="description"></textarea></td>
			</tr>
			<tr>
				<td><label for="ingredients">Ingredients</label></td>
				<td><textarea class="textarea" name="ingredients"></textarea></td>
			</tr>
			<tr>
				<td><label for="instruction">Instructions</label></td>
				<td><textarea class="textarea" name="instruction"></textarea></td>
			</tr>
			<tr>
				<td><label for="preTime">Pre Time</label></td>
				<td><input type="text" name="preTime" /></td>
			</tr>

			<tr>
				<td><label for="cookTime">Cook Time</label></td>
				<td><input type="text" name="cookTime" /></td>
			</tr>
			<tr>
				<td><label for="recipeCategory">recipeCategory</label></td>
				<td><select name="recipeCategory">
						<option value="Chicken">Chicken</option>
						<option value="Pork">Pork</option>
						<option value="Seafood">Seafood</option>
						<option value="Baking">Baking</option>
						
				</select></td>
			</tr>
				<tr>
				<td><label for="cuisine">cuisine(Optional)</label></td>
				<td><select name="cuisine">
				        <option value=""></option>
						<option value="Chinese">Chinese</option>
						<option value="Thai">Thai</option>
						<option value="Japanese">Japanese</option>
						<option value="Italian">Italian</option>
						<option value="French">French</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="image">Choose Image</label></td>
				<td><input type="file" name="image" /></td>
			</tr>
			<%
             }
		    %>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Upload"><a
					href="uploadRecipe.jsp"><button type="button">Reset</button></a></td>
			</tr>
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