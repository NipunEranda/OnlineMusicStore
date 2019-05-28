<%@page import="com.sliit.model.*"%>
<%@page import="com.sliit.servlet.*"%>
<%@page import="com.sliit.services.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Albums</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/albumCss.css">
<script>
var x= 'none';
</script>
</head>
<body>


	<%
		Albumservice item1 = new AlbumServiceImp();
		HttpSession hs1 = request.getSession();
		hs1.setAttribute("allAlbums", item1.getAllAlbums());
	%>
	<div class="mainContainer">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>

			<div class="insertAlbum">
				<form action="../../AddItem" method="post" name="addAlbum">
					<label>Add Album</label><br /> <br /> <label>Album Name</label><br />
					<input type="text" name="albumName" /><br /> <br /> <label>Album
						Description</label><br />

					<textarea rows="1" cols="50" name="albumDescription"></textarea>
					<br /> <br />
					<div class="AlbumInsert"
						onclick="if(confirm('Are you sure?')){document.forms['addAlbum'].submit()}else{}">Add
						Album</div>
					<br />
				</form>
			</div>

			<div class="options">
				<div class="information">
					<%
						if (session.getAttribute("id") != null) {
							int id = (int)session.getAttribute("id");
							ArrayList<Albums> aArray = (ArrayList<Albums>) session.getAttribute("allAlbums");

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
				if (session.getAttribute("id") != null) {
					int id = (int)session.getAttribute("id");
			%>
			<div class="commands">
				<div class="update_al"
					onclick="if(x == 'none'){document.getElementById('update').style.display='block'; x = 'block';}else if(x == 'block'){document.getElementById('update').style.display='none'; x = 'none';}">Update
					Album</div>
				<br /> <br /> <br />
				<div id="update" style="display: none;" class="update_Form">
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

				<div class="back" onclick="location.href='../artistIndex.jsp'">Back</div>
			</div>
			<%
				}
			%>
		</div>
</body>
</html>