<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.body
{ 
   height:100%; 
   width:100%;
   background-image:url("resources/images/Admin.jpg");
   background-repeat: no-repeat;
   background-size: 100%;
}

</style>

</head>
<body>
<div class="background">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MobileWell</a>
    </div>
    <ul class="nav navbar-nav">
      <%--<li class="active"></li>
      <li><a href="<c:url value="#"/>">Home</a></li>--%>
      <li><a href="<c:url value="/Category"/>">ManageCategory</a></li>
      <li><a href="<c:url value="/Iproduct"/>">ManageProduct</a></li>
      <li><a href="<c:url value="/Supplier"/>">ManageSupplier</a></li>
      <%--<li><a href="Dproduct">Product</a></li> --%>    
    </ul>
     <ul class="nav navbar-nav navbar-right">
      
      <li>Welcome ${nameuser}
      <br><a href="<c:url value="/perform_logout" />"><span class="glyphicon glyphicon-log-in"></span> Sign out</a>
      </li>
    </ul>
    
  </div>
</nav>
</div>
</body>
</html>