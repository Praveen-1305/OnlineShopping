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

<title>UpdateSupplier</title>
</head>
<body>
<%@include file="Admin.jsp"%>
<h2 align="center">UpdateSupplier</h2>
<form action="<c:url value="/UpdateSupplier"/>" method="POST" >
<div class="container">
	<div class="row" style="padding-left:275px">
	<div class="col-sm-10 col-md-6 col-lg-4">
	<div class="box">
<table>
<tr>
        <td>SupplierID:</td>
        <td><input id="id" name="Id" value="${supplierInfo.supplierId}"/></td>
    </tr>
    
    <tr>
        <td>SupplierName:</td>
        <td><input id="Name" name="Name" value="${supplierInfo.supplierName}"/></td>
    </tr>
    <tr>
        <td>SupplierAddress:</td>
        <td><input id="Addr" name="Addr" value="${supplierInfo.supplierAddress}"/></td>
    </tr>
    <tr>
        </table><br>
		<center>
		<button type="submit" class="btn btn-success">Update</button>
		<button type="reset" class="btn btn-danger">Reset</button>
	  </center>
	  </div>
	</div>
</div>
</div><br>
 <table border=2 width=100%>
	   <tr>
		<th>Supplier ID</th>
		<th>Supplier Name</th>
		<th>Supplier Address</th>
		<th>Operation</th>
       </tr>
	<c:forEach items="${listSupplier}" var="sup">
		<tr>
			<td>${sup.supplierId}</td>
			<td>${sup.supplierName}</td>
			<td>${sup.supplierAddress}</td>
			<td><a href="<c:url value="/updateSupplier/${sup.supplierId}"/>">Update</a>/
				<a href="<c:url value="/deleteSupplier/${sup.supplierId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>

</table>
</form>
</body>
</html>