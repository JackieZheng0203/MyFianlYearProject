<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
//Create Mysql connection to database
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");

String email = request.getParameter("email");
String newPassword= request.getParameter("newPassword");

String query = "UPDATE user SET password=? WHERE email='"+email+"'";
PreparedStatement ps = con.prepareStatement(query);

ps.setString(1, email);
ps.setString(1, newPassword);

int i = ps.executeUpdate();

 if(i > 0){
		response.sendRedirect("passwordConfirmChanged.jsp");
 }	
	else{
		response.sendRedirect("rechangePassword.jsp");
	}


	


%>

</body>
</html>