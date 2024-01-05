<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin:0;
		padding: 0;
		text-decoration: none;
	}
	body{
		background-color: #9EC8B9;
		height: 100vmin;
		box-sizing: border-box;
	}
	.data{
		color:white;
	}
</style>
</head>
<h3>${msg}</h3>
<body>
	<div class="form">
		<img alt="" src="https://cdn-icons-png.flaticon.com/128/4727/4727424.png">
		<form:form action="saveuser" modelAttribute="user">
			<div class=data>
				<label for="name">Enter Name:</label>
				<form:input id="name" path="name"/> 
				<label for="email">Enter email:</label>
				<form:input id="email" path="email"/> 
				<label for="pwd">Enter password:</label>
				<form:input id="pwd" path="password"/> 
			</div>
			<input type="submit">
		</form:form>
	</div>
<a href="adminoptions">Go Back</a>
</body>
</html>