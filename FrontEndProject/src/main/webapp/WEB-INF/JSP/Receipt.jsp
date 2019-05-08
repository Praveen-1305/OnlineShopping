<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
</head>
<body>

<%@include file="Header.jsp"%>
<div class="container">
   <table class="table table-bordered">
  <h3><center>MOBILEWELL</center></h3>
  <h4><center>RECEIPT</center></h4>

      <tr>
		<th>ProductName</th>
		<th>Quantity</th>
		<th>Price</th>
       </tr>   
      
      <c:forEach items="${cartList}" var="cartItem">
      <tr>
         <td>${cartItem.productName }</td>       
         <td>${cartItem.quantity }</td>
        <td>&#8377; ${cartItem.total}</td>  
      </tr>
      </c:forEach>
      
    <tr>
      <td colspan="2">Grand Total</td>
      <td colspan="2">&#8377; ${grandtotal}/-</td>
    </tr>
    
    <c:forEach items="${listorder}" var="orderDetail">
   <tr>
    <td>${orderDetail.username }</td>
    <td>Shipping Address: ${orderDetail.shippingAddr}</td>  
      </tr>
      </c:forEach>
      </table>
      </div>
</body>
</html>