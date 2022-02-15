<%-- 
    Document   : Login
    Created on : Feb 13, 2022, 11:46:24 PM
    Author     : Thuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/CtyleLogin.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
  	<div class="login">
		<h2>Member login</h2>
		<br>
		<p>Email address</p>
		<input class="user" type="text" placeholder="Enter email">
		<br>
		<p>Password</p>
		<input class="pass" type="password" placeholder="Enter password">
		<br>
		<div class="check">
			<input class="checkbox" type="checkbox" placeholder="Enter password"> Remember me
		</div>
		<br>
                <button>Login</button> <button class="Singin"> Singin</button>
		<br>
		<a href="#">forgot password ?</a>

	</div>
    </body>
</html>
