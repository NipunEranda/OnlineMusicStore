<%@page import="sun.security.provider.certpath.ResponderId"%>
<%@page import="com.sun.corba.se.spi.activation.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/mainStyles.css">
<script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a href="homePage.jsp" class="topnav_left">
			<table>
				<tr>
					<td><img src="images/icons/ico.jpg"
						style="width: 50px; height: 50px;"></td>
					<td>MuZy</td>
				</tr>
			</table>
		</a> <a href="#news" id="tab">News</a> <a href="#contact" id="tab">Contact</a>
		<a href="#about" id="tab">About</a>
		<%
			if (session.getAttribute("isAdmin") == null && session.getAttribute("name") == null) {
			} else if ((int) session.getAttribute("isAdmin") == 1) {
		%><a
			href="admin/adminHome.jsp" class="admin" id="tab">Admin Dash</a>
		<%
			}
		%><a href="register.jsp" class="register" id="tab">Sign Up</a> <a
			href="login.jsp" class="login" id="tab">Sign In</a><a
			href="components/logout.jsp" class="logout" id="tab">logout</a><a
			href="javascript:void(0);" style="font-size: 50px;" class="icon"
			onclick="myFunction()">&#9776;</a>
	</div>
</body>
</html>