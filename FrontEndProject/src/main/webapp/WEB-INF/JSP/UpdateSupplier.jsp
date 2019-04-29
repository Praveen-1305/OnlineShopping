<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateSupplier</title>
</head>
<body>
<h3 align="center">UpdateSupplier</h3>
<form action="<c:url value="/UpdateSupplier"/>" method="POST" >
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
        <td colspan="2">
        <input type="Submit" value="Update">
        <input type="submit" value="Reset"></td>
    </tr>
   </table>
  <table border=2>
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