<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin-top:10px;
  text-align: center;
  font-family: arial;
  font-size: 18px;
}
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<form action="<c:url value="/DisplayProduct"/>" method="post" enctype="multipart/form-data">
<div class="container">



<c:forEach items="${listPro}" var="pro">
<div class="col-lg-3">
<div class="card">
<c:choose>

<c:when test="${pro.stock>0}">
<a href="<c:url value="/DescProduct/${pro.productId}"/>"><img src ="<c:url value="/resources/images/${pro.productId}.jpg"/>" style="width:150px; height:170px;"/></a><br>
Name:${pro.productName}<br>
Price:INR ${pro.price}<br>
Stock:${pro.stock}
</c:when>

<c:otherwise>
<img src ="<c:url value="/resources/images/${pro.productId}.jpg" />"  style="width:150px; height:170px;" /><br>
Name:${pro.productName}<br>
Price:INR ${pro.price}<br>
<font color="Red">Out of Stock</font>
</c:otherwise>

</c:choose>
</div>
</div>
</c:forEach>

</div>


</form>
<%@ include file="Footer.jsp" %>
</body>
</html>