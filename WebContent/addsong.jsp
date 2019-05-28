<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add New Song</title>

<link rel="stylesheet" href="css/addsong.css" type="text/css" media="all" />

</head>
<body>
	
	<div class="main-container"> 
		<div class="center-container">
	   	 <div class="agileinfo">
			<h1> Add Song </h1>	
		</div>
			<div class="bg-agile">
				<h2>Song Details </h2>
			<div class="song-form">	
				<form action="<%= request.getContextPath() %>/SongsServlet" method="post">
					<input type="text"  name="Track Name" placeholder="Track Name" />
					<input type="text"  name="Album Name" placeholder="Album Name" />
					<input type="text"  name="Genre" placeholder="Genre" />
					<input type="text"  name="Publisher" placeholder="Publisher" />
					<input type="text" name="Composer" placeholder="Composer" />
					<input type="text"  name="Unit Price" placeholder="Unit Price" />
				    <input type="text"  name="Description" placeholder="Description" />
					<input type="submit" value="Submit">
				</form>	
			</div>	
			<a href="viewsong.jsp">View Added Songs</a>
		</div>
	</div>	
</div>	

</body>
</html>