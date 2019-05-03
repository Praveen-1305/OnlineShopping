<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
<%@ include file="Home_1.jsp" %>
<form action="<c:url value="/DisplayProduct"/>" method="post" enctype="multipart/form-data">
<div class="container">
<div class="firstRow">
<table>
<tr>

<c:forEach items="${listPro}" var="pro">
<td>
<c:choose>

<c:when test="${pro.stock>0}">
<a href="<c:url value="/DescProduct/${pro.productId}"/>"><img src ="<c:url value="/resources/images/${pro.productId}.jpg"/>"class="img-thumbnail" style="width:150px; height:170px;"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<br>
Name:${pro.productName}<br>
Price:INR ${pro.price}<br>
Stock:${pro.stock}<br>
</c:when>

<c:otherwise>
<img src ="<c:url value="/resources/images/${pro.productId}.jpg" />" class="img-thumbnail" style="width:150px; height:170px;" /><br>
<font color="Red">Out of Stock</font><br><br><br>
</c:otherwise>

</c:choose>
</td>
</c:forEach>

</tr>
</table>
</div>
</div>
</form>
</body>
</html>