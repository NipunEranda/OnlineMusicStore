<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal</title>
<%@ include file="../components/header.jsp"%>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/adminHome.css">
<style>
.topnav .admin {
	display: none;
}
</style>
</head>
<body>
	<div id="mainContainer">
		<div class="panelLimit">
		<center>
			<h1>Admin Dashboard</h1>
		</center>
		<br />
			<div class="main-row1">
				<div class="album_config" id="left-btn"
					onclick="location.href='components/albumConfig.jsp?id=1'">Albums</div>

				<div class="Genre_config" id="middle-btn"
					onclick="location.href='components/genreConfig.jsp?id=1'">Genres</div>

				<div class="song_config" id="right-btn"
					onclick="location.href='components/songConfig.jsp?'">Songs</div>
			</div>

			<div class="main-row2">
				<div class="user_config" id="left-btn"
					onclick="location.href='components/userConfig.jsp'">Users</div>

				<div class="artists" id="middle-btn"
					onclick="location.href='components/artistConfig.jsp?status=all&id=1'">Artists</div>

				<div class="sales" id="right-btn"
					onclick="location.href='components/statistics.jsp'">Statistics</div>
			</div>
		</div>
	</div>
</body>
</html>