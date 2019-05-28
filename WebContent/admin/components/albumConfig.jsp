<%@page import="com.sliit.services.*"%>
<%@page import="com.sliit.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Albums</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/Albums.css">
<script>
	var x = "none";
</script>
</head>
<body>
	<%
		Albumservice album = new AlbumServiceImp();
		HttpSession hs = request.getSession();
		hs.setAttribute("allAlbums", album.getAllAlbums());
	%>
	<div id="mainContainer">
		<div class="albumsContainer">

			<div class="addAlbum">
				<form action="../../AddItem" method="post" name="addAlbum">
					<label>Add Album</label><br /> <br /> <label>Album Name</label><br />
					<input type="text" name="albumName" /><br /> <br /> <label>Album
						Description</label><br />
					<textarea rows="1" cols="50" name="albumDescription"></textarea>
					<br /> <br />
					<div class="AlbumAdd"
						onclick="if(confirm('Are you sure?')){document.forms['addAlbum'].submit()}else{}">Add
						Album</div>
					<br />
				</form>
			</div>

			<div class="previewPanel">
				<table>
					<tr>
						<td width="100px">Album ID</td>
						<td width="100px">Album Name</td>
					</tr>
					<%
						ArrayList<Albums> aArray = (ArrayList<Albums>) session.getAttribute("allAlbums");
						for (Albums a : aArray) {
					%>

					<tr>
						<td
							onclick="location.href='albumConfig.jsp?id=<%=a.getAlbumId()%>'">
							<%
								out.print(a.getAlbumId());
							%>
						</td>
						<td
							onclick="location.href='albumConfig.jsp?id=<%=a.getAlbumId()%>'">
							<%
								out.print(a.getAlbumName());
							%>
						</td>
					</tr>

					<%
						}
					%>
				</table>
			</div>
			<div class="optionPanel">
				<div class="details">
					<%
						if (request.getParameter("id") != null) {
							int id = Integer.parseInt(request.getParameter("id"));

							for (Albums a : aArray) {

								if (a.getAlbumId() == id) {
					%>
					<label><h3>Album Description</h3></label> <br /> <label> <%=a.getAlbumDescription()%>
					</label>
					<%
						}
							}
						}
					%>
				</div>

			</div>

			<%
				if (request.getParameter("id") != null) {
					int id = Integer.parseInt(request.getParameter("id"));
			%>
			<div class="commandPanel">
				<div class="updateAlbum"
					onclick="if(x == 'none'){document.getElementById('update').style.display='block'; x = 'block';}else if(x == 'block'){document.getElementById('update').style.display='none'; x = 'none';}">Update
					Album</div>
				<br /> <br /> <br />
				<div id="update" style="display: none;" class="updateForm">
					<form action="../../UpdateItem?albumId=<%=id%>" method="post"
						name="albumUpdate">
						<br /> <label>Album Id </label><input type="text" name="id"
							disabled="disabled" value="<%=id%>" /><br /> <br /> <label>Album
							Name </label><input type="text" name="name" /><br /> <br /> <label>Album
							Description</label>
						<textarea rows="3" cols="43" name="description"
							class="description"></textarea>
						<br /> <br />
						<div class="updateAlbum"
							onclick="if(confirm('Are you sure?')){document.forms['albumUpdate'].submit()}else{}">Update
							Album</div>
					</form>
				</div>

				<form action="../../RemoveItem?albumId=<%=id%>" method="post"
					name="Remove">
					<div class="removeAlbum"
						onclick="if(confirm('Are you sure?')){document.forms['Remove'].submit()}else{}">Remove
						Album</div>
				</form>

				<div class="back" onclick="location.href='../adminHome.jsp'">Back</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>