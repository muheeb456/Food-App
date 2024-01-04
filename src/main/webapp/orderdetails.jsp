<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
</head>
<body>
	<form:form action="savefoodorder" modelAttribute="order">
		Enter Name: <form:input path="name"/> <br>
		Enter Mobile Number: <form:input path="mobile"/> <br>
		
		<input type="submit">
	</form:form>
</body>
</html>