<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change password</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

	<script>
		function validate() {

			if (document.form.email.value == "") {
				alert("Please enter your email.");
				document.form.email.focus();
				return false;
			}

			if (document.form.newPassword.value == "") {
				alert("Please enter your new password.");
				document.form.newPassword.focus();
				return false;
			}
			if (document.form.cPassword.value == "") {
				alert("Please enter confirm your new password.");
				document.form.cPassword.focus();
				return false;
			}
			if (document.form.cPassword.value != document.form.newPassword.value) {
				alert("New password not match, re-enter your new password.");
				document.form.cPassword.focus();
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
	<h1>Change Your Password</h1>
	<form action="submitChangePassword.jsp" onsubmit="return validate();"
		name="form">
		<table align="center">

			<tr>

				<td>Email</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
		
			<tr>
				<td>New Password</td>
				<td><input type="password" name="newPassword" /></td>
			</tr>
			<tr>
				<td>Confirm New Password</td>
				<td><input type="password" name="cPassword" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Change Password"><a
					href="changePassword.jsp"><button type="button">Reset</button></a></td>
			</tr>
		
	</form>

	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>
</body>
</html>