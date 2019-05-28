<%@page import="com.sliit.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sliit.services.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/userConfig.css">
</head>
<body>
<%
	Customerservice customer = new CustomerServiceImp();
	HttpSession hs = request.getSession();
	hs.setAttribute("allUsers", customer.getAllUsers());
	
%>
	<div id="mainContainer">
		<div id="limit">
			<h1>User Panel</h1>

			<div class="optionPanel">
				<form action="../../ItemSearch?op=userSearch" method="post" name="userSearch">
					<label>Search by name</label><br /> <br /> <input type="text"
						name="name" /> <br /> <br /> <label>Search by userName</label><br />
					<br /> <input type="text" name="userName" /> <br /> <br /> <label>Search
						by email</label><br /> <br /> <input type="text" name="email" /> <br />
					<br />
					<div class="searchBtn" name="search"
						onclick="document.forms['userSearch'].submit();">Search</div>
					<div class="searchAllBtn" name="searchAll"
						onclick="location.href='userConfig.jsp?status=all'">SearchAll</div>
					<div class="backBtn" name="backbtn"
						onclick="location.href='../adminHome.jsp'">Back</div>
				</form>

			</div>
			<div class="previewPanel">
				<%
					if (request.getParameter("status") == null || request.getParameter("status").equals("all")) {
				%>

				<div id="allUsers" style="display: block;">

					<h1>Users List</h1>
					<table>
						<tr>
							<th width="100px">User ID</th>
							<th width="200px">User Name</th>
							<th width="200px">User Email</th>
							<th width="100px">Telephone</th>
						</tr>
						<%
							ArrayList<Users> Array = (ArrayList<Users>) session.getAttribute("allUsers");
								for (Users u : Array) {
						%>
						<tr>
							<td width="100px"
								onclick="location.href='userProfile.jsp?id=<%=u.getuId()%>&status=all';">
								<%=u.getuId()%>
							</td>
							<td width="200px"
								onclick="location.href='userProfile.jsp?id=<%=u.getuId()%>&status=all';">
								<%=u.getFirstName() + " " + u.getLastName()%></td>
							<td width="200px">
								<%=u.getEmail()%>
							</td>
							<td width="200px">
								<%=u.getTelephone()%>
							</td>
						</tr>

						<%
							}
						%>
					</table>
				</div>

				<%
					} else {

						if (request.getParameter("status").equals("result")
								|| request.getParameter("status").equals("noResults")) {
				%>
				<h1>Results</h1>

				<%
					if (request.getParameter("status").equals("noResults")) {
				%>

				<h3>No Results</h3>

				<%
					}
				%>

				<%
					if (request.getParameter("status").equals("result")) {%>

				<table>
					<tr>
						<th width="100px">User ID</th>
						<th width="200px">User Name</th>
						<th width="200px">User Email</th>
					</tr>

					<%
						ArrayList<Users> uArray = (ArrayList<Users>) session.getAttribute("userSearchData");
									if (uArray != null) {
										for (Users u : uArray) {
											int id = u.getuId();
					%>

					<tr>
						<td width="100px"
							onclick="location.href='userProfile.jsp?id=<%=u.getuId()%>&status=userData';">
							<%=u.getuId()%>
						</td>
						<td width="200px"
							onclick="location.href='userProfile.jsp?id=<%=u.getuId()%>&status=userData';">
							<%=u.getFirstName() + " " + u.getLastName()%></td>
						<td width="200px"
							onclick="location.href='userProfile.jsp?id=<%=u.getuId()%>&status=userData';">
							<%=u.getEmail()%>
						</td>
					</tr>

					<%
						}
									}
					%>
				</table>
				<%
					}
				%>


				<%
					}
					}
				%>

			</div>
		</div>
	</div>
</body>
</html>