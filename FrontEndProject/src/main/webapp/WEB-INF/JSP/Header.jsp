<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ page language="java"%>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
		
.container-fluid
{
	
  background-color:#232F3E;
  color:#ffffff;
  font-size:15px;
  font-color:#ffffff;
  
  }
  .navbar-brand
{
font-family: "Algerian";
font-size:22px;
}
  
   
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MobileWell</a>
    </div>
    <ui class="nav navbar-nav">
    <li><a href="aboutus">About Us</a></li>
      <li><a href="contactUs">Contact Us</a></li>
      <li><a href="product">Product</a></li>
    </ui>  
    </ul>
     <ul class="nav navbar-nav navbar-right">
     <c:if test="${empty SuccessMessage}">
     
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </c:if> 
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
 <c:if test="${not empty SuccessMessage}">
   <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
 </c:if>    
	</ul>
       
        </div>
</nav>
 </body>
</html>