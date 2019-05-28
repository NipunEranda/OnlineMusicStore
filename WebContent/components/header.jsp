<%@page import="sun.security.provider.certpath.ResponderId"%>
<%@page import="com.sun.corba.se.spi.activation.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../css/mainStyles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mainStyles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body>

	<%
		if (session.getAttribute("userType") != null) {
			if ((int) session.getAttribute("userType") == 1) {
	%>
	<style>
.topnav {
	background-color: black;
}
</style>
	<%
		}
		} else {

		}
	%>

	<%@ include file="../components/loginCheck.jsp"%>

	<div class="topnav" id="myTopnav">
		<a
			href="
		<% if(session.getAttribute("name") == null){
			%>
		${pageContext.request.contextPath}/index.jsp
		<%	
		}else{ %>
		${pageContext.request.contextPath}/homePage.jsp
		<% } %>
		"
			class="topnav_left">
			<table>
				<tr>
					<td><img
						src="${pageContext.request.contextPath}/images/icons/ico.jpg"
						style="width: 50px; height: 50px;"></td>
					<td>MuZy</td>
				</tr>
			</table>
		</a>
		<%
			if (!(session.getAttribute("name") == null)
					&& !(currentURI.equalsIgnoreCase("/OnlineMusicStore/homePage.jsp"))
					&& (int) session.getAttribute("userType") == 1) {
		%>
		<a class="stat" href="components/statistics.jsp" id="tab">Sales</a> <a
			class="conf" href="configure.jsp" id="tab">Configurations</a>
		<%
			} else {
		%>
		<a href="#about" id="tab" class="about">About</a> <a href="#contact"
			id="tab" class="contact">Contact</a>

		<%
			if (session.getAttribute("name") == null) {
				} else {
		%>

		<a href="userProfile.jsp" id="tab"><i class="fa fa-user-circle"
			style="font-size: 25px;">&nbsp;</i><%=session.getAttribute("name")%></a>
		<%
			if ((int) session.getAttribute("userType") != 1) {
		%><a href="cart.jsp">Cart</a>
		<%
			}
		%>

		<%
			}
		%>
		<%
			}
		%>

		<%
			if (session.getAttribute("userType") == null && session.getAttribute("name") == null) {
			} else if ((int) session.getAttribute("userType") == 1) {
		%><a href="${pageContext.request.contextPath}/admin/adminHome.jsp"
			class="admin" id="tab">Admin Dash</a>
		<%
			}
		%>
		<%
			if (session.getAttribute("name") == null) {
		%><a href="register.jsp" class="register" id="tab">Sign Up</a>
		<%
			}
		%>
		<%
			if (session.getAttribute("name") == null) {
		%><a href="login.jsp" class="login" id="tab">Sign In</a>
		<%
			}
		%>

		<%
			if (session.getAttribute("name") == null) {
			} else {
		%><a class="logout"
			href="${pageContext.request.contextPath}/components/logout.jsp"
			id="tab">logout</a>
		<%
			}
		%><a href="javascript:void(0);" style="font-size: 50px;" class="icon"
			onclick="myFunction()">&#9776;</a>
	</div>

</body>
</html>
