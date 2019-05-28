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
				<div class="loginTop">
					<label><b>Sign in</b></label>
				</div>
			</center>
			<div class="loginForm">
				<center>
					<div style="width: 80%;">
						<form action="LoginController" method="post" name="login">
							<center>
								<input type="text" name="email"
									placeholder="email address or Username" required="required" /><br /> <br /> <input
									type="password" name="password" placeholder="password" required="required"/>
							</center>
							<br />
							<%
								if (request.getParameter("login") != null) {
									if (request.getParameter("login").equals("fail")) {
							%>
							<center>
								<div class="errorMessage">Login Failed</div>
								<br/>
							</center>
							<%
								}
								}
							%>

							<div class="loginbtn"
								onclick="document.forms['login'].submit();">Login</div>
							<br /> <br /> <br /> <br />
							<hr />
							<br />
							<center>Don't have an account?</center>
							<br /> <br /> <a href="register.jsp"><div class="divBtn">Sign
									Up for MuZy</div></a>
						</form>
					</div>
				</center>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>