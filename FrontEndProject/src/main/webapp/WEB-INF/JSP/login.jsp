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
</head>
<body>
<div class="col-md-6">
   
 <div id="logbox">
   
   <form id="login" method="post" action="<c:url value="/perform_login"/>">
    
    <h1>Account login</h1>
        
<%-- <input name="user[email]" type="email" placeholder="enter your email" class="input pass"/>--%>

      <input name="username" type="text" placeholder="enter your username" required="required" class="input pass"/>
      <input name="password" type="password" placeholder="enter your password" required="required" class="input pass"/>
      
  <input type="submit" value="Sign me in!" class="inputButton"/>
       
 <div class="text-center"">
                 
 <a href="<c:url value="/signup" />" id="Account">create an account</a>
</form>

    </div>
    
</div>
 
 </div>