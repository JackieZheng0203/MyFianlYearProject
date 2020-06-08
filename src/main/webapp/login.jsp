<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User login page</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

	<script>
		function validate() {

			if (document.form.user_name.value == "") {
				alert("Please enter user name.");
				document.form.user_name.focus();
				return false;
			}
			if (document.form.password.value == "") {
				alert("Please enter password.");
				document.form.password.focus();
				return false;
			}
			return true;

		}
	</script>
	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a><a
			href="homeCategory.jsp">Category</a>
		<div class="header-right">
			<a href="register.jsp">Register</a> <a href="home.jsp">Home</a>
		</div>
	</div>
	<h1>Login here</h1>
	<form action="submitLogin.jsp" onsubmit="return validate();"
		name="form">
		<table align="center">

			<tr>

				<td>User name</td>
				<td><input type="text" name="user_name" /></td>
			</tr>
			<tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Login"><a
					href="login.jsp"><button type="button">Reset</button></a></td>
			</tr>

			<tr>
				<td> </td>
				<td><a href="changePassword.jsp">Forgotten your password?</a></td>
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