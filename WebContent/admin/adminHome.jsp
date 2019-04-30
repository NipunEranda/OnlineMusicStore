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

<script src="js/adminHome.js"></script>

</head>
<body>
	<div class="maincontainer">

		<center>
			<h1>Admin Panel</h1>
		</center>
		<br/>

		<div class="main-row1">
			<div class="album_config" id="left-btn" onclick="linkPush('album')">Albums</div>

			<div class="Genre_config" id="middle-btn" onclick="linkPush('genre')">Genres</div>

			<div class="song_config" id="right-btn" onclick="linkPush('song')">Songs</div>
		</div>

		<div class="main-row2">
			<div class="user_config" id="left-btn" onclick="linkPush('user')">Users</div>

			<div class="sales" id="middle-btn" onclick="linkPush('sales')">Sales</div>

			<div class="statistics" id="right-btn" onclick="linkPush('stat')">Statistics</div>
		</div>
	</div>
</body>
</html>