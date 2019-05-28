<%@page import="com.sliit.model.*"%>
<%@page import="com.sliit.services.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artists</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/Artists.css">
<script>
	var x = "none";
</script>
</head>
<body>

	<%
		Artistservice artist = new ArtistServiceImp();
		HttpSession hs = request.getSession();
		hs.setAttribute("allArtists", artist.getAllArtists());
	%>

	<div id="mainContainer">
		<div class="artistsContainer">
			<div class="addArtist">
				<form action="../../ItemSearch?op=artistSearch" method="post"
					name="artistSearch">
					<h2>Search Artist</h2>
					<input type="text" name="artistName" placeholder="Username" /><br />
					<br />
					<div class="pushDetails"
						onclick="document.forms['artistSearch'].submit();">Search</div>
					<div class="closebtn" onclick="location.href='../adminHome.jsp'">Back</div>
				</form>
			</div>
			<div class="previewPanel">

				<%
					if (request.getParameter("status").equals("all")) {
				%>
				<h1>All Artists</h1>
				<%
					} else if (request.getParameter("status").equals("result")) {
				%>
					<h1>Results</h1>
				<%
					}
				%>
				<table>
					<tr>
						<th width="100px">Artist ID</th>
						<th width="180px">User Name</th>
						<th width="180px">First Name</th>
						<th width="150px">Last Name</th>
						<th width="150px">Email</th>
						<th width="150px">Telephone</th>
						<th width="500px">Address</th>
					</tr>
					<%
						if (request.getParameter("status") != null) {
							ArrayList<Artists> searchArray = (ArrayList<Artists>) session.getAttribute("artistSearchData");
							if (request.getParameter("status").equals("result")) {
								for (Artists a : searchArray) {
					%>

					<tr>
						<td
							onclick="location.href='artistConfig.jsp?id=<%=a.getuId()%>&status=result';">
							<%
								out.print(a.getuId());
							%>
						</td>
						<td
							onclick="location.href='artistConfig.jsp?id=<%=a.getuId()%>&status=result'">
							<%
								out.print(a.getUserName());
							%>
						</td>
						<td>
							<%
								out.print(a.getFirstName());
							%>
						</td>
						<td>
							<%
								out.print(a.getLastName());
							%>
						</td>
						<td>
							<%
								out.print(a.getEmail());
							%>
						</td>
						<td>
							<%
								out.print(a.getTelephone());
							%>
						</td>
						<td>
							<%
								out.print(a.getAddress());
							%>
						</td>

					</tr>

					<%
						}
							}

							ArrayList<Artists> aArray = (ArrayList<Artists>) session.getAttribute("allArtists");
							for (Artists a : aArray) {

								if (request.getParameter("status").equals("all")) {
					%>

					<tr>
						<td
							onclick="location.href='artistConfig.jsp?id=<%=a.getuId()%>&status=all';">
							<%
								out.print(a.getuId());
							%>
						</td>
						<td
							onclick="location.href='artistConfig.jsp?id=<%=a.getuId()%>&status=all'">
							<%
								out.print(a.getUserName());
							%>
						</td>
						<td>
							<%
								out.print(a.getFirstName());
							%>
						</td>
						<td>
							<%
								out.print(a.getLastName());
							%>
						</td>
						<td>
							<%
								out.print(a.getEmail());
							%>
						</td>
						<td>
							<%
								out.print(a.getTelephone());
							%>
						</td>
						<td>
							<%
								out.print(a.getAddress());
							%>
						</td>

					</tr>

					<%
						}
							}
					%>
				</table>
			</div>
			<div class="commandPanel">
				<%
					if (request.getParameter("status") != null) {
							String status = request.getParameter("status");

							if ((status != null && request.getParameter("id") != null)) {
								int id = Integer.parseInt(request.getParameter("id"));
				%>

				<div class="updateArtist"
					onclick="if(x == 'none'){document.getElementById('update').style.display='block'; x = 'block';}else if(x == 'block'){document.getElementById('update').style.display='none'; x = 'none';}">Update/Add
					Artist</div>

				<form action="../../RemoveItem?artistId=<%=id%>" method="post"
					name="Remove">
					<div class="removeArtist"
						onclick="if(confirm('Are you sure?')){document.forms['Remove'].submit()}else{}">Remove
						Artist</div>
				</form>

				<div class="back"
					onclick="location.href='artistConfig.jsp?status=all'">Back</div>

			</div>

			<div id="update" style="display: none;" class="updateForm">
				<div class="updateDetails">
					<form action="../../UpdateItem?artistId=<%=id%>" method="post"
						name="update">
						<h2>Update Artist</h2>
						<label>Artist ID </label><input type="text" disabled="disabled"
							value="<%=id%>"><br /> <br /> <label>User Name
						</label><input type="text" name="userName"
							value="<%=aArray.get(id - 1).getUserName()%>"><br /> <br />
						<label>First Name </label><input type="text" name="firstName"
							value="<%=aArray.get(id - 1).getFirstName()%>"><br /> <br />
						<label>Last Name </label><input type="text" name="lastName"
							value="<%=aArray.get(id - 1).getLastName()%>"><br /> <br />
						<label>Email </label><input type="email" name="email"
							value="<%=aArray.get(id - 1).getEmail()%>"><br /> <br />
						<label>Telephone </label><input type="text" name="telephone"
							value="<%=aArray.get(id - 1).getTelephone()%>"><br /> <br />
						<label>Address </label><input type="text" name="address"
							value="<%=aArray.get(id - 1).getAddress()%>"><br /> <br />
						<label>Description </label> <br />
						<textarea name="description"
							value="<%=aArray.get(id - 1).getArtistDescription()%>"></textarea>
						<br /> <br />
						<div class="pushDetails"
							onclick="if(confirm('Are you sure?')){document.forms['update'].submit()}else{}">Update
							Artist</div>
					</form>
				</div>
				<div class="addDetails">
					<form action="../../AddItem" method="post" name="addArtist">
						<h2>Add Artist</h2>
						<label>User Name </label><input type="text" name="artistName"><br />
						<br /> <label>First Name </label><input type="text"
							name="firstName"><br /> <br /> <label>Last Name
						</label><input type="text" name="lastName"><br /> <br /> <label>Email
						</label><input type="email" name="email"><br /> <br /> <label>Password
						</label><input type="password" name="password"><br /> <br /> <label>Telephone
						</label><input type="text" name="telephone"><br /> <br /> <label>Address
						</label><input type="text" name="address"><br /> <br /> <label>Description
						</label>
						<textarea name="description"></textarea>
						</TextArea>
						<br /> <br />
						<div class="pushDetails"
							onclick="if(confirm('Are you sure?')){document.forms['addArtist'].submit()}else{}">Add
							Artist</div>

					</form>
				</div>
			</div>
			<%
				}
					}
				}
			%>
		</div>
	</div>
</body>
</html>