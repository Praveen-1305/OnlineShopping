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

<title>Cart</title>
</head>
<body>
<form action="<c:url value="/DispCart"/>" method="post" enctype="multipart/form-data">
	<div class="container">
	<div class="col-sm-10 col-md-6 col-lg-4">
	<div class="box">
	<h3>Shopping Cart</h3>
		<table class="table table-hover" width="100%">
<c:forEach items="${cartList}" var="cart">

 <%--<form action="<c:url value="/updateCart/${cart.cartId}"/>" method="post">--%>
 <tr> 
 <td><img src="<c:url value="/resources/images/${cart.productId}.jpg"/>" width="100" height="100"/></td>

 <td><input type="text" name="quantity" value="${cart.quantity}"/></td>

 <td>${cartItem.subtotal}</td>

 <td>
    <button type="submit"class="edit">
          <span class="glyphicon glyphicon-edit"></span>
    </button>
    <a href="<c:url value= "/deleteCartItem/${cart.cartId }"/>" >
           <span class="glyphicon glyphicon-trash"></span>
    </a>
 </td>

</tr>


</c:forEach>

<tr>
  
  <td colspan ="2">Grand Total</td>
  <td colspan= "2">${grandTotal}/-</td>

</tr>
</table>

<div class="button">
<tr>
<%--  <td colspan="4">--%><a href= "<c:url value="/Continue"/>" class="btn btn-success">ContinueShopping</a>
 
<%--  <td colspan="4">--%><a href= "<c:url value="/ConfirmOrder"/>" class="btn btn-danger">ConfirmOrder</a>
</tr>
</div>  
	
	</div>
	</div>	
	</div>
	</form>

</body>
</html>