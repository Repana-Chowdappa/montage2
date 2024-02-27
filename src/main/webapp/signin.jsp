<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String message = (String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css" >
	<link href="css/signin.css" rel="stylesheet">
    <link rel="icon" href="images/bank.ico">
	<title>Montage2 Signin Form</title>

</head>
 <body class="text-center">
 	<div class="container">
    <form class="form-signin" action="auth" method="post">
      <img class="mb-4" src="images/bank1.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <% if( message != null ) { %>
    	  <p style="color:red;"><%= message %></p>
      <% } %>
      <label for="inputId" class="sr-only">Login ID</label>
      <input type="text" id="inputId" name="inputId" class="form-control" placeholder="Login ID" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
     
    </form>
 	</div>
 	
 	
 	    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js" ></script>
	<script src="js/bootstrap.js" ></script>
 	
 	
  </body>
</html>