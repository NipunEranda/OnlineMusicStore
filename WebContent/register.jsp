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
</head>;;
<body>
	<%@ include file="components/header.jsp"%>
	<div id="mainContainer">
		<div id="reg-page">
		<center>
			<form action="" class = "reg-form">
				<input type="text" name="fName" placeholder="Enter your First Name" />
			</form>
			</center>
		</div>
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>