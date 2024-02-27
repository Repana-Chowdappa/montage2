<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ibm.icp.coc.User"  %>
<%
	String fname = request.getParameter("fname");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css" >
	<link rel="stylesheet" href="css/reject.css" >
    <link rel="icon" href="images/bank.ico">
	<title>Montage2 Loan Application Success</title>
</head>
<body >
<div class="container" role="main">
    
  <div class="center-div">
    <h1 style="text-align: center; color: white;">Sorry <%= fname %>.<br/>
    Your loan application has been rejected.</h1>
    
    <p style="text-align: center">
      <a href="/" class="btn btn-lg btn-secondary">Logout</a>
    </p>
    
    
  </div>
  
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js" ></script>
	<script src="js/bootstrap.js" ></script>

</body>
</html>