<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.jsp.foodapp.dto.Product"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form action="savenewproduct" modelAttribute="product">
		Id <form:input path="id" readonly="true"/>
		Enter New Name: <form:input path="name" /> <br>
		Enter New Type: <form:input path="type" /> <br>
		Enter New Cost: <form:input path="cost"/> <br>
		<input type="submit">
	</form:form>
</body>
</html>