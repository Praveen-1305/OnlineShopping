<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
<body >



<form action="<c:url value="/AddSignup"/>" method="post">
<div class="container">
<div class="login">
        
<h1 align="center">Create an Account</h1>
<div class="text-center">
<input type="text" name="username" placeholder="What's your username?"  maxlength="20" pattern="[A-Za-z]+" required="required"/>
</div>
<div class="text-center">
<input type="password" name="userpassword" placeholder="Choose a password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="required" >
</div>
<div class="text-center">
<input type="text" name="usermobile" placeholder="MobileNo" pattern="[0-9]{10}" required="required">
</div>
<div class="text-center">
<input type="text" name="useremail" placeholder="Email" pattern="[a-z0-9._%+-][$#&*]+@[a-z]+.[a-z]{2,}+" required="required">
</div>
<div class="text-center">
<input type="submit" value="Sign me up!" />
</div>

<div class="text-center">
already have an account? <a href="<c:url value="/login"/>" id="signin_id">Signin</a>
</div>
</div>

</div>
</form>
</body>
</html>