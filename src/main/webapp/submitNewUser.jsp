<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit new user</title>
</head>
<body>


	<%
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data", "root",
				"JackieZheng4657");

		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String username = request.getParameter("user_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		//Mysql insert statement and insert prepare statement
		String query = "INSERT INTO user(first_name, last_name, user_name, email, password)"
				+ "VALUES(?, ?, ?, ?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, username);
		ps.setString(4, email);
		ps.setString(5, password);

		if (fname.isEmpty() || lname.isEmpty() || username.isEmpty() || password.isEmpty() || email.isEmpty()) {
			response.sendRedirect("addNewUser.jsp");
		} else {
			ps.execute();
			response.sendRedirect("adminHomePage.jsp");
		}

		con.close();
	%>


</body>
</html>