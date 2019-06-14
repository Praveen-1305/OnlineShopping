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

<title>UpdateCategory</title>
</head>
<body>
<%@include file="Admin.jsp"%>
<h2 align="center">UpdateCategory</h2>
<form action="<c:url value="/UpdateCategory"/>" method="POST" >
<div class="container">
	<div class="row" style="padding-left:275px">
	
	<div class="box">

<table>
<tr><td></td>
		<td><h3 align="center">Update Category</h3></td>
		</tr>
    
<tr>
        <td>CategoryID:</td>
        <td><input id="id" class="form-control" name="Id" value="${categoryInfo.categoryId}" readonly/></td>
    </tr>
    
    <tr>
        <td>CategoryName:</td>
        <td><input id="Name" class="form-control" name="Name" value="${categoryInfo.categoryName}" /></td>
    </tr>
    <tr>
        <td>CategoryDesc:</td>
        <td><input id="Desc" class="form-control" name="Desc" value="${categoryInfo.categoryDesc}"/></td>
    </tr>
    <tr><td></td>
	<td>	
		<button type="submit" class="btn btn-success">Update</button>
		<button type="reset" class="btn btn-danger">Reset</button>
		</td>
	</tr>
	  </table>  </div>
	</div>
</div>
<br>
 <table border=2 width=100%>	  
  <tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
       </tr>
	<c:forEach items="${listCategories}" var="cat">
		<tr>
			<td>${cat.categoryId}</td>
			<td>${cat.categoryName}</td>
			<td>${cat.categoryDesc}</td>
			<td><a href="<c:url value="/updateCategory/${cat.categoryId}"/>">Update</a>/
				<a href="<c:url value="/deleteCategory/${cat.categoryId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>

</table>
</form>
</body>
</html>