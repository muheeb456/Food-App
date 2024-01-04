<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin Login</title>
    <style><%@include file="/resources/adminloginform.css"%></style>
  </head>
  <body>
  <div class="cover">
    <h1 align="center">ADMIN</h1>
    <div align="center" >
	    <%if((request.getAttribute("msg"))!=null){%> <h3>${msg}</h3><%} %>
	    <div class="form">
	      <form action="validate">
	        Enter email <br> <input type="email" name="email" /> <br />
	        Enter password <br> <input type="password" name="password" /> <br />
	        <div align="center"></a><input class="button" type="submit" /></div> 
	      </form>
	    </div>
    </div>
    	If first time login please press <a class="button" href="adminlogin">create admin</a>
    
    </div>
    
  </body>
</html>
