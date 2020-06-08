<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration Login Form</title>
<link rel="stylesheet" type="text/css" href="css/adminLogin.css">
<style>
</style>
</head>
<body>
	<script>

function validate(){
 
     if(document.form.username.value == ""){
        alert("Please enter user name." );
        document.form.username.focus();
        return false;
    }
    if(document.form.password.value == ""){
        alert("Please enter password." );
        document.form.password.focus();
        return false;
    }

        return true;

   }  
</script>
	<div class="header">
		<a href="adminLogin.jsp" class="logo">WorldRecipes</a>
	</div>
	<h1>Administration Login</h1>
	<form action="adminLoginCheck.jsp" onsubmit="return validate();"
		name="form">
		<table align="center">
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Login"><a
					href="adminLogin.jsp"><button type="button">Reset</button></a></td>
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