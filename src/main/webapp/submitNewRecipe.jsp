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
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_data","root","JackieZheng4657");


String title = request.getParameter("title");
String description = request.getParameter("description");
String ingredients = request.getParameter("ingredients");
String instruction = request.getParameter("instruction");
String preTime = request.getParameter("preTime");
String cookTime = request.getParameter("cookTime");
String recipeCategory = request.getParameter("recipeCategory");
String cuisine = request.getParameter("cuisine");
String image = request.getParameter("image");
String userID = request.getParameter("user_id");


//Mysql insert statement and insert prepare statement
String query = "INSERT INTO recipe(title, description, ingredients, instruction, preTime, cookTime,recipeCategory,cuisine,image, userId)" + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
PreparedStatement ps = con.prepareStatement(query);

ps.setString(1, title);
ps.setString(2, description);
ps.setString(3, ingredients);
ps.setString(4, instruction);
ps.setString(5, preTime);
ps.setString(6, cookTime);
ps.setString(7, recipeCategory);
ps.setString(8, cuisine);
ps.setString(9, image);
ps.setString(10, userID);


	if(title.isEmpty() || description.isEmpty() || ingredients.isEmpty() || 
			instruction.isEmpty() || preTime.isEmpty()|| cookTime.isEmpty()|| recipeCategory.isEmpty()||  image.isEmpty()){
		    response.sendRedirect("uploadRecipe.jsp");
	}
	else{
		 ps.execute();
		 response.sendRedirect("account.jsp");
	}
   
    con.close();
%>

</body>
</html>