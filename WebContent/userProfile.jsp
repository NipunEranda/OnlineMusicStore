<%@page import="com.sliit.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sliit.services.*"%>
<%@page import="com.sliit.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/userProfiles.css">
<meta charset="UTF-8">
<title>User Profiles</title>
<%@ include file="../../components/header.jsp"%>
</head>
<body>
	<%
	
	Customerservice customer = new CustomerServiceImp();
	HttpSession hs = request.getSession();
	hs.setAttribute("allUsers", customer.getAllUsers());

		ArrayList<Customer> alluArray = (ArrayList<Customer>) session.getAttribute("allUsers");
		int uid = (int)session.getAttribute("id");
		
	%>
	<div id="mainContainer">
		<div id="profileContainer">
			<%
				for (Customer u : alluArray) {
					if (u.getuId() == uid) {
			%>
			<form action="../../UpdateItem?id=<%=uid%>" method="post" name="userUpdate">
				<center>
					<h1>
						<%
							out.println(u.getFirstName() + " " + u.getLastName());
						%>
					</h1>
				</center>
				<br />
					<br /> <label>UserID </label><input type="text" name="id"value="<%=uid%>" disabled="disabled" /><br /> 
					<br /> <label>UserName </label><input type="text" name="userName" value="<%=u.getUserName()%>" />
					<br /> <br /> <label>FirstName </label><input type="text" name="firstName" value="<%=u.getFirstName()%>" /><br /> 
					<br /> <label>LastName </label><input type="text" name="lastName" value="<%=u.getLastName()%>" /><br /> 
					<br /> <label>Email </label><input type="text" name="email" value="<%=u.getEmail()%>" /><br />
					<br /> <label>Telephone </label><input type="text" name="telePhone" value="<%=u.getTelephone()%>" /><br /> 
					<br /> <label>PostalCode</label><input type="text" name="postalCode"value="<%=u.getPostalCode()%>" /><br /> 
					<br /> <label>Address </label><input type="text" name="address" value="<%=u.getAddress()%>" /><br />
					
				<div class="btnSet">
					<div class="updateUser"
						onclick="if(confirm('Are you sure?')){document.forms['userUpdate'].submit()}else{};">Update User</div>
						
					<div class="cancel"
						onclick="if(confirm('Are you sure?')){location.href='homePage.jsp'}">Cancel</div>
						
					</div>
			</form>
			<%
				} else {

					}
				}
			%>
		</div>
	</div>
</body>
</html>