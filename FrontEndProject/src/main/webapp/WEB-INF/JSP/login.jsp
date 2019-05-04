<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signin</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<style>
.container
{
width: 360px;
padding: 10% 0 0;
margin:auto;
background-color:grey;
border:1px solid black;
}

</style>

</head>
<body>


<form action="<c:url value="/perform_login"/>" method="post">

<div class="container">
    <div class="login">
    
    <h1 align="center">Account login</h1>
    
<div class="text-center">
<input type="text" name="username" placeholder="Enter your username" required="required"/>
</div>
<div class="text-center">
<input type="password" name="password" placeholder="Enter your password" required="required" >
</div>
<div class="text-center">          
<input type="submit" value="Sign me in!" class="inputButton"/>
</div>       
<div class="text-center">
<a href="<c:url value="/signup" />" id="Account">create an account</a>
</div>
    
</div>
</div>
</form>
</body> 
 </html>
 
 