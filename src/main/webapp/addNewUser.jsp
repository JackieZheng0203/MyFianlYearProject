<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration add new user</title>
<link rel="stylesheet" type="text/css" href="css/addNewUser.css">
</head>
<body>
	<script>
function validate(){
     if(document.form.first_name.value == ""){
        alert("Please enter first name." );
        document.form.first_name.focus();
        return false;
    }
    if(document.form.last_name.value == ""){
        alert("Please enter last name." );
        document.form.last_name.focus();
        return false;
    }

     if(document.form.user_name.value == ""){
        alert("Please enter user name." );
        document.form.user_name.focus();
        return false;
    }

    if(document.form.email.value == ""){
        alert("Please enter email address." );
        document.form.email.focus();
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
		<a href="adminHomePage.jsp" class="logo">WorldRecipes</a>
		<div class="header-right">
			<a href="adminHomePage.jsp">Home</a> <a href="adminLogin.jsp">Log
				Out</a>
		</div>
	</div>
	<h1>Add New User</h1>

	<form action="submitNewUser.jsp" method="post" id="registerForm"
		onsubmit="return validate();" name="form">
		<table align="center">

			<tr>
				<td><label for="fname">First Name</label></td>
				<td><input type="text" name="first_name" /></td>
			</tr>
			<tr>
				<td><label for="lname">Last Name</label></td>
				<td><input type="text" name="last_name" /></td>
			</tr>
			<tr>
				<td><label for="username">User Name</label></td>
				<td><input type="text" name="user_name" /></td>
			</tr>
			<tr>
				<td><label for="e-mail">Email</label></td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" name="password" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Submit"><a
					href="addNewUser.jsp"><button type="button">Reset</button></a></td>
			</tr>
			<tr>
		</table>
	</form>
	<div class="footer">
		<p class="text">
			<span>&copy; Jackie Zheng | 2020</span>
		</p>
	</div>
</body>
</html>

