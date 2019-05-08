<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstarp.min.js"></script>
<title>Cart</title>
</head>
<body>
<%@ include file="Header.jsp"%>

<div class="container">
<div style="background-color:blue; color:white;font-size:25px;">
Shopping Cart
</div>
<table class="table table-striped" style="border-width:3px;border-color:black;">

<c:forEach items="${listCarts}" var="cart">
<tr>
<form method="post" action="<c:url value="/updatecart/${cart.cartId}"/>">
<td><img src="<c:url value="/resources/images/${cart.productId}.jpg"/>" width="75px" height="75px"><br>
<c:if test="${Cart.cartId==cart.cartId}">
${alert}
</c:if>
</td>
<td>${cart.productName}</td>
<td>&#8377; ${cart.total}</td>

<%--<td><select name="quantity">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    </select>
  </td>--%>
 
 <td><input name="quantity" id="sel" value="${cart.quantity}"></td>
<td><button type="submit"class="btn btn-success">Check Price</button></td>
</form>
<td><a href="<c:url value="/deletecart/${cart.cartId}"/>"><button type="submit"class="btn btn-danger">Delete</button></a></td>

</tr>
</c:forEach>
<tr>
<td>GrandTotal<td>
<td>&#8377; ${grandtotal}</td>
<td></td>
</tr>
<tr>
<td><a href="<c:url value="/Dproduct"/>"><button type="submit"class="btn btn-success">Continue Shopping</button></a></td>
<td></td>
<td></td>
<td></td>
<td><a href="<c:url value="/confirm"/>"><button type="submit"class="btn btn-danger">Confirm Order</button></a></td>
</table>


</div>
<%@ include file="Footer.jsp"%>
</body>
</html>