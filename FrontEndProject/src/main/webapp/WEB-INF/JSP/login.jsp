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
max-width:360px;
background-color:lightgrey;
margin-top:6%;
margin-left:50%;
border:1px solid black";
}
input[type=text], input[type=password] {
  width: 300px;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: black;
  border-radius: 25px;
}
input[type=text]:focus, input[type=password]:focus {
  background-color:white;
  outline: none;
}
.signin {
  background-color: #2196f3;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  align: center;
  opacity: 0.9;
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
<p>          
<input type="submit" value="Sign me in!" class="signin"/>
</p>       
<div class="text-center">
<p><a href="<c:url value="/signup" />" id="Account">Create an Account</a></p>
</div>
    
</div>
</div>
</form>
</body> 
 </html>
 
 