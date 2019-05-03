<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<title>ProductInsertion</title>	
</head>
<body>
<%@include file="Admin.jsp"%>

<h3 align="center">UpdateProduct</h3>
<form action="<c:url value="/UpdateProductDB"/>" method="post" enctype="multipart/form-data">
	<div class="container">
	<div class="row" style="padding-left:210px">
	<div class="col-sm-10 col-md-6 col-lg-4">
	<div class="box">
		<table>
		<tr>
		<td>Select Category: </td>
		<td>
		<select class="form-control" name="categoryId" Required>
		<c:forEach items="${listCategories}" var="cat">
       <option value="${cat.categoryId}">${cat.categoryName}</option>
       </c:forEach>
       </select>
		</td>
		</tr>
		<tr>
		<td>Select Supplier: </td>
		<td>
		<Select class="form-control" name="supplierId" Required>
		<c:forEach items="${listSupplier}" var="sup">
      <option value="${sup.supplierId}">${sup.supplierName}</option>
      </c:forEach>
      </select>
		</td>
		</tr>
		<tr>
        <td>Product ID:</td>
        <td><input type="text" class="form-control" name="productId" value="${productInfo.productId}" Required/></td>
		</tr>
		<tr>
        <td>Product Name:</td>
        <td><input type="text" class="form-control" name="proname" value="${productInfo.productName}" Required/></td>
		</tr>
		<tr>
		<td>Product Description:</td> 
		<td><input type="text" class="form-control" name="prodesc" value="${productInfo.prodDesc}" Required/>
		</td>
		</tr>
		<tr>
		<td>Product Stock: </td>
		<td><input type="text" class="form-control" name="prostock" value="${productInfo.stock}" Required/></td>
		</tr>
		<tr>
		<td>Product Price:</td> 
		<td><input type="text" class="form-control" name="proprice" value="${productInfo.price}" Required/></td>
		</tr>
								
		<tr>
		<td>Product Image:</td>
		<td><input type="file"  accept="/resources/images/*" name="pImage" enctype="multipart/form-data"/>
		</td>
		</tr>
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
	  <center> <tr>
		<th>Product ID</th>
		<th>Product Name</th>
		<th>Category ID</th>
		<th>Supplier ID</th>
		<th>Price</th>
		<th>Stock</th>
		<th>Image</th>
		<th>Description</th>
		<th>Operation</th>
       </tr>
	<c:forEach items="${listPro}" var="pro">
		<tr>
			<td>${pro.productId}</td>
			<td>${pro.productName}</td>
			<td>${pro.categoryId}</td>
			<td>${pro.supplierId}</td>
			<td>${pro.price}</td>
			<td>${pro.stock}</td>
			<td><center><img src ="<c:url value="/resources/images/${pro.productId}.jpg" />" width="80" height="70" /></center></td>
			<td>${pro.prodDesc}</td>
			<td><a href="<c:url value="/updateProduct/${pro.productId}"/>">Update</a>/
				<a href="<c:url value="/deleteProduct/${pro.productId}"/>">Delete</a>
			</td>
		</tr></center>
	</c:forEach>
	</table>
	</form>
</body>
</html>