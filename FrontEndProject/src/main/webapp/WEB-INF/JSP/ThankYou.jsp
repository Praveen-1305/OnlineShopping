<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<title>See You again</title>
<style>
.style
{
   text-align: center;
   position: relative;
   top: 20%;
}
</style>
</head>
<body>
<%@include file="Header.jsp"%>
<div class="container">
   <div class="style">
   <span style='font-size:100px;'>&#9989;</span>
   <h2>Thank you!!</h2>
   <h3>Your Mobile is on the way!!</h3>
   <h4></h4>
   <h5><i class="fa fa-mail-forward"><a href="<c:url value="/click"/>">Click Here</a></i></h5>
   </div>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>