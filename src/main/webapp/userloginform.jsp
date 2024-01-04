<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>User Login</title>
    <style><%@include file="/resources/adminloginform.css"%></style>
  </head>
  <body>
    <h1 align="center">USER</h1>
    <div align="center">
	    <h3>${msg}</h3>
	    <div class="form">
	      <form action="validateuser">
	        Enter email <br> <input type="email" name="email" /> <br />
	        Enter password <br> <input type="password" name="password" /> <br />
	        <input type="submit" />
	        <a href="adduser">create account</a>
	      </form>
	    </div>
    </div> 
  </body>
</html>
