<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" type="text/css" href="css/editProfile.css">
</head>
<body>
	<script>
		function validate() {
			var username = document.form.user_name.value;
			var password = document.form.password.value;
			if (username == "") {
				alert("Enter Username!");
				return false;
			}
			if (password == "") {
				alert("Enter Password!");
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
	<h2>Please confirm your identity</h2>
	<h3>Re-enter your login detail to access your personal data</h3>
	<form name="form" method="post" action="editProfileLoginCheck.jsp"
		onsubmit="javascript:return validate();">
		<table align="center">
			<tr>
				<td>Username:</td>
				<td><input type="text" name="user_name"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Confirm"></td>
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