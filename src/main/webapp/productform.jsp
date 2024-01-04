<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="saveproduct" modelAttribute="product">
		Enter Name: <form:input path="name"/> <br>
		Enter Type: <form:input path="type"/> <br>
		Enter Cost: <form:input path="cost"/> <br>
		<input type="submit">
	</form:form>
</body>
</html>