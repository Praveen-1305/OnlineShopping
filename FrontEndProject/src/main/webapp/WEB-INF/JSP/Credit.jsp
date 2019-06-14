<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Credit</title>

<style>
.row {
  display: -ms-flexbox; 
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
  margin: 0 -16px;
}


.col-50 {
  -ms-flex: 50%; 
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; 
  flex: 75%;
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;


</style>




</head>
<body>



<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="<c:url value="/CreditConfirm"/>" method="post">

       
                 <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" maxlength="20" pattern="[A-Za-z]+"  placeholder="Bharath">
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" name="cardnumber" pattern="[0-9]{16}" title="Enter Only Sixteen Numbers" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" maxlength="20" pattern="[A-Za-z]+" placeholder="September">
            <label for="expyear">Exp Year</label>
            <input type="text" id="expyear" name="expyear" pattern="[0-9]{4}" title="Enter Only Four Numbers" placeholder="2019">
            <label for="cvv">CVV</label>
            <input type="text" id="cvv" name="cvv" pattern="[0-9]{3}" title="Enter Only Three Numbers" placeholder="352">
        
        <center><button type="submit" class="btn btn-success">Continue to Checkout</button></center>
              </div>
            </div>
          </div>
	
		

	      </form>
    </div>
  </div>
</div>

</body>
</html>