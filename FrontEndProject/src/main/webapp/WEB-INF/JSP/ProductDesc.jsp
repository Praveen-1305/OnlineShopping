<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Description</title>
<style>
.text
{
text-align:center;
color:red;
}
</style>

</head>
<body>
<%@ include file="Header.jsp" %>
<form action="<c:url value="/MoveCart/${pro.productId}"/>" method="post" enctype="multipart/form-data">
<div class="container">
<div class="Show">

<tr>
 <td>
<img src ="<c:url value="/resources/images/${pro.productId}.jpg" />" width="500px" height="500px" />
</td>
</tr>
<div class=side >
<p style="font-size:25px;font-family:TimesNewRoman;font-style:italic;" >${pro.productName}</p>
<p style="font-size:23px;font-family:TimesNewRoman;font-weight:Regular;" >${pro.prodDesc}</p>
<p style="font-size:20px;font-family:TimesNewRoman;font-weight:Bold;" >&#8377; ${pro.price} &nbsp;&nbsp;
<button class="btn btn-success" style="font-size:14px"><i class="fa fa-shopping-cart">Add to Cart</i></button></p>
<div class=text>${alert}</div>
<%-- <p style="font-size:18px;font-family:Arial;font-color:Red;" >${pro.stock}</p>--%>
<br>
</div>
<br>

</div>
</div>
</form>

</body>
<%@include file="Footer.jsp"%>
</html>