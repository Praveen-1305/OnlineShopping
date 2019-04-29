<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
</head>
<body>
<h3 align="center">Supplier Page</h3>
<form action="InsertSupplier" method="POST" >
<table>
    <tr>
        <td>SupplierName:</td>
        <td><input id="Name" name="Name"/></td>
    </tr>
    <tr>
        <td>SupplierAddress:</td>
        <td><input id="Addr" name="Addr"/></td>
    </tr>
    <tr>
        <td colspan="2">
        <input type="Submit" value="Add"></td>
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