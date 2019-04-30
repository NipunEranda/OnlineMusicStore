<%@page import="com.sliit.Users"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/userConfig.css">
<<<<<<< HEAD
=======
<link rel="stylesheet" href="../css/floatingForm.css">
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
</head>
<body>
	<div id="mainContainer">
		<center>
			<h1>User Panel</h1>
		</center>

		<div class="panel">
			<div class="optionPanel">
				<form action="../../UserSearch" method="post" name="userSearch">
					<label>Search by name</label><br /> <br /> <input type="text"
						name="name" /> <br /> <br /> <label>Search by userName</label><br />
					<br /> <input type="text" name="userName" /> <br /> <br /> <label>Search
						by email</label><br /> <br /> <input type="text" name="email" /> <br />
					<br />
					<div class="searchbtn" name="search"
						onclick="document.forms['userSearch'].submit();">Search</div>
				</form>
			</div>
			<div class="previewPanel">

				<%
					if (request.getParameter("id") == null) {
					} else {

						if (request.getParameter("id").equals("users")) {
				%>
				<h1>Results</h1>

				<%
					ArrayList<Users> uArray = (ArrayList<Users>) session.getAttribute("userSearchData");
							for (Users u : uArray) {
								int id = u.getuId();
				%>

<<<<<<< HEAD
				<div id="searchResultBtn"
					onclick="location.href='userProfile.jsp?id=<%=id%>';">
=======
				<div class="searchResultBtn"
					onclick="document.getElementById('userDetails<%=id%>').style.display = 'block'">
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
					<%
						out.print(u.getFirstName() + " " + u.getLastName());
					%>
				</div>

				<%
					}
				%>

<<<<<<< HEAD

				<%
					}
=======
				<%
					for (Users u : uArray) {
								int uid = u.getuId();
				%>
				<center>
					<div id="userDetails<%=uid%>" class="modal">

						<div class="modal-content animate">

							<div class="top">
								<span
									onclick="document.getElementById('userDetails<%=uid%>').style.display = 'none'"
									class="close" title="Close Modal">&times;</span>
							</div>

							<div class="container">
								<h1>
									<%
										out.println(u.getFirstName() + " " + u.getLastName());
									%>	
								</h1>
								<center>
								<img src = "../../<%=u.getImage()%>">
								</center>
							</div>

						</div>
					</div>
				</center>
				<%
					}
						}
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
					}
				%>
				<br /> <br />
			</div>
		</div>
	</div>
</body>
</html>