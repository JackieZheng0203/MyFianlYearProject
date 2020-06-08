<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration editing user</title>
<link rel="stylesheet" type="text/css" href="css/editUser.css">
</head>
<body>
	<div class="header">
		<a href="home.jsp" class="logo">WorldRecipes</a>
		<div class="header-right">
			<a href="viewUserRecipes.jsp">User Recipes</a> <a
				href="addNewUser.jsp">Add New User</a> <a href="adminLogin.jsp">Log
				Out</a>
		</div>
	</div>
	<h1>Edit User</h1>
	<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");
%>
	<form action="" method="post">
		<%
   Statement st = con.createStatement();
   String updateUser = request.getParameter("updateUser");
   String data = "SELECT * FROM user WHERE user_id='"+updateUser+"'";
   ResultSet rs = st.executeQuery(data);
   while(rs.next()){
   %>
		<table align="center">
			<tr>
				<td><input type="hidden" name="user_id"
					value='<%=rs.getString("user_id")%>' /></td>
			</tr>

			<tr>
				<td><label for="fname">First Name</label></td>
				<td><input type="text" name="first_name"
					value='<%=rs.getString("first_name")%>' /></td>
			</tr>
			<tr>
				<td><label for="lname">Last Name</label></td>
				<td><input type="text" name="last_name"
					value='<%=rs.getString("last_name")%>' /></td>
			</tr>
			<tr>
				<td><label for="username">User Name</label></td>
				<td><input type="text" name="user_name"
					value='<%=rs.getString("user_name")%>' /></td>
			</tr>
			<tr>
				<td><label for="e-mail">Email</label></td>
				<td><input type="email" name="email"
					value='<%=rs.getString("email")%>' /></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" name="password"
					value='<%=rs.getString("password")%>' /></td>
			</tr>
			<%
                 }
				%>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Update"><a
					href="adminHomePage.jsp"><button type="button">Back</button></a></td>
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
<%
String userId = request.getParameter("user_id");
String fname = request.getParameter("first_name");
String lname = request.getParameter("last_name");
String username = request.getParameter("user_name");
String email = request.getParameter("email");
String password = request.getParameter("password");

 
String query = "UPDATE user SET first_name=?, last_name=?, user_name=?, email=?, password=? WHERE user_id='"+userId+"'";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, username);
ps.setString(4, email);
ps.setString(5, password);

if(userId!=null && fname!=null && lname!=null && username!=null && 
password!=null && email!=null){

ps.executeUpdate();
response.sendRedirect("adminHomePage.jsp");
}
   
    con.close();

%>