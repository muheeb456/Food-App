<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>User Login</title>
    <style>
  		@import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:opsz@6..12&display=swap');
	</style>
    <style>
    	*{
    		margin: 0;
    		padding: 0;  		
    	}
    	.form, .inputs, nav,main,body, nav a{
    		display: flex;
    		justify-content: center;
    		align-items: center;
    	}
    	nav{
    		padding: 0 25px;
    		width: 100%;
    		height: 7vh;
    		background-color: #11235A;
    		position: fixed;
    		top: 0;
    		justify-content: flex-start;
    	}
    	
    	h1{
    		color: #392467;
    		font-size: 2em;
    		font-family: 'Nunito Sans', sans-serif;
    	}
    	body{
    		width: 100vw;
	    	height: 100vh;
    		background-color: #3887BE;
    	}
    	
    	body, .form, .inputs{
    		flex-direction: column;
    	}
    	
    	.form{
    		font-family: 'Nunito Sans', sans-serif;
    		min-width: 280px;
    		width: 30vw;
    		height: 80vh;
    		justify-content: space-around;
    		background-color: #ffff;
    		box-shadow: black 0 0 5px;
    		border-radius: 5px;
    	}
    	
    	nav a{
    		padding: 4px 6px;
    		margin: 0 10px;
    		border-radius: 3px;
    		background-color: #3559E0;
    		text-decoration: none;
    		color: white;
    		font-family: sans-serif;
    		align-items: center;
    		gap: 5px;
    	}
    	
    	.inputs{
    		width: 80%;
    		height: 50%;
    		justify-content: space-around;
    	}
    	
    	
    	.inputs input{
    		width: 85%;
    		padding: 8px;
    		border: none;
    		background-color: #dfe4f2;
    		border-radius: 5px;
    	}
    	
    	.inputs input[type=submit]{
    		width: 50%;
    	}
    	
    	.inputs input[type=submit]:hover {
			background-color: #ecf0fa;
			cursor: pointer;
		}
    </style>
  </head>
  <body>
  <nav>
  	<a href="adminloginform.jsp"><svg xmlns="http://www.w3.org/2000/svg" height="22" width="22" viewBox="0 0 512 512"><path d="M512 256A256 256 0 1 0 0 256a256 256 0 1 0 512 0zM231 127c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9l-71 71L376 232c13.3 0 24 10.7 24 24s-10.7 24-24 24l-182.1 0 71 71c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L119 273c-9.4-9.4-9.4-24.6 0-33.9L231 127z"/>
  	</svg> Admin Login</a>
  </nav>
  <main>
      <form action="validateuser" class="form">
	   	<h1 align="center">Login in</h1>
	        <div class="inputs">
		        <input type="email" name="email" placeholder="Email"/> 
		        <input type="password" name="password" placeholder="Password"/>
		    		<span>${msg}</span>
		        <input type="submit" />
	        </div>
	        <div>
	        	<span>Don't have account?</span>
	        	<a href="adduser">create account</a>
	        </div>
        
      </form>
  </main>
    
  </body>
</html>
