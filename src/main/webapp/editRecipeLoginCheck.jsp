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

String username = request.getParameter("user_name");
String password= request.getParameter("password");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from user where user_name ='"+username+"'");


 if(rs.next()){
	if(rs.getString(6).equals(password)){
		RequestDispatcher rd = request.getRequestDispatcher("editRecipe.jsp");
		rd.include(request, response);
	}
	else{
		response.sendRedirect("editRecipeLogin.jsp");
	}

}
	
else{
	response.sendRedirect("editRecipeLogin.jsp");
}
 %>
</body>
</html>