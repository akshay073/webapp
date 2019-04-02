<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<p>
Name : <input type="text" name="name" /> 

<input type="submit" value="Submit" />


</p>

<%
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://dbs91.cm8uzr6c4avp.us-east-2.rds.amazonaws.com/akshay", "akshay", "akshay123");

	Statement st = con.createStatement();
	st.executeUpdate("insert into users(name) values('Jaitn')" );

	con.close();
}
catch(Exception  ex){
	
	
}

%>


</body>
</html>