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

	<form action="" id="recipeForm"
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
		
	<h1>Click display recipe button to display your recipe</h1>
	
		<table align="center">
		     <tr>
				<td><input type="hidden" name="user_id"
					value='<%=rs.getString("user_id")%>' /></td>
			</tr>
			

			<tr>
				<td></td>
				<td><a
					href='displayRecipe.jsp?updateUserRecipe=<%=rs.getString("user_id") %>'><button type="button">Display Recipe</button></a></td>
				<td>
					<a
					href="profile.jsp"><button type="button">Back</button></a></td>
					
				
			</tr>
				<%
             }
		    %>

		</table>
	</form>
		
	
	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>


</body>
</html>