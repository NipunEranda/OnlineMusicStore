<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Store</title>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/bgslider.css">
</head>
</head>
<body>
	<div id="mainContainer">
		<ul class="cb-slideshow">
			<li><span>Image 01</span></li>
			<li><span>Image 02</span></li>
			<li><span>Image 03</span></li>
			<li><span>Image 04</span></li>
			<li><span>Image 05</span></li>
			<li><span>Image 06</span></li>
		</ul>

		<div class="welcome">
			<div>
				<h1>Music For Everyone</h1>
				<br />
				<h5>
					MuZy gives you instant access to millions of Albums from old
					favorites to the latest hits.<br /> Just browse and purchase your
					desired Music Albums.
				</h5>
			</div>
			<br />
			<div class="btnset">
				<div class="logbtn" onclick="location.href='login.jsp'">Login</div>
				<div class="regbtn" onclick="location.href='register.jsp'">Register</div>
			</div>
		</div>

	</div>
	<div class="footer">
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>