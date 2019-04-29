<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
   
   <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body>
<h3 align="center">Category Page</h3>
<form action="InsertCategory" method="POST" >
<table>
<!-- <tr>
        <td>CategoryID:</td>
        <td><input id="Name" name="Id"/></td>
    </tr>
 -->    
    <tr>
        <td>CategoryName:</td>
        <td><input id="Name" name="Name"/></td>
    </tr>
    <tr>
        <td>CategoryDesc:</td>
        <td><input id="Desc" name="Desc"/></td>
    </tr>
    <tr>
        <td colspan="2">
        <input type="Submit" value="Add"></td>
    </tr>
   </table>
   
 <table border=2>
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