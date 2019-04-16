<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Store</title>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/homePage.css">
<style>
.topnav .login {
	display: none;
}

.topnav .register {
	display: none;
}

.topnav.responsive .logout {
	display: block;
}
</style>
</head>
<body>

	<%@ include file="../components/loginCheck.jsp"%>
	<%@ include file="../components/header.jsp"%>
	<div id="mainContainer">
		You're logged in successfully "<%=session.getAttribute("name")%>"
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>