<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>Category</title>
</head>
<body>
<%@include file="Admin.jsp"%>

<form action="<c:url value="/InsertCategory"/>" method="POST" >
<div class="container">
	<div class="row" style="padding-left:275px">
	
	<div class="box">
	
<table>
   <tr><td></td>
		<td><h3 align="center">Category Page</h3></td>
		</tr>
    <tr>
        <td>CategoryName:</td>
        <td><input class="form-control" id="Name" name="Name"/></td>
    </tr>
    <tr>
        <td>CategoryDesc:</td>
        <td><input class="form-control" id="Desc" name="Desc"/></td>
    </tr>
    <tr><td></td>
	<td>	
		<button type="submit" class="btn btn-success">Add</button>
		<button type="reset" class="btn btn-danger">Reset</button>
		</td>
	</tr>
	  </table>  </div>
	</div>

</div><br>
 <table border=2 width=100%>
	   <tr>
		<th>Category ID</th>
		<th>Category Name</th>
		<th>Category Desc</th>
		<th>Operation</th>
       </tr>
	<c:forEach items="${listcategories}" var="cat">
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