<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>Home</title>
</head>
<body style="background-color:black">
<%@include file="Header.jsp"%>

<div>
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>
  Mobile for slides
  <div class="carousel-inner" >
    <div class="item active" >
      <img src="<c:url value="/resources/images/Iphone.jpg"/>" alt="HTML" style=" width:100%; height:90%">
    </div>

    <div class="item" >
      <img src="<c:url value="/resources/images/Nokia.jpg"/>" alt="CSS" style=" width:100%; height:90%">
    </div>

    <div class="item" >
      <img src="<c:url value="/resources/images/Samsung.jpg"/>" alt="JS" style=" width:100%; height:90%">
    </div>
  
    <div class="item" >
      <img src="<c:url value="/resources/images/HTC.jpg"/>" alt="JS" style=" width:100%; height:90%">
    </div>

     <div class="item" >
      <img src="<c:url value="/resources/images/BB.jpg"/>" alt="JS" style=" width:100%; height:90%">
    </div>
  </div>

<a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

</div>

<%@ include file="Footer.jsp" %>
</body>
</html>