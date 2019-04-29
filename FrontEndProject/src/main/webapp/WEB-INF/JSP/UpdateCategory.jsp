<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateCategory</title>
</head>
<body>
<h3 align="center">UpdateCategory</h3>
<form action="<c:url value="/UpdateCategory"/>" method="POST" >
<table>
<tr>
        <td>CategoryID:</td>
        <td><input id="id" name="Id" value="${categoryInfo.categoryId}"/></td>
    </tr>
    
    <tr>
        <td>CategoryName:</td>
        <td><input id="Name" name="Name" value="${categoryInfo.categoryName}"/></td>
    </tr>
    <tr>
        <td>CategoryDesc:</td>
        <td><input id="Desc" name="Desc" value="${categoryInfo.categoryDesc}"/></td>
    </tr>
    <tr>
        <td colspan="2">
        <input type="Submit" value="Update">
        <input type="submit" value="Reset"></td>
    </tr>
   </table>
   <table border=2>
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

</table></form>
</body>
</html>