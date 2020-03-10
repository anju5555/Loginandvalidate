<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
boolean flag=false;
String username =request.getParameter("username");
String password =request.getParameter("password");
String mobile =request.getParameter("mobile");
String email =request.getParameter("email");
String age =request.getParameter("age");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tecomp","root","root");  
Statement stmt=con.createStatement();  
int i=stmt.executeUpdate("insert into login values('"+username+"','"+password+"','"+mobile+"','"+email+"','"+age+"')"); 
    
     if(i>0)
     {
    	 //out.println("<b><font color=\"Red\"> You Have Register Successfully <a href=\"index.html\">goto Login Page");
    	 response.sendRedirect("index.html");  
     }
%>
</body>
</html>
