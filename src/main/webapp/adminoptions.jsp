<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		margin: 0px;
		padding: 0px;
	}
	
	body {
		height: 100vh;
	    background-image: url("https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg");
	    background-size: cover;
	    background-position: center;
	}
	
	h1 {
		margin: 30px auto;
		text-align: center;
		color: red;
		background-color: black;
		padding: 10px;
		width: 250px;
		border-radius: 10px;
	}
	.options{
		border-radius: 10px;
		background-color: #FFF7F175;
		width: 60vw;
		margin: 100px auto;
		padding: 50px;
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		gap: 20px;
	}
	.card{
		text-align: center;
		flex-basis: 130px;
		font-family:sans-serif;
		text-decoration: none;
		background-color: #E78895;
		padding: 45px;
		color: #155175;
		font-weight: bolder;
		font-size: 20px;
	}
</style>
</head>
<body>
<h1>Welcome Admin</h1>
<div class="options">
	<a href="adduser" class="card">ADD USER</a>
	<a href="userloginform.jsp" class="card">LOGIN USER</a>
	<a href="addproduct" class="card">ADD PRODUCT</a>
	<a href="viewproducts" class="card">VIEW PRODUCTS</a>
	<a href="viewallorders" class="card">VIEW ALL PRODUCTS</a>
</div>
</body>
</html>