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
<script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body>

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
			String currentURI = request.getRequestURI();
			if (currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/adminHome.jsp")) {
		%>
		<a href="statistics.jsp" id="tab">Statistics</a> <a
			href="configure.jsp" id="tab">Configurations</a>
		<%
			} else {
		%>
		<a href="#about" id="tab">About</a> <a href="#contact" id="tab">Contact</a>
		
		<% if(session.getAttribute("name") == null){}else{ %>
		
		<a href="#profile" id="tab"><%=session.getAttribute("name")%></a>
		
		<% } %>
		<%
			}
		%>

		<%
			if (session.getAttribute("isAdmin") == null && session.getAttribute("name") == null) {
			} else if ((int) session.getAttribute("isAdmin") == 1) {
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
		%><a href="${pageContext.request.contextPath}/components/logout.jsp"
			id="tab">logout</a>
		<%
			}
		%><a href="javascript:void(0);" style="font-size: 50px;" class="icon"
			onclick="myFunction()">&#9776;</a>
	</div>
	
			<%
			if (currentURI.equalsIgnoreCase("/OnlineMusicStore/homePage.jsp")
					&& (int) session.getAttribute("isAdmin") == 1) {
		%>
		<style>
.topnav .topnav_left {
	margin-left: 20%;
	margin-right: 23%;
}

@media screen and (max-width: 1200px) {
	.topnav .topnav_left {
		margin-left: 0%;
		margin-right: 9%;
	}
	.topnav a {
		font-size: 17px;
	}
}
</style>

		<%
			}
		%>
	
	
</body>
</html>