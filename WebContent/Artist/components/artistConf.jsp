<%@page import="com.sliit.model.*"%>
<%@page import="com.sliit.servlet.*"%>
<%@page import="com.sliit.services.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Artist Details</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/Artist.css">

</head>
<body>
	<div id="mainContainer">
		<%
			int id = (int) session.getAttribute("id");

			Artistservice ar = new ArtistServiceImp();
			HttpSession hs = request.getSession();
			hs.setAttribute("allArtists", ar.getAllArtists());

			ArrayList<Artists> aArray = (ArrayList<Artists>) session.getAttribute("allArtists");
			for (Artists a : aArray) {

				if (a.getuId() == (int) session.getAttribute("id")) {
		%>
		<div id="update" class="updateForm">
			<div class="updateDetails">
				<form action="../../UpdateItem?artistId=<%=id%>" method="post"
					name="update">
					<h2>Update Artist</h2>
					<label>Artist ID </label><input type="text" disabled="disabled"
						value="<%=id%>"><br /> <br /> <label>User Name </label><input
						type="text" name="userName"
						value="<%=aArray.get(id - 1).getUserName()%>"><br /> <br />
					<label>First Name </label><input type="text" name="firstName"
						value="<%=aArray.get(id - 1).getFirstName()%>"><br /> <br />
					<label>Last Name </label><input type="text" name="lastName"
						value="<%=aArray.get(id - 1).getLastName()%>"><br /> <br />
					<label>Email</label><input type="email" name="email"
						value="<%=aArray.get(id - 1).getEmail()%>"><br /> <br />
					<lable>Password<input type="text" name="password"
						value="<%=aArray.get(id - 1).getPassword()%>"> <br />
					<br />
					<label>Telephone</label> <input type="text" name="telephone"
						value="<%=aArray.get(id - 1).getTelephone()%>"> <br />
					<br />
					<label>Address</label> <input type="text" name="address"
						value="<%=aArray.get(id - 1).getAddress()%>"> <br />
					<br />

					<div class="pushDetails"
						onclick="if(confirm('Are you sure?')){document.forms['update'].submit()}else{}">Update
						Artist</div>
				</form>

			</div>
		</div>
		<%
			}
			}
		%>

	

	</div>
</body>
</html>