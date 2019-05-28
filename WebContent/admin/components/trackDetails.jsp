<%@page import="com.sliit.services.*"%>
<%@page import="com.sliit.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Details</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/TrackDetails.css">
</head>
<body>

	<%
		Albumservice album = new AlbumServiceImp();
		Genreservice genre = new GenreServiceImp();
		Artistservice artist = new ArtistServiceImp();
		Trackservice track = new TrackServiceImp();

		ArrayList<Tracks> allTracks = track.getAllTracks();
		ArrayList<Artists> allArtists = artist.getAllArtists();
		ArrayList<Albums> allAlbums = album.getAllAlbums();
		ArrayList<Genres> allGenres = genre.getAllGenres();
		int trackId = Integer.parseInt(request.getParameter("id"));
		String status = request.getParameter("status");
	%>

	<div id="mainContainer">
		<div id="profileContainer">

			<%
				for (Tracks t : allTracks) {
					if (t.getTrackId() == trackId) {
			%>

			<form action="../../UpdateItem?trackId=<%=trackId%>" method="post"
				name="trackUpdate">
				<center>
					<h1>
						<%
							out.println(t.getTrackName());
						%>
					</h1>
				</center>
				<br /> <br /> <label>TrackID </label><input type="text" name="id"
					value="<%=trackId%>" disabled="disabled" /><br /> <br /> <label>Track
					Name </label><input type="text" name="trackName"
					value="<%=t.getTrackName()%>" /><br /> <br /> <label>Artist
					Name </label> <select class="customSelect" name="artistName">
					<%
						for (Artists a : allArtists) {
					%>
					<option <%if (a.getuId() == t.getArtistId()) {%>
						selected="selected" <%}%> value="<%=a.getuId()%>"><%=a.getUserName()%></option>

					<%
						}
					%>

				</select> <br /> <br /> <label>Album Name </label> <select
					class="customSelect" name="albumName">
					<%
						for (Albums al : allAlbums) {
					%>

					<option <%if (al.getAlbumId() == t.getAlbumId()) {%>
						selected="selected" <%}%> value="<%=al.getAlbumId()%>"><%=al.getAlbumName()%></option>


					<%
						}
					%>
				</select> <br /> <br /> <label>GenreName </label> <select
					class="customSelect" name="genreName">

					<%
						for (Genres g : allGenres) {
					%>

					<option <%if (g.getGenreId() == t.getGenreId()) {%>
						selected="selected" <%}%> value="<%=g.getGenreId()%>"><%=g.getGenreName()%></option>


					<%
						}
					%>

				</select> <br /> <br /> <label>Published </label><input type="date"
					name="published" value="<%=t.getPublished()%>" /><br /> <br /> <label>Composer
				</label><input type="text" name="composer"
					value="<%=artist.getArtistName(t.getArtistId())%>" /><br /> <br />
				<label>Duration </label><input type="text" name="duration"
					value="<%=t.getMilliSeconds()%>" /><br /> <br /> <label>Unit
					Price </label><input type="text" name="unitPrice"
					value="<%=t.getUnitPrice()%>" /><br /> <br />
				<div class="btnSet">
					<div class="updateUser"
						onclick="if(confirm('Are you sure?')){document.forms['trackUpdate'].submit()}else{};">Update
						User</div>
					<div class="cancel"
						onclick="if(confirm('Are you sure?')){location.href='songConfig.jsp?status=all'}">Cancel</div>

				</div>
			</form>
			<form action="../../RemoveItem?trackId=<%=trackId%>" method="post"
				name="removeTrack">
				<div class="removeUser"
					onclick="if(confirm('Are you sure?')){document.forms['removeTrack'].submit()}else{}">Remove
					Track</div>
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