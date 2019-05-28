<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Artist</title>

<%@ include file="../components/header.jsp"%>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/ArtistIndex.css">
</head>
<body>

	<div class="main">
	<center>
			<h1>Artist Dashboard</h1>
		</center>
				
		<div class="row1">
			<div class="album_conf" id="leftBtn"
				onclick="location.href='components/albumConf.jsp'">Albums</div>

			<div class="song_conf" id="rightBtn"
				onclick="location.href='components/songsConf.jsp'">Songs</div>
		</div>
		<br/>
		<div class="row2">

			<div class="artist_conf" id="middleBtn"
				onclick="location.href='components/artistConf.jsp'">Artist</div>
		</div>

	</div>
</body>
</html>