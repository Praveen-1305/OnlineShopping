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
<title>OnlineBanking</title>

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
      <form action="<c:url value="/OnlineConfirm"/>" method="post">

       
                 <div class="col-50">
            <h3>Online Banking</h3>
            <label for="cname">Bank Name</label>
            <input type="text" id="Bname" name="Bname" maxlength="20" pattern="[A-Za-z]+"  placeholder="State Bank of India">
            <label for="cname">Account Holder</label>
            <input type="text" id="Aname" name="Aname" maxlength="20" pattern="[A-Za-z]+"  placeholder="Bharath">
            <label for="ccnum">Account number</label>
            <input type="text" id="ccnum" name="Anumber" pattern="[0-9]{12}" title="Enter Only twelve Numbers" placeholder="111-222-3333-4444">
            <label for="expyear">IFSC Code</label>
            <input type="text" id="Ifsc" name="Ifsc" pattern="[0-9]{9}" title="Enter Only Four Numbers" placeholder="123-456-789">
            <label for="adr"><i class="fa fa-address-card-o"></i> Branch</label>
            <input type="text" id="Branch" name="Branch"  placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">
            <label for="state">State</label>
            <input type="text" id="state" name="state" placeholder="NY">
            <label for="zip">Zip</label>
            <input type="text" id="zip" name="zip" placeholder="10001">
                  
              <center><button type="submit" class="btn btn-success">Continue to Checkout</button></center>
              </div>
               </form>     
	      
    </div>
  </div>
</div>

</body>
</html>