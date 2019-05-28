<%@page import="com.sliit.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profiles</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/userProfiles.css">
</head>
<body>
	<%
		ArrayList<Customer> alluArray = (ArrayList<Customer>) session.getAttribute("allUsers");
		int uid = Integer.parseInt(request.getParameter("id"));
		String status = request.getParameter("status");
	%>
	<div id="mainContainer">
		<div id="profileContainer">
			<%
				for (Customer u : alluArray) {
					if (u.getuId() == uid) {

						String privilage = "";

						if (u.getUserType() == 0) {
							privilage = "None";
						} else {
							privilage = "Granted";
						}
			%>
			<form action="../../UpdateItem?uid=<%=u.getuId()%>" method="post"
				name="userUpdate">
				<center>
					<h1>
						<%
							out.println(u.getFirstName() + " " + u.getLastName());
						%>
					</h1>
					<img src="../../images/userProfiles/<%=u.getImage()%>"/>
				</center>
				<br /> <br /> <label>UserID </label><input type="text" name="id"
					value="<%=uid%>" disabled="disabled" /><br /> <br /> <label>User
					Name </label><input type="text" name="userName"
					value="<%=u.getUserName()%>" /><br /> <br /> <label>First
					Name </label><input type="text" name="firstName"
					value="<%=u.getFirstName()%>" /><br /> <br /> <label>Last
					Name </label><input type="text" name="lastName"
					value="<%=u.getLastName()%>" /><br /> <br /> <label>Email
				</label><input type="text" name="email" value="<%=u.getEmail()%>" /><br />
				<br /> <label>Telephone </label><input type="text" name="telePhone"
					value="<%=u.getTelephone()%>" /><br /> <br /> <label>PostalCode
				</label><input type="text" name="postalCode" value="<%=u.getPostalCode()%>" /><br />
				<br /> <label>Address </label><input type="text" name="address"
					value="<%=u.getAddress()%>" /><br /> <br /> <label>Admin
					privilages </label><select name="userType" class="customSelect">
					<%
						if (privilage.equalsIgnoreCase("Granted")) {
					%>
					<option selected="selected" value="<%=privilage%>"><%=privilage%></option>
					<option value="None">None</option>
					<%
						} else {
					%>
					<option selected="selected" value="<%=privilage%>"><%=privilage%></option>
					<option value="Granted">Granted</option>
					<%
						}
					%>
				</select> <br /> <br />
				<div class="btnSet">
					<div class="updateUser"
						onclick="if(confirm('Are you sure?')){document.forms['userUpdate'].submit()}else{};">Update
						User</div>
					<% if(status.equals("all")){%>
					<div class="cancel"
						onclick="if(confirm('Are you sure?')){location.href='userConfig.jsp?status=all'}">Cancel</div>
					<%}else if(status.equals("userData")){ %>
					<div class="cancel"
						onclick="if(confirm('Are you sure?')){location.href='userConfig.jsp?status=result'}">Cancel</div>
					<% } %>
				</div>
			</form>
			<form action="../../RemoveItem?id=<%=uid%>" method="post"
				name="removeUsers">
				<div class="removeUser"
					onclick="if(confirm('Are you sure?')){document.forms['removeUsers'].submit()}else{}">Remove
					User</div>
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