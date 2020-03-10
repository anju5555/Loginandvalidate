<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet"   type = "text/css"  href = "style.css" />
</head>
<body>

<div class="register">
<form action="addDataTodatabase.jsp" name="myform" onsubmit="return validateform()" method="post"> 

   <label><b>Username</b></label>
   <input type="text" name="username" id="username" placeholder= "Username" required="required" onfocus="this.value = '';">

   <br> <label><b>Password</b></label>
    <input type="password" name="password" id="password" placeholder="password" required="required" onfocus="this.value = '';">     

 <br><label><b>Mobile Number</b></label>
   <input type="text" name="mobile" id="mobile" placeholder= "Mobile Number" required="required" onfocus="this.value = '';">

<br><label><b>E-Mail Address</b></label>
   <input type="text" name="email" id="email" placeholder= "E-Mail Address" required="required" onfocus="this.value = '';"> 

<br><label><b>Age</b></label>
   <input type="text" name="age" id="age" placeholder= "Age" required="required" onfocus="this.value = '';">    
   
    <br><input type="submit" value="Register">   
	
</form>
</body>
</html>
