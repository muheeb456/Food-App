<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add item</title>
</head>
<body>
	<form:form action="saveitemtoorder" modelAttribute="item">
	 	Name: <form:input path="name"/> <br>
	 	Cost: <form:input path="cost"/> <br>
	 	Quantity: <form:input path="quantity"/> <br>
	 	<input type="submit">
	</form:form>
</body>
</html>