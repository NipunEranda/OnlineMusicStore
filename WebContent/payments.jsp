<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/payments.css">
<meta charset="UTF-8">
<title>Payments</title>
</head>
<body>
<%@ include file="../components/header.jsp"%>
	<div id="mainContainer">
		<div id="pay-page">
			<h2>Enter the payment details</h2>
			<form action="PaymentController?uId=<%=session.getAttribute("id")%>" method="Post" name="payments">
         
			<label><i>Card No</i></label><br/>
				<input type="text" required="required"  id ="cardNo" name="cardNo"><br/>
			<label><i>First name</i></label><br/>
            	<input type="text" required="required" name="firstName"><br/>
            <label><i>Last name</i></label><br/>
            	<input type="text" required="required"  name="lastName"><br/>
             <label><i>Address</i></label><br/>	        
            	<input type="text" name="address" required="required"><br/>
             <label><i>Postal code</i></label><br/>
            	<input type="text" name="postalCode" required="required"><br/>
			 <label><i>Contact No</i></label><br/>
            	<input type="text" name="phone" required="required"><br/>	
            	<br/>
           <div class="btnSet">
			<br/><br/>	
			<div class="submitButton"onclick="if(confirm('Payment is complete')){document.forms['payments'].submit()}">Buy now
       		</div>
       	</div>	
      	 </form>
       </div>
      </div> 
  <div>
	<%@ include file="components/footer.jsp"%>
	</div>     
</body>
</html>