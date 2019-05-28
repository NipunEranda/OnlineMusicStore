<%@page import="com.sliit.model.*"%>
<%@page import="com.sliit.services.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genres</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/genres.css">

<script>
	var x = "none";
</script>

</head>
<body>
	<%
		Genreservice genre = new GenreServiceImp();
		HttpSession hs = request.getSession();
		hs.setAttribute("allGenres", genre.getAllGenres());
	%>
	<div id="mainContainer">
		<div class="genresContainer">
			<div class="addGenre">
				<form action="../../AddItem" method="post" name="addGenre">
					<label>Add Genre</label><br /> <br /> <label>Genre Name</label><br />
					<input type="text" name="genreName" /><br /> <br /> <label>Genre
						Description</label><br />
					<textarea rows="1" cols="50" name="genreDescription"></textarea>
					<br /> <br />
					<div class="genreAdd"
						onclick="if(confirm('Are you sure?')){document.forms['addGenre'].submit()}else{}">Add
						Genre</div>
					<div class="closebtn" onclick="location.href='../adminHome.jsp'">Back</div>
					<br />
				</form>
			</div>
			<div class="previewPanel">
				<table>
					<tr>
						<th width="100px" style="text-align: left;">Genre ID</th>
						<th width="200px" style="text-align: left;">Genre Name</th>
					</tr>
					<%
						ArrayList<Genres> gArray = (ArrayList<Genres>) session.getAttribute("allGenres");
						for (Genres g : gArray) {
					%>

					<tr>
						<td
							onclick="location.href='genreConfig.jsp?id=<%=g.getGenreId()%>'">
							<%
								out.print(g.getGenreId());
							%>
						</td>
						<td
							onclick="location.href='genreConfig.jsp?id=<%=g.getGenreId()%>'">
							<%
								out.print(g.getGenreName());
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

							for (Genres g : gArray) {

								if (g.getGenreId() == id) {
					%>
					<center>
						<label><h3>Genre Description</h3></label>
					</center>
					<br /> <label> <%=g.getDescription()%>
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
				<div class="updateGenre"
					onclick="if(x == 'none'){document.getElementById('update').style.display='block'; x = 'block';}else if(x == 'block'){document.getElementById('update').style.display='none'; x = 'none';}">Update
					Genre</div>
				<br /> <br /> <br />
				<div id="update" style="display: none;" class="updateForm">
					<form action="../../UpdateItem?genreId=<%=id%>" method="post"
						name="genreUpdate">
						<br /> <label>Genre Id </label><input type="text" name="id"
							value="<%=id%>" disabled="disabled" /><br /> <br /> <label>Genre
							Name </label> <input type="text" name="name" /><br /> <br /> <label>Genre
							Description</label>
						<textarea rows="3" cols="43" name="description"></textarea>
						<br /> <br />
						<div class="updateGenre"
							onclick="if(confirm('Are you sure?')){document.forms['genreUpdate'].submit()}else{}">Update
							Genre</div>
					</form>
				</div>

				<form action="../../RemoveItem?genreId=<%=id%>" method="post"
					name="removeGenre">
					<div class="removeGenre"
						onclick="if(confirm('Are you sure?')){document.forms['removeGenre'].submit()}else{}">Remove
						Genre</div>
				</form>
			</div>
			<%
				}
			%>

		</div>
	</div>
</body>
</html>