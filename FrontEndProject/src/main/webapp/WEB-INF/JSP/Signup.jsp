<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/AddSignup"/>" method="post">

<h1>Create an account</h1>
Username:<input name="username" type="text">
Password:<input name="userpassword" type="password">
Mobile:<input name="usermobile" type="text">
Email:<input name="useremail" type="text">
<input type="submit" value="Sign me up!" />

</form>
</body>
</html>