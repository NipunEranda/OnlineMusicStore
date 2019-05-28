<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/register.css">
<meta charset="UTF-8">
<title>Register</title>
<style>
.topnav .register {
	display: none;
}
</style>
</head>
<body>
	<%@ include file="../components/header.jsp"%>
	<div id="mainContainer">
		<div id="reg-page">
			<h2>Register with MuZy</h2>
			<form action="RegisterController" method="Post" name="register">

				<label><i>User name</i><br/></label>
					<input type="text" required="required" id="username" name="username"><br/> 
				<label><i>First name</i></label>
					<br /> <input type="text" required="required" name="firstName"> <br/> 
				<label><i>Last name</i></label>
					<br /> <input type="text" required="required"  name="lastName"><br/> 
				<label><i>Email address</i></label>
						<br/> <input type="email" name="email"required="required"><br/> 
				<label><i>Password</i></label>
					<br /> <input type="password" name="password" required="required"><br/>
				<br/><br/> 
				<label><i>Contact No</i></label>
					<br/> <input type="text" name="phone" required="required"><br/> <br/> 
				<label><i>Address</i></label>
					<br/><input type="text" name="address" required="required"><br/> 
				<label><i>Postal code</i></label> 
					<br/><input type="text" name="postalCode" required="required"><br/>

			<div class="btnSet">
			<br/><br/>	
			<div class="submitButton"onclick="if(confirm('Your account has been created successfully')){document.forms['register'].submit()}">
			Create my account
		</div>	
	</div>	
		</form>
		<br/><br/><br/>
			<p>
				Already member? <a href="login.jsp">Sign in</a>
			</p>


		</div>
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>