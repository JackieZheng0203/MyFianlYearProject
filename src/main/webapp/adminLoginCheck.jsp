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

String username = request.getParameter("username");
String password= request.getParameter("password");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM admin WHERE username ='"+username+"'");


 if(rs.next()){
	if(rs.getString(3).equals(password)){
		response.sendRedirect("adminHomePage.jsp");
	}
	else{
		response.sendRedirect("adminRelogin.jsp");
	}
}
	
else{
	response.sendRedirect("adminRelogin.jsp");
}

%>

</body>
</html>