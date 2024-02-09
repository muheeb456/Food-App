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
		height: 100vh;
		
	}
	.form, .data{
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.form{
		height: 100%;
		justify-content: center;
	}
	
	.data{
		align-items: flex-start;
		font-family: sans-serif;
		font-size: 20px;
	}
	
	label{
		margin-top: 20px;
		margin-bottom: 10px;
	}
	
	input{
		padding: 5px 5px;
		font-size: 25px;
	}
	
	input[type=submit] {
		margin-top: 25px;
		align-self: center;
		padding: 8px 30px;
	}
	
	input:focus{
		border: 2px solid pink;
		outline: none;
	}
	
	a{
		text-decoration: none;
		font-family: sans-serif;
		margin-top: 25px;
		background-color: skyblue;
		padding: 10px;
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
				<form:input id="name" path="name" class="input"/> 
				<label for="email">Enter email:</label>
				<form:input id="email" path="email" class="input"/> 
				<label for="pwd">Enter password:</label>
				<form:input id="pwd" path="password" class="input"/> 
				<input type="submit">
			</div>
		</form:form>
		<a href="adminoptions">Go Back</a>
	</div>
</body>
</html>