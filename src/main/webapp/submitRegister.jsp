<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit registered user data to database</title>
<link rel="stylesheet" type="text/css" href="css/re-register.css">
</head>
<body>

	<%

//Create Mysql database connection
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");


String fname = request.getParameter("first_name");
String lname = request.getParameter("last_name");
String username = request.getParameter("user_name");
String email = request.getParameter("email");
String password = request.getParameter("password");

//Mysql insert statement and insert prepare statement
String query = "INSERT INTO user(first_name, last_name, user_name, email, password)" + "VALUES(?, ?, ?, ?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, username);
ps.setString(4, email);
ps.setString(5, password);

	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM user WHERE user_name ='"+username+"'or email ='"+email+"'");

	  if(rs.next()){
		  if(rs.getString(4).equals(username)){
				//out.print("This username has been used, please use another username!");
			  response.sendRedirect("re-register.jsp");
			} 
		  else if(rs.getString(5).equals(email)){
			//out.print("A user with this email address already exists, please sign in to continue!");
			  response.sendRedirect("emailExists.jsp");
		}
		else{
			 ps.execute();
			//out.print("You have been registered, sign in now to your account!");
			 response.sendRedirect("registerSuccess.jsp");
		}
	}
	else{
		 ps.execute();
		//out.print("You have been registered, sign in now to your account!");
		 response.sendRedirect("registerSuccess.jsp");
	}

    con.close();
    	
%>

</body>
</html>