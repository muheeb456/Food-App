<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin Login</title>
    <style>
    	*{
			margin:0px;
			padding:0px;
			text-decoration: none;
			border: none;
		}
		
		a{
			color:purple;
			background-color: lightblue;	
			padding:5px;
			border-radius: 5px;
		}
			
		h1{
		    color: yellow;
		    font-size: 50px;
		    padding: 40px;
		    text-decoration: underline;
		}
		
		h3{
		    color: red;
		    font-size: 25px;
		    padding: 20px 40px;
		    opacity: 75%;
		    text-align: center;
		    width: 250px;
		    background-color: rgba(0,0,0,0.8);
		    border-radius:5px;
		}
		
		body{
		    height: 100vh;
		    background-image: url("https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg");
		    background-size: cover;
		    background-position: center;
		}
		   
		form{
			margin-top:100px;
		    width: 75%;
		    max-width: 750px;
		    font-size: 1em;
		    text-align: left;
		    color: yellow;
		}
		
		input {
		    opacity: 60%;
		    margin-bottom: 50px;
		    width:100%;
		    font-size: 30px;
		}
		
		input[type=submit]{
			width:40%;
			box-shadow: 0 0 0 0;
		}
		
		.button{
			transition: transform 300ms;
		}
		
		.cover{
			height: inherit;
			width:100%;
			background-color:rgba(0,0,0, 0.6);
			color:aqua;
			font-size: 2em;
			text-align: center;
		}
		
		input:focus{
			box-shadow:  0 0 30px 5px rgba(255, 255, 128, 0.2);
		}
		
		.button:hover{
			transform: scale(1.1);
		}
    </style>
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
	        <div align="center"> <input class="button" type="submit" /> </div> 
	      </form>
	    </div>
    </div>
    	If first time login please press <a class="button" href="adminlogin">create admin</a>
    
    </div>
    
  </body>
</html>
