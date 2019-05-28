<%@page import="com.sliit.services.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statistics</title>
<%@ include file="../../components/header.jsp"%>
<link rel="stylesheet" href="../css/statistics.css">
</head>
<body>

	<%
		Albumservice album = new AlbumServiceImp();
		Customerservice customer = new CustomerServiceImp();
		Artistservice artist = new ArtistServiceImp();
		Trackservice track = new TrackServiceImp();
	%>

	<div id="mainContainer">
		<div id="statPanel">
			<div id="row1">
				<div class="row1_left">
					<h1>Total Customers</h1>
					<br />
					<%=customer.countUsers() - 1%></div>
				<div class="row1_right">
					<h1>Total Artists</h1>
					<br />
					<%=artist.countArtists()%></div>
			</div>
			<div id="row2">
				<div class="row2_left">
					<h1>Total Albums</h1>
					,<br />
					<%=album.countAlbums()%></div>
				<div class="row2_right">
					<h1>Total Tracks</h1>
					<br />
					<%=track.countTracks()%></div>
			</div>
		</div>
	</div>
</body>
</html>