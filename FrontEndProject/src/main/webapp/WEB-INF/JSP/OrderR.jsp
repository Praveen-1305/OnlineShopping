<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>YourOrder</title>

</head>
<body>
<%@include file="Header.jsp"%>


<!--  <table align="center" class="table">-->

<div class="container-fluid">
	   <table class="table table-bordered">
  <h4><center>OrderDetails</center></h4>


<tr>
  <td>Products</td>
  <td>ProductName</td>
  <td>Quantity</td>
  <td>Sub total</td>
</tr>

<c:forEach items="${cartList}" var="cartItem">
 
 <tr> 
 <td><img src="<c:url value="/resources/images/${cartItem.productId}.jpg"/>" width="100" height="100"/></td>
 <td>${cartItem.productName }</td>
 <td>${cartItem.quantity }</td>
 <td>&#8377; ${cartItem.total}</td>
 </tr>
 </c:forEach>

<tr>
  
  <td colspan="2">Grand Total</td>
  <td colspan="2">&#8377; ${grandtotal}/-</td>

</tr>
</table>

<form name=form action="<c:url value="/PaymentConfirm"/>" method="get">

  <tr>
    <td>Confirmation Mode:</td>
    <td><br>
    <%--   ${Paymentmethod}  --%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" name="radios" value="card" required/>Credit/Debit<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" name="radios" value="online" required />Net Banking<br>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" name="radios" value="cash" required/>Cash On Delivery     
        
     
    </td>
  </tr><br>
<tr>
    <td>Shipping Address:</td> 
    <td><textarea name="ShippingAdress" title="You need to fill for delivery" style="width:35%;color:black;" required></textarea></td>
    </tr><br>  
</table>  
 
  <div align="center">
    <button type="submit"class="btn btn-success" >PROCEED TO PAY</button>
    
  </div>
  
   </form>
   

</div>

<br><br><br>
<%@include file="Footer.jsp" %>


</body>
</html>