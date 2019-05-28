<%@page import="com.sliit.model.*"%>
<%@page import="com.sliit.services.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tracks</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/Tracks.css">
<script>
	var x = "none";
</script>
</head>
<body>
	<%
		Trackservice track = new TrackServiceImp();
		Artistservice artist = new ArtistServiceImp();
		HttpSession hs = request.getSession();
		hs.setAttribute("allTracks", track.getAllTracks());
		hs.setAttribute("allArtists", artist.getAllArtists());
	%>
	<div id="mainContainer">
		<div class="tracksContainer">
			<div id="limit">
				<div class="optionPanel">
					<form action="../../ItemSearch?op=trackSearch" method="post"
						name="trackSearch">
						<label>Search by name</label><br /> <br /> <input type="text"
							name="trackName" /> <br /> <br /> <label>Search by
							Genre</label><br /> <br /> <input type="text" name="genreName" /> <br />
						<br /> <label>Search by Artist</label><br /> <br /> <input
							type="text" name="artistName" /> <br /> <br /> <label>Search
							by Album</label><br /> <br /> <input type="text" name="albumName" /> <br />
						<br />
						<div class="searchBtn" name="search"
							onclick="document.forms['trackSearch'].submit();">Search</div>
						<div class="searchAllBtn" name="searchAll"
							onclick="location.href='songConfig.jsp?status=all'">SearchAll</div>
						<div class="backBtn" name="backbtn"
							onclick="location.href='../adminHome.jsp'">Back</div>
					</form>

				</div>

				<div class="previewPanel">

					<%
						if (request.getParameter("status") == null || request.getParameter("status").equals("all")) {
							ArrayList<Tracks> tArray = (ArrayList<Tracks>) session.getAttribute("allTracks");
							ArrayList<Artists> aArray = (ArrayList<Artists>) session.getAttribute("allArtists");
					%>

					<div id="allUsers" style="display: block;">
						<h1>Track List</h1>
						<table>
							<tr>
								<th width="100px">Track ID</th>
								<th width="150px">Track Name</th>
								<th width="250px">Published</th>
								<th width="250px">Artist</th>
							</tr>

							<%
								if (tArray != null) {

										for (Tracks t : tArray) {
							%>

							<tr>
								<td width="100px"
									onclick="location.href='trackDetails.jsp?id=<%=t.getTrackId()%>&status=all';">
									<%=t.getTrackId()%>
								</td>
								<td width="200px"
									onclick="location.href='trackDetails.jsp?id=<%=t.getTrackId()%>&status=all';">
									<%=t.getTrackName()%></td>
								<td><%=t.getPublished()%></td>
								<td><%=aArray.get(t.getArtistId() - 1).getUserName()%></td>
							</tr>

							<%
								}
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
						if (request.getParameter("status").equals("result")) {
									ArrayList<Tracks> tArray = (ArrayList<Tracks>) session.getAttribute("trackSearchData");
									ArrayList<Artists> aArray = (ArrayList<Artists>) session.getAttribute("allArtists");
					%>

					<table>
						<tr>
							<th width="100px">Track ID</th>
							<th width="150px">Track Name</th>
							<th width="250px">Published</th>
							<th width="250px">Artist</th>
						</tr>

						<%
							if (tArray != null) {
											for (Tracks t : tArray) {
						%>

						<tr>
							<td
								onclick="location.href='trackDetails.jsp?id=<%=t.getTrackId()%>&status=userData';">
								<%=t.getTrackId()%>
							</td>
							<td
								onclick="location.href='trackDetails.jsp?id=<%=t.getTrackId()%>&status=userData';">
								<%=t.getTrackName()%></td>
							<td><%=t.getPublished()%></td>
							<td><%=aArray.get(t.getArtistId() - 1).getUserName()%></td>
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
	</div>


</body>
</html>