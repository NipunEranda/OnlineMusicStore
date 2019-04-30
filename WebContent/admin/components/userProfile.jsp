<%@page import="com.sliit.Users"%>
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
		ArrayList<Users> uArray = (ArrayList<Users>) session.getAttribute("userSearchData");
		int uid = Integer.parseInt(request.getParameter("id"));
	%>
	<div id="mainContainer">
		<div id="profileContainer">
			<%
				for (Users u : uArray) {
					if (u.getuId() == uid) {
			%>
			<form action="../../UpdateUsers" method="post" name="userUpdate">
				<center>
					<h1>
						<%
							out.println(u.getFirstName() + " " + u.getLastName());
						%>
					</h1>
					<img src="${pageContext.request.contextPath}/<%=u.getImage()%>" />
				</center>
				<br /> <br /> <label>UserID : </label><input type="text" name="id"
					value="<%=uid%>" disabled="disabled"/><br /> <br /> <label>User Name : </label><input
					type="text" name="userName" value="<%=u.getUserName()%>" /><br />
				<br /> <label>First Name : </label><input type="text"
					name="firstName" value="<%=u.getFirstName()%>" /><br /> <br /> <label>Last
					Name : </label><input type="text" name="lastName"
					value="<%=u.getLastName()%>" /><br /> <br /> <label>Email
					: </label><input type="text" name="email" value="<%=u.getEmail()%>" /><br />
				<br /> <label>Telephone : </label><input type="text"
					name="telePhone" value="<%=u.getTelephone()%>" /><br /> <br /> <label>PostalCode
					: </label><input type="text" name="postalCode"
					value="<%=u.getPostalCode()%>" /><br /> <br /> <label>Address
					: </label><input type="text" name="address" value="<%=u.getAddress()%>" /><br />
				<br /> <label>Admin privilages : </label><input type="text"
					name="isAdmin" value="<%=u.getIsAdmin()%>" /><br /> <br />
				<div class="btnSet">
					<div class="updateUser"
						onclick="document.forms['userUpdate'].submit();">Update User</div>

					<div class="cancel"
						onclick="location.href='userConfig.jsp?id=users';">Cancel</div>
				</div>
			</form>
			<form action="../../RemoveUsers?id=<%=uid%>" method="post" name="removeUsers">
				<div class="removeUser"
					onclick="document.forms['removeUsers'].submit();return confirm('Are you sure?');">Remove User</div>
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