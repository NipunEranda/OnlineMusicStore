<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/login.css">
<meta charset="UTF-8">
<title>Login</title>
<style>
.topnav .login {
	display: none;
}
</style>
</head>
<body>
	<%@ include file="components/header.jsp"%>
	<div id="mainContainer">
		<div id="login">
			<center>
				<h1>LOGIN</h1>
			</center>
			<br />
			<form action="LoginController" method="post">
				<center>
					<input type="text" name="email"
						placeholder="email address or Username" /><br /> <br />
					<input type="password" name="password" placeholder="password" />
				</center>
				<br /> <br /><input type="checkbox" name="remember" checked>Remember
				Me <input type="submit" name="submit" value="Login" class="loginbtn">
				<br /> <br />
				<hr />
				<br />
				<center>Don't have an account?</center>
				<br /> <br /> <a href="register.jsp"><div class="divBtn">Sign
						Up for MuZy</div></a>
			</form>
		</div>
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>