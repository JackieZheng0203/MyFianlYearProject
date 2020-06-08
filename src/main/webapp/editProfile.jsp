<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Profile</title>
<link rel="stylesheet" type="text/css" href="css/editProfileCheck.css">
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

	<form action="updateProfile.jsp" method="post">
	<h3>Your Account Information</h3>
		<%
          String username=request.getParameter("user_name");
          String password=request.getParameter("password");
  
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery("SELECT * FROM user WHERE user_name='"+username+"' and password='"+password+"'");
          
          while(rs.next())
          {
            %>
		
		<table align="center">
			<tr>
				<td><input type="hidden" name="user_id"
					value='<%=rs.getString("user_id")%>' /></td>
			</tr>
			<tr>
				<td>FirstName:</td>
				<td><input type="text" name="first_name"
					value='<%=rs.getString("first_name")%>'></td>
			</tr>
			<tr>
				<td>LastName:</td>
				<td><input type="text" name="last_name"
					value='<%=rs.getString("last_name")%>'></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="user_name"
					value='<%=rs.getString("user_name")%>'></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email"
					value='<%=rs.getString("email")%>'></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"
					value='<%=rs.getString("password")%>'></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Update"><a href="editProfileLogin.jsp"><button type="button">Back</button></a>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td>Delete your account.</td>
			</tr>
			<tr>
				<td></td>
				<td>This can not be reversed, so make sure this is what you want.</td>
			</tr>
			<tr>
				<td></td>
				<td><a href='deleteUserAccount.jsp?deleteUserAccount=<%=rs.getString("user_id")%>'><button type="button" class="red">Delete My Account</button></a></td>
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

